-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.

{
with test_Model;
use test_Model;

package test_tokens is
}

%token WRITE_token
%token WHILE_token
%token TYPE_token
%token THEN_token
%token RECORD_token
%token REAL_token
%token READ_token
%token PROCEDURE_token
%token OR_token
%token OPEN_token
%token OF_token
%token NOT_token
%token INTEGER_token
%token IF_token
%token FUNCTION_token
%token END_token
%token ELSE_token
%token DO_token
%token CLOSE_token
%token BOOLEAN_token
%token BEGIN_token
%token ARRAY_token
%token AND_token

%start adagoop_first
{
subtype YYSTYPE is test_Model.Parseable_Ptr;
}

%%

WRITE_nonterminal : WRITE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WRITE_token); } ;
WHILE_nonterminal : WHILE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); } ;
TYPE_nonterminal : TYPE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); } ;
THEN_nonterminal : THEN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); } ;
RECORD_nonterminal : RECORD_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RECORD_token); } ;
REAL_nonterminal : REAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REAL_token); } ;
READ_nonterminal : READ_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,READ_token); } ;
PROCEDURE_nonterminal : PROCEDURE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); } ;
OR_nonterminal : OR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); } ;
OPEN_nonterminal : OPEN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OPEN_token); } ;
OF_nonterminal : OF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); } ;
NOT_nonterminal : NOT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); } ;
INTEGER_nonterminal : INTEGER_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTEGER_token); } ;
IF_nonterminal : IF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); } ;
FUNCTION_nonterminal : FUNCTION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FUNCTION_token); } ;
END_nonterminal : END_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); } ;
ELSE_nonterminal : ELSE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); } ;
DO_nonterminal : DO_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DO_token); } ;
CLOSE_nonterminal : CLOSE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CLOSE_token); } ;
BOOLEAN_nonterminal : BOOLEAN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BOOLEAN_token); } ;
BEGIN_nonterminal : BEGIN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); } ;
ARRAY_nonterminal : ARRAY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); } ;
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
   A_nonterminal1($$.all).PROCEDURE_part :=    Parseable_Token_Ptr($2);
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
   B_nonterminal1($$.all).OPEN_part :=    Parseable_Token_Ptr($2);
   B_nonterminal1($$.all).C_part :=    C_Nonterminal_Ptr($3);
   }|
   C_nonterminal  {
   $$ := new B_nonterminal2;
   B_nonterminal2($$.all).C_part :=    C_Nonterminal_Ptr($1);
   };

C_nonterminal : 
   WRITE_nonterminal  {
   $$ := new C_nonterminal;
   C_nonterminal($$.all).WRITE_part :=    Parseable_Token_Ptr($1);
   };

%%

with test_Model;
use test_Model;
package test_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end test_Parser;

with Text_IO;
use Text_IO;
with test;
use test;
with test_Goto;
use test_Goto;
with test_Shift_Reduce;
use test_Shift_Reduce;
with test_Tokens;
use test_Tokens;
with C_model;
use C_model;
with B_model;
use B_model;
with A_model;
use A_model;
package body test_Parser is
   package Language_YY2_Lexical_Analyzer renames test;
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
      Put_Line(S & " on line " &          integer'image(test.Get_Current_Line));
   end YYError;

##%procedure_parse

   procedure Run(Filename : in String) is
   begin
      test.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      test.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end test_Parser;
