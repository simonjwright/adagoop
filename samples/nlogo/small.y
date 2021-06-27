-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.

{
with small_Model;
use small_Model;

package small_tokens is
}

%token STRING_token
%token RPAREN_token
%token LPAREN_token
%token COMMA_token
%token TIMES_token
%token MINUS_token
%token PLUS_token
%token DONE_token
%token ID_token
%token NUMBER_token
%token TURTLES_token
%token TO_token
%token SET_token
%token RBRACK_token
%token RANDOMFLT_token
%token RANDOM_token
%token PYCOR_token
%token PXCOR_token
%token PCOLOR_token
%token LBRACK_token
%token OUTPUTPRINT_token
%token OR_token
%token IF_token
%token HEADING_token
%token GLOBALS_token
%token FORWARD_token
%token END_token
%token CLEARALL_token
%token ASK_token
%token AND_token

%start adagoop_first
{
subtype YYSTYPE is small_Model.Parseable_Ptr;
}

%%

STRING_nonterminal : STRING_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_token); } ;
RPAREN_nonterminal : RPAREN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RPAREN_token); } ;
LPAREN_nonterminal : LPAREN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LPAREN_token); } ;
COMMA_nonterminal : COMMA_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMA_token); } ;
TIMES_nonterminal : TIMES_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TIMES_token); } ;
MINUS_nonterminal : MINUS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MINUS_token); } ;
PLUS_nonterminal : PLUS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PLUS_token); } ;
DONE_nonterminal : DONE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DONE_token); } ;
ID_nonterminal : ID_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ID_token); } ;
NUMBER_nonterminal : NUMBER_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NUMBER_token); } ;
TURTLES_nonterminal : TURTLES_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TURTLES_token); } ;
TO_nonterminal : TO_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TO_token); } ;
SET_nonterminal : SET_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SET_token); } ;
RBRACK_nonterminal : RBRACK_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RBRACK_token); } ;
RANDOMFLT_nonterminal : RANDOMFLT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANDOMFLT_token); } ;
RANDOM_nonterminal : RANDOM_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANDOM_token); } ;
PYCOR_nonterminal : PYCOR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PYCOR_token); } ;
PXCOR_nonterminal : PXCOR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PXCOR_token); } ;
PCOLOR_nonterminal : PCOLOR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PCOLOR_token); } ;
LBRACK_nonterminal : LBRACK_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LBRACK_token); } ;
OUTPUTPRINT_nonterminal : OUTPUTPRINT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OUTPUTPRINT_token); } ;
OR_nonterminal : OR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); } ;
IF_nonterminal : IF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); } ;
HEADING_nonterminal : HEADING_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,HEADING_token); } ;
GLOBALS_nonterminal : GLOBALS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GLOBALS_token); } ;
FORWARD_nonterminal : FORWARD_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FORWARD_token); } ;
END_nonterminal : END_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); } ;
CLEARALL_nonterminal : CLEARALL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CLEARALL_token); } ;
ASK_nonterminal : ASK_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ASK_token); } ;
AND_nonterminal : AND_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); } ;

adagoop_first : A_nonterminal
{ Parse_Tree := $1; } ; 

A_nonterminal : 
   A_nonterminal PROCEDURE_nonterminal B_nonterminal  {
   $$ := new A_nonterminal1;
   A_nonterminal1($$.all).A_part :=    A_Nonterminal_Ptr($1);
   A_nonterminal1($$.all).PROCEDURE_part :=    PROCEDURE_Nonterminal_Ptr($2);
   A_nonterminal1($$.all).B_part :=    B_Nonterminal_Ptr($3);
   }|
   B_nonterminal  {
   $$ := new A_nonterminal2;
   A_nonterminal2($$.all).B_part :=    B_Nonterminal_Ptr($1);
   };

B_nonterminal : 
   B_nonterminal OPEN_nonterminal C_nonterminal  {
   $$ := new B_nonterminal1;
   B_nonterminal1($$.all).B_part :=    B_Nonterminal_Ptr($1);
   B_nonterminal1($$.all).OPEN_part :=    OPEN_Nonterminal_Ptr($2);
   B_nonterminal1($$.all).C_part :=    C_Nonterminal_Ptr($3);
   }|
   C_nonterminal  {
   $$ := new B_nonterminal2;
   B_nonterminal2($$.all).C_part :=    C_Nonterminal_Ptr($1);
   };

C_nonterminal : 
   WRITE_nonterminal  {
   $$ := new C_nonterminal;
   C_nonterminal($$.all).WRITE_part :=    WRITE_Nonterminal_Ptr($1);
   };

%%

with small_Model;
use small_Model;
package small_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end small_Parser;

with Text_IO;
use Text_IO;
with small;
use small;
with small_Goto;
use small_Goto;
with small_Shift_Reduce;
use small_Shift_Reduce;
with small_Tokens;
use small_Tokens;
with C_model;
use C_model;
with B_model;
use B_model;
with A_model;
use A_model;
package body small_Parser is
   package Language_YY2_Lexical_Analyzer renames small;
   use Language_YY2_Lexical_Analyzer;

   type C_Nonterminal_Ptr is access all
      C_model.C_Nonterminal'Class;
   type B_Nonterminal_Ptr is access all
      B_model.B_Nonterminal'Class;
   type A_Nonterminal_Ptr is access all
      A_model.A_Nonterminal'Class;
   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      Put_Line(S & " on line " &          integer'image(small.Get_Current_Line));
   end YYError;

##%procedure_parse

   procedure Run(Filename : in String) is
   begin
      small.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      small.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end small_Parser;
