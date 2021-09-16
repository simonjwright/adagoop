AdaGOOP is the Ada Generator of Object-Oriented Parsers.  Using AdaGOOP, you can easily generate a parser which builds an object-oriented parse tree.

It's built on top of the SCATC versions of aflex and ayacc.  As SableCC does, AdaGOOP automatically generates code to build a parse tree, and a traversal of the parse tree using the visitor pattern.

## Building ##

Use the aggregate project `build.gpr`:
```
gprbuild -P build.gpr
```

As well as `adagoop`, this generates `scaflex/scaflex` and `scayacc/scayacc`.

## Executing - the easy way ##

AdaGOOP provides `Makefile.inc`.

In your own `Makefile`, and assuming that your syntax is specified in `foo.g`, say
```
include /where/ever/adagoop/Makefile.inc
export ADAGOOP_INPUT=foo.g
all:: adagoop_products
```

## Executing - the hard way ##

AdaGOOP is executed from a command prompt as follows:

    adagoop input_file prefix (e.g. adagoop ada05.g ada05)

`prefix` should be a simple name for the project.  This name will be used in several places in the output files.

AdaGOOP generates `{prefix}.l` and `{prefix}.y`.

`{prefix}.l` is an input file for `scaflex`.  It contains the specifications of tokens.

`{prefix}.y` is an input file for `scayacc`.  It contains the grammar, plus code to build an object-oriented parse tree.

Once AdaGOOP has been run, you can create the lexer and parser by running

     scaflex {prefix}.l
     gnatchop -w {prefix}.a
     gnatchop -w {prefix}_io.a
     gnatchop -w {prefix}_dfa.a
     scayacc {prefix}.y
     gnatchop -w {prefix}.a
     gnatchop -w {prefix}_goto.a
     sed -e 1d {prefix}_tokens.a > {prefix}_modified_tokens.a
     gnatchop –w {prefix}_modified_tokens.a
     gnatchop -w {prefix}_shift_reduce.a

## The grammar ##

The input file to AdaGOOP consists of three parts: token macros, tokens, and the grammar.  Token macros are regular expressions that form parts of tokens.  For example,
```
token_macros
  DIGIT [0-9]
  INTEGER ({DIGIT}+)
```

defines two macros, `DIGIT` and `INTEGER`, that can be used to create other tokens.  Tokens are formed in the same fashion; however, their regular expressions can only contain token macros, not other tokens.  The regular expression operators supported are:
```
  [0-9A-FZ]    : any 1 character ‘0’-‘9’,‘A’-‘F’,or ‘Z’
  [^xyz]       : any character except x, y or z
  \n           : new line
  .            : any single character
  \.           : the character ‘.’ (similar for \”, \[, …)
  x*           : 0 or more occurrences of x
  x+           : 1 or more occurrences of x
  x?           : 0 or 1 occurrences of x
  x|y              : either x or y
  “x*”         : literally “x*” (ignore operators)
  {MACRO}      : replace with definition of MACRO
  ()           : parentheses, as (zy)*
```

Comments should be defined with the token “ignore”, e.g.
```
ignore   "--"[^\n]*
```

Both tokens and token macros should be specified one per line.  Comments may be interspersed with `--` (this is why the `ignore` token above must have the `--` in quotation marks).

The final section, `grammar`, gives an LALR(1) grammar.  It should begin with a `%start`, indicating which non-terminal symbol is the starting symbol of the grammar, e.g.
```
grammar
%start A
A : A token1 B | token2 | ;
B : token2;
```

Each grammar rule consists of a non-terminal name, followed by a colon, followed by one or more sequences of terminals and non-terminals, separated by `|`.  Note that a null production is specified by simply having one of these sequences be empty.  The rule is terminated with a semicolon.  White space is irrelevant.

## Generated code ##

For the object-oriented parse tree, AdaGOOP creates an abstract object,` Parseable`, that will serve as the root of our hierarchy (it has no fields):
``` ada
   type Parseable is abstract tagged null record;
```

We also create a single object type, `Parseable_Token`, to handle all terminal symbols:
``` ada
   type Parseable_Token is new Parseable with record
      Line         : Natural;
      Column       : Natural;
      Token_String : String_Ptr;
      Token_Type   : Token; -- enumeration of all tokens
   end record;
```

Both `Parseable` and `Parseable_Token` are found in the package `{prefix}_Model`.  A production `A => B C`, where `B` and `C` are non-terminals, corresponds to a node in the parse tree containing pointers to the subtrees derived through `B` and `C`.  We therefore create the following class declaration (which will appear in the package specification a_model.ads):
``` ada
  type A_nonterminal is new Parseable with record
     B_part : access B_nonterminal’Class;
     C_part : access C_nonterminal’Class;
   end record;
```

Since we have a single class for all terminal symbols, if we have A => B terminal1 C, we simply add a pointer to a Parseable_Token as the second field of the record.  The parse tree then contains all of the information to completely recreate the original source text, with the exception of comment tokens (which are ignored).

