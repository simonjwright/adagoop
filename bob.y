-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.

{
with bob_Model;
use bob_Model;

package bob_tokens is
}

%token NAME_token
%token FLOAT_LITERAL_token
%token INTEGER_LITERAL_token
%token STRING_token
%token ASSIGNMENT_token
%token END_LINE_token
%token RANGE_OP_token
%token LS_EQUAL_token
%token GT_EQUAL_token
%token LESS_token
%token GREATER_token
%token CLOSE_PARN_token
%token OPEN_PARN_token
%token EQUAL_token
%token AND_token
%token OR_token
%token NOT_token
%token DIVISION_token
%token MULTIPLICATION_token
%token SUBTRACTION_token
%token ADDITION_token
%token OF_token
%token RANGE_KW_token
%token IS_token
%token ARRAY_token
%token TYPE_token
%token STRING_DECLARE_token
%token FLOAT_DECLARE_token
%token INTEGER_DECLARE_token
%token CONSTANT_token
%token END_token
%token LOOP_token
%token WHILE_token
%token ELSE_token
%token THEN_token
%token IF_token
%token BEGIN_token
%token PROCEDURE_token

%start adagoop_first
{
subtype YYSTYPE is bob_Model.Parseable_Ptr;
}

%%

NAME_nonterminal : NAME_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NAME_token); } ;
FLOAT_LITERAL_nonterminal : FLOAT_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FLOAT_LITERAL_token); } ;
INTEGER_LITERAL_nonterminal : INTEGER_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTEGER_LITERAL_token); } ;
STRING_nonterminal : STRING_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_token); } ;
ASSIGNMENT_nonterminal : ASSIGNMENT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ASSIGNMENT_token); } ;
END_LINE_nonterminal : END_LINE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_LINE_token); } ;
RANGE_OP_nonterminal : RANGE_OP_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANGE_OP_token); } ;
LS_EQUAL_nonterminal : LS_EQUAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LS_EQUAL_token); } ;
GT_EQUAL_nonterminal : GT_EQUAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GT_EQUAL_token); } ;
LESS_nonterminal : LESS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LESS_token); } ;
GREATER_nonterminal : GREATER_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GREATER_token); } ;
CLOSE_PARN_nonterminal : CLOSE_PARN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CLOSE_PARN_token); } ;
OPEN_PARN_nonterminal : OPEN_PARN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OPEN_PARN_token); } ;
EQUAL_nonterminal : EQUAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EQUAL_token); } ;
AND_nonterminal : AND_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); } ;
OR_nonterminal : OR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); } ;
NOT_nonterminal : NOT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); } ;
DIVISION_nonterminal : DIVISION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DIVISION_token); } ;
MULTIPLICATION_nonterminal : MULTIPLICATION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MULTIPLICATION_token); } ;
SUBTRACTION_nonterminal : SUBTRACTION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SUBTRACTION_token); } ;
ADDITION_nonterminal : ADDITION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ADDITION_token); } ;
OF_nonterminal : OF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); } ;
RANGE_KW_nonterminal : RANGE_KW_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANGE_KW_token); } ;
IS_nonterminal : IS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IS_token); } ;
ARRAY_nonterminal : ARRAY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); } ;
TYPE_nonterminal : TYPE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); } ;
STRING_DECLARE_nonterminal : STRING_DECLARE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_DECLARE_token); } ;
FLOAT_DECLARE_nonterminal : FLOAT_DECLARE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FLOAT_DECLARE_token); } ;
INTEGER_DECLARE_nonterminal : INTEGER_DECLARE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTEGER_DECLARE_token); } ;
CONSTANT_nonterminal : CONSTANT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CONSTANT_token); } ;
END_nonterminal : END_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); } ;
LOOP_nonterminal : LOOP_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LOOP_token); } ;
WHILE_nonterminal : WHILE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); } ;
ELSE_nonterminal : ELSE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); } ;
THEN_nonterminal : THEN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); } ;
IF_nonterminal : IF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); } ;
BEGIN_nonterminal : BEGIN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); } ;
PROCEDURE_nonterminal : PROCEDURE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); } ;

adagoop_first : A_nonterminal
{ Parse_Tree := $1; } ; 

A_nonterminal : 
   RANGE_OP_nonterminal  {
   $$ := new A_nonterminal;
   A_nonterminal($$.all).RANGE_OP_part :=    Parseable_Token_Ptr($1);
   };

%%

with bob_Model;
use bob_Model;
package bob_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end bob_Parser;

with Text_IO;
use Text_IO;
with bob;
use bob;
with bob_Goto;
use bob_Goto;
with bob_Shift_Reduce;
use bob_Shift_Reduce;
with bob_Tokens;
use bob_Tokens;
with A_model;
use A_model;
package body bob_Parser is
   package Language_YY2_Lexical_Analyzer renames bob;
   use Language_YY2_Lexical_Analyzer;

   type A_Nonterminal_Ptr is access all
      A_model.A_Nonterminal'Class;
   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      Put_Line(S & " on line " &          integer'image(bob.Get_Current_Line));
   end YYError;

##%procedure_parse

   procedure Run(Filename : in String) is
   begin
      bob.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      bob.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end bob_Parser;