To address the issue of multiple productions for a single non-terminal, we insert an abstract class for the non-terminal, and have concrete classes corresponding to each possible production.  For example, if we have `A => B terminal1 C | D`, AdaGOOP outputs the following record declarations in the package `A_Model`:
```
  type A_nonterminal is abstract new Parseable
      with null record;
  type A_nonterminal_Ptr is access all A_nonterminal’Class;
  type A_nonterminal1 is new A_nonterminal with record
     B_part : access B_nonterminal’Class
     Terminal1_Part : Parseable_Token_Ptr;
     C_part : access C_nonterminal’Class;
  end record;
  type A_nonterminal2 is new A_nonterminal with record
     D_part : access D_nonterminal’Class;
  end record;
```

The tool also will automatically number the fields in the case where a non-terminal or terminal appears more than once on the right hand side of a production.  So, if we had `A => B terminal1 B` instead, the record would look like:
```
  type A_nonterminal1 is new A_nonterminal with record
     B_part1 : access B_nonterminal’Class
     Terminal1_Part : Parseable_Token_Ptr;
     B_part2 : access B_nonterminal’Class;
  end record;
```

AdaGOOP also generates code for traversing the parse tree using the Visitor pattern.  Each class in the parse tree hierarchy has an acceptor method, which is used to dispatch to the appropriate visitor method:

```
   procedure Acceptor(This : access Parseable;
      I : access {prefix}_Visitor_Interface.
      Visit_{prefix}_Interface'Class) is abstract;
```

This automatically generated interface specifies a visitor method that has no additional parameters and does not return a value.  It is output to the file `{prefix}_visitor_interface.ads`.

As can be seen from the following sample body (automatically generated), Acceptor` merely calls the appropriate visitor method found in the interface:
```
   procedure Acceptor(This : access A_nonterminal2;
      I : access Visit_prefix_Interface'Class) is
   begin
      I.Visit_A_nonterminal2(This);
   end Acceptor;
```

`Visit_{prefix}_Interface` contains one visitor method for each leaf of the hierarchy, and supports both pre-order and post-order depth first traversals by providing “before” and “after” methods that can be overloaded:
```
limited with A_Model;
limited with {prefix}_Model;
package {prefix}_Visitor_Interface is
   type Visit_{prefix}_Interface is interface;

   procedure Visit_Parseable_Token(
      I : access Visit_{prefix}_Interface;
      T : access {prefix}_Model.Parseable_Token'Class) is null;

   procedure Before_A_nonterminal1(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal1'Class) is null;
   procedure Visit_A_nonterminal1(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal1'Class) is abstract;
   procedure After_A_nonterminal1(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal1'Class) is null;

   procedure Before_A_nonterminal2(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal2'Class) is null;
   procedure Visit_A_nonterminal2(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal2'Class) is abstract;
   procedure After_A_nonterminal2(
      I : access Visit_{prefix}_Interface;
      N : access A_Model.A_nonterminal2'Class) is null;

   ...
end {prefix}_Visitor_Interface;
```

A depth first traversal class, `DFS`, is generated into the package `{prefix}_DFS`.  `DFS` implements the visitor interface, and its visit methods perform a depth first traversal of the parse tree.  For example, following is the visitor method corresponding to the production `A => B PROCEDURE C`:

```
   procedure Visit_A_nonterminal1(
         I : access DFS;
         N : access A_Model.A_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_A_nonterminal1(N);
      N.B_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.C_part.Acceptor(I);
      I_Classwide.After_A_nonterminal1(N);
   end Visit_A_nonterminal1;
```

This visitor method calls the “before” method (for pre-order traversals), then calls `Acceptor` for each of the children to dispatch to the appropriate visitor, and finally calls the “after” method (for post-order traversals).  Tokens don’t require dispatching, so the visit method can be called directly.  It is interesting to note that Ada, unlike Java, does not perform dynamic dispatching by default.  Therefore, it is necessary to convert the parameter `I` to a classwide type before calling `Acceptor` on each child so that dispatching occurs.

## Your code ##

To create your own visitor, you simply create a child class for `DFS`.  In this child class, you override the “before” and/or “after” methods for those parse tree classes that you wish to process:
```
limited with A_Model;

with {prefix}_DFS;

package DFS_Example is

   type DFS is new {prefix}_DFS.DFS with null record;

   overriding procedure After_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class);
   overriding procedure Before_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class);

   ...
end DFS_Example;
```

Creating a main program for a tool generated with AdaGOOP is simple.  You need simply call the `Run` procedure in the `{prefix}_Parser` package with a filename, then use `Get_Parse_Tree` to get the root of the resulting parse tree.  The depth first traversal is started by calling the method `Acceptor` on the root of the tree.

```
with Ada.Command_Line;
use Ada.Command_Line;
with Ada.Text_IO;
use Ada.Text_IO;
with {prefix}_Parser;
with {prefix}_Model;
with DFS_Example;

procedure Tool is
   Visitor : aliased DFS_Example.DFS;
   Parse_Tree : {prefix}_Model.Parseable_Ptr;

begin
   if Argument_Count /= 1 then
      Put_Line ("usage: tool filename");
      return;
   end if;

   {prefix}_Parser.Run (Argument (1));
   Parse_Tree := {prefix}_Parser.Get_Parse_Tree;
   Parse_Tree.Acceptor (Visitor'Access);
end Tool;
```
