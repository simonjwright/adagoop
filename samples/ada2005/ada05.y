-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.

{
with ada05_Model;
use ada05_Model;

package ada05_tokens is
}

%token CHAR_LITERAL_token
%token STRING_LITERAL_token
%token BASED_LITERAL_token
%token DECIMAL_LITERAL_token
%token IDENTIFIER_token
%token TICK_token
%token BANG_token
%token PIPE_token
%token GT_token
%token EQ_token
%token LT_token
%token SEMICOLON_token
%token COLON_token
%token SLASH_token
%token DOT_token
%token MINUS_token
%token COMMA_token
%token PLUS_token
%token STAR_token
%token R_PAREN_token
%token L_PAREN_token
%token BIT_AND_token
%token BOX_token
%token RIGHT_LABEL_BRACKET_token
%token LEFT_LABEL_BRACKET_token
%token LESS_THAN_OR_EQUAL_token
%token GREATER_THAN_OR_EQUAL_token
%token INEQUALITY_token
%token ASSIGNMENT_token
%token EXPONENT_token
%token DOUBLE_DOT_token
%token ARROW_token
%token XOR_token
%token WITH_token
%token WHILE_token
%token WHEN_token
%token USE_token
%token UNTIL_token
%token TYPE_token
%token THEN_token
%token TERMINATE_token
%token TASK_token
%token TAGGED_token
%token SYNCHRONIZED_token
%token SUBTYPE_token
%token SEPARATE_token
%token SELECT_token
%token REVERSE_token
%token RETURN_token
%token REQUEUE_token
%token RENAMES_token
%token REM_token
%token RECORD_token
%token RANGE_token
%token RAISE_token
%token PROTECTED_token
%token PROCEDURE_token
%token PRIVATE_token
%token PRAGMA_token
%token PACKAGE_token
%token OUT_token
%token OVERRIDING_token
%token OTHERS_token
%token OR_token
%token OF_token
%token NULL_token
%token NOT_token
%token NEW_token
%token MOD_token
%token LOOP_token
%token LIMITED_token
%token IS_token
%token INTERFACE_token
%token IN_token
%token IF_token
%token GOTO_token
%token GENERIC_token
%token FUNCTION_token
%token FOR_token
%token EXIT_token
%token EXCEPTION_token
%token ENTRY_token
%token END_token
%token ELSIF_token
%token ELSE_token
%token DO_token
%token DIGITS_token
%token DELTA_token
%token DELAY_token
%token DECLARE_token
%token CONSTANT_token
%token CASE_token
%token BODY_token
%token BEGIN_token
%token AT_token
%token ARRAY_token
%token AND_token
%token ALL_token
%token ALIASED_token
%token ACCESS_token
%token ACCEPT_token
%token ABSTRACT_token
%token ABS_token
%token ABORT_token

%start adagoop_first
{
subtype YYSTYPE is ada05_Model.Parseable_Ptr;
}

%%

CHAR_LITERAL_nonterminal : CHAR_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CHAR_LITERAL_token); } ;
STRING_LITERAL_nonterminal : STRING_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_LITERAL_token); } ;
BASED_LITERAL_nonterminal : BASED_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BASED_LITERAL_token); } ;
DECIMAL_LITERAL_nonterminal : DECIMAL_LITERAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECIMAL_LITERAL_token); } ;
IDENTIFIER_nonterminal : IDENTIFIER_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IDENTIFIER_token); } ;
TICK_nonterminal : TICK_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TICK_token); } ;
BANG_nonterminal : BANG_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BANG_token); } ;
PIPE_nonterminal : PIPE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PIPE_token); } ;
GT_nonterminal : GT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GT_token); } ;
EQ_nonterminal : EQ_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EQ_token); } ;
LT_nonterminal : LT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LT_token); } ;
SEMICOLON_nonterminal : SEMICOLON_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEMICOLON_token); } ;
COLON_nonterminal : COLON_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COLON_token); } ;
SLASH_nonterminal : SLASH_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SLASH_token); } ;
DOT_nonterminal : DOT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOT_token); } ;
MINUS_nonterminal : MINUS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MINUS_token); } ;
COMMA_nonterminal : COMMA_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMA_token); } ;
PLUS_nonterminal : PLUS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PLUS_token); } ;
STAR_nonterminal : STAR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STAR_token); } ;
R_PAREN_nonterminal : R_PAREN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,R_PAREN_token); } ;
L_PAREN_nonterminal : L_PAREN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,L_PAREN_token); } ;
BIT_AND_nonterminal : BIT_AND_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BIT_AND_token); } ;
BOX_nonterminal : BOX_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BOX_token); } ;
RIGHT_LABEL_BRACKET_nonterminal : RIGHT_LABEL_BRACKET_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RIGHT_LABEL_BRACKET_token); } ;
LEFT_LABEL_BRACKET_nonterminal : LEFT_LABEL_BRACKET_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LEFT_LABEL_BRACKET_token); } ;
LESS_THAN_OR_EQUAL_nonterminal : LESS_THAN_OR_EQUAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LESS_THAN_OR_EQUAL_token); } ;
GREATER_THAN_OR_EQUAL_nonterminal : GREATER_THAN_OR_EQUAL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GREATER_THAN_OR_EQUAL_token); } ;
INEQUALITY_nonterminal : INEQUALITY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INEQUALITY_token); } ;
ASSIGNMENT_nonterminal : ASSIGNMENT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ASSIGNMENT_token); } ;
EXPONENT_nonterminal : EXPONENT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXPONENT_token); } ;
DOUBLE_DOT_nonterminal : DOUBLE_DOT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_DOT_token); } ;
ARROW_nonterminal : ARROW_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARROW_token); } ;
XOR_nonterminal : XOR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,XOR_token); } ;
WITH_nonterminal : WITH_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WITH_token); } ;
WHILE_nonterminal : WHILE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); } ;
WHEN_nonterminal : WHEN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHEN_token); } ;
USE_nonterminal : USE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,USE_token); } ;
UNTIL_nonterminal : UNTIL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,UNTIL_token); } ;
TYPE_nonterminal : TYPE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); } ;
THEN_nonterminal : THEN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); } ;
TERMINATE_nonterminal : TERMINATE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TERMINATE_token); } ;
TASK_nonterminal : TASK_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TASK_token); } ;
TAGGED_nonterminal : TAGGED_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TAGGED_token); } ;
SYNCHRONIZED_nonterminal : SYNCHRONIZED_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SYNCHRONIZED_token); } ;
SUBTYPE_nonterminal : SUBTYPE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SUBTYPE_token); } ;
SEPARATE_nonterminal : SEPARATE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEPARATE_token); } ;
SELECT_nonterminal : SELECT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SELECT_token); } ;
REVERSE_nonterminal : REVERSE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REVERSE_token); } ;
RETURN_nonterminal : RETURN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RETURN_token); } ;
REQUEUE_nonterminal : REQUEUE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REQUEUE_token); } ;
RENAMES_nonterminal : RENAMES_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RENAMES_token); } ;
REM_nonterminal : REM_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REM_token); } ;
RECORD_nonterminal : RECORD_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RECORD_token); } ;
RANGE_nonterminal : RANGE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANGE_token); } ;
RAISE_nonterminal : RAISE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RAISE_token); } ;
PROTECTED_nonterminal : PROTECTED_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROTECTED_token); } ;
PROCEDURE_nonterminal : PROCEDURE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); } ;
PRIVATE_nonterminal : PRIVATE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRIVATE_token); } ;
PRAGMA_nonterminal : PRAGMA_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRAGMA_token); } ;
PACKAGE_nonterminal : PACKAGE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PACKAGE_token); } ;
OUT_nonterminal : OUT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OUT_token); } ;
OVERRIDING_nonterminal : OVERRIDING_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OVERRIDING_token); } ;
OTHERS_nonterminal : OTHERS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OTHERS_token); } ;
OR_nonterminal : OR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); } ;
OF_nonterminal : OF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); } ;
NULL_nonterminal : NULL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NULL_token); } ;
NOT_nonterminal : NOT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); } ;
NEW_nonterminal : NEW_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NEW_token); } ;
MOD_nonterminal : MOD_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MOD_token); } ;
LOOP_nonterminal : LOOP_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LOOP_token); } ;
LIMITED_nonterminal : LIMITED_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LIMITED_token); } ;
IS_nonterminal : IS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IS_token); } ;
INTERFACE_nonterminal : INTERFACE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTERFACE_token); } ;
IN_nonterminal : IN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IN_token); } ;
IF_nonterminal : IF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); } ;
GOTO_nonterminal : GOTO_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GOTO_token); } ;
GENERIC_nonterminal : GENERIC_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GENERIC_token); } ;
FUNCTION_nonterminal : FUNCTION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FUNCTION_token); } ;
FOR_nonterminal : FOR_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FOR_token); } ;
EXIT_nonterminal : EXIT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXIT_token); } ;
EXCEPTION_nonterminal : EXCEPTION_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXCEPTION_token); } ;
ENTRY_nonterminal : ENTRY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ENTRY_token); } ;
END_nonterminal : END_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); } ;
ELSIF_nonterminal : ELSIF_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSIF_token); } ;
ELSE_nonterminal : ELSE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); } ;
DO_nonterminal : DO_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DO_token); } ;
DIGITS_nonterminal : DIGITS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DIGITS_token); } ;
DELTA_nonterminal : DELTA_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELTA_token); } ;
DELAY_nonterminal : DELAY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELAY_token); } ;
DECLARE_nonterminal : DECLARE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECLARE_token); } ;
CONSTANT_nonterminal : CONSTANT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CONSTANT_token); } ;
CASE_nonterminal : CASE_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CASE_token); } ;
BODY_nonterminal : BODY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BODY_token); } ;
BEGIN_nonterminal : BEGIN_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); } ;
AT_nonterminal : AT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AT_token); } ;
ARRAY_nonterminal : ARRAY_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); } ;
AND_nonterminal : AND_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); } ;
ALL_nonterminal : ALL_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALL_token); } ;
ALIASED_nonterminal : ALIASED_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALIASED_token); } ;
ACCESS_nonterminal : ACCESS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCESS_token); } ;
ACCEPT_nonterminal : ACCEPT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCEPT_token); } ;
ABSTRACT_nonterminal : ABSTRACT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABSTRACT_token); } ;
ABS_nonterminal : ABS_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABS_token); } ;
ABORT_nonterminal : ABORT_token
   { Token_String := new String'(Get_Token_String);
     $$ := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABORT_token); } ;

adagoop_first : compilation_nonterminal
{ Parse_Tree := $1; } ; 

NUMERIC_LIT_nonterminal : 
   DECIMAL_LITERAL_nonterminal  {
   $$ := new NUMERIC_LIT_nonterminal1;
   NUMERIC_LIT_nonterminal1($$.all).DECIMAL_LITERAL_part :=    Parseable_Token_Ptr($1);
   }|
   BASED_LITERAL_nonterminal  {
   $$ := new NUMERIC_LIT_nonterminal2;
   NUMERIC_LIT_nonterminal2($$.all).BASED_LITERAL_part :=    Parseable_Token_Ptr($1);
   };

CHAR_LIT_nonterminal : 
   CHAR_LITERAL_nonterminal  {
   $$ := new CHAR_LIT_nonterminal;
   CHAR_LIT_nonterminal($$.all).CHAR_LITERAL_part :=    Parseable_Token_Ptr($1);
   };

GT_GT_nonterminal : 
   RIGHT_LABEL_BRACKET_nonterminal  {
   $$ := new GT_GT_nonterminal;
   GT_GT_nonterminal($$.all).RIGHT_LABEL_BRACKET_part :=    Parseable_Token_Ptr($1);
   };

LT_LT_nonterminal : 
   LEFT_LABEL_BRACKET_nonterminal  {
   $$ := new LT_LT_nonterminal;
   LT_LT_nonterminal($$.all).LEFT_LABEL_BRACKET_part :=    Parseable_Token_Ptr($1);
   };

GE_nonterminal : 
   GREATER_THAN_OR_EQUAL_nonterminal  {
   $$ := new GE_nonterminal;
   GE_nonterminal($$.all).GREATER_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr($1);
   };

LT_EQ_nonterminal : 
   LESS_THAN_OR_EQUAL_nonterminal  {
   $$ := new LT_EQ_nonterminal;
   LT_EQ_nonterminal($$.all).LESS_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr($1);
   };

NE_nonterminal : 
   INEQUALITY_nonterminal  {
   $$ := new NE_nonterminal;
   NE_nonterminal($$.all).INEQUALITY_part :=    Parseable_Token_Ptr($1);
   };

CHAR_STRING_nonterminal : 
   STRING_LITERAL_nonterminal  {
   $$ := new CHAR_STRING_nonterminal;
   CHAR_STRING_nonterminal($$.all).STRING_LITERAL_part :=    Parseable_Token_Ptr($1);
   };

pragma_sym_nonterminal : 
   PRAGMA_nonterminal identifier_nonterminal SEMICOLON_nonterminal  {
   $$ := new pragma_sym_nonterminal1;
   pragma_sym_nonterminal1($$.all).PRAGMA_part :=    Parseable_Token_Ptr($1);
   pragma_sym_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   pragma_sym_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   PRAGMA_nonterminal simple_name_nonterminal L_PAREN_nonterminal pragma_arg_s_nonterminal R_PAREN_nonterminal SEMICOLON_nonterminal  {
   $$ := new pragma_sym_nonterminal2;
   pragma_sym_nonterminal2($$.all).PRAGMA_part :=    Parseable_Token_Ptr($1);
   pragma_sym_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($2);
   pragma_sym_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($3);
   pragma_sym_nonterminal2($$.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr($4);
   pragma_sym_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($5);
   pragma_sym_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

pragma_arg_s_nonterminal : 
   pragma_arg_nonterminal  {
   $$ := new pragma_arg_s_nonterminal1;
   pragma_arg_s_nonterminal1($$.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr($1);
   }|
   pragma_arg_s_nonterminal COMMA_nonterminal pragma_arg_nonterminal  {
   $$ := new pragma_arg_s_nonterminal2;
   pragma_arg_s_nonterminal2($$.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr($1);
   pragma_arg_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   pragma_arg_s_nonterminal2($$.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr($3);
   };

pragma_arg_nonterminal : 
   expression_nonterminal  {
   $$ := new pragma_arg_nonterminal1;
   pragma_arg_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($1);
   }|
   simple_name_nonterminal ARROW_nonterminal expression_nonterminal  {
   $$ := new pragma_arg_nonterminal2;
   pragma_arg_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($1);
   pragma_arg_nonterminal2($$.all).ARROW_part :=    Parseable_Token_Ptr($2);
   pragma_arg_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   };

pragma_s_nonterminal : 
    {
   $$ := new pragma_s_nonterminal1;
   }|
   pragma_s_nonterminal pragma_sym_nonterminal  {
   $$ := new pragma_s_nonterminal2;
   pragma_s_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($1);
   pragma_s_nonterminal2($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($2);
   };

decl_nonterminal : 
   object_decl_nonterminal  {
   $$ := new decl_nonterminal1;
   decl_nonterminal1($$.all).object_decl_part :=    object_decl_Nonterminal_Ptr($1);
   }|
   number_decl_nonterminal  {
   $$ := new decl_nonterminal2;
   decl_nonterminal2($$.all).number_decl_part :=    number_decl_Nonterminal_Ptr($1);
   }|
   type_decl_nonterminal  {
   $$ := new decl_nonterminal3;
   decl_nonterminal3($$.all).type_decl_part :=    type_decl_Nonterminal_Ptr($1);
   }|
   subtype_decl_nonterminal  {
   $$ := new decl_nonterminal4;
   decl_nonterminal4($$.all).subtype_decl_part :=    subtype_decl_Nonterminal_Ptr($1);
   }|
   subprog_decl_nonterminal  {
   $$ := new decl_nonterminal5;
   decl_nonterminal5($$.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr($1);
   }|
   pkg_decl_nonterminal  {
   $$ := new decl_nonterminal6;
   decl_nonterminal6($$.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr($1);
   }|
   task_decl_nonterminal  {
   $$ := new decl_nonterminal7;
   decl_nonterminal7($$.all).task_decl_part :=    task_decl_Nonterminal_Ptr($1);
   }|
   prot_decl_nonterminal  {
   $$ := new decl_nonterminal8;
   decl_nonterminal8($$.all).prot_decl_part :=    prot_decl_Nonterminal_Ptr($1);
   }|
   exception_decl_nonterminal  {
   $$ := new decl_nonterminal9;
   decl_nonterminal9($$.all).exception_decl_part :=    exception_decl_Nonterminal_Ptr($1);
   }|
   rename_decl_nonterminal  {
   $$ := new decl_nonterminal10;
   decl_nonterminal10($$.all).rename_decl_part :=    rename_decl_Nonterminal_Ptr($1);
   }|
   generic_decl_nonterminal  {
   $$ := new decl_nonterminal11;
   decl_nonterminal11($$.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr($1);
   }|
   body_stub_nonterminal  {
   $$ := new decl_nonterminal12;
   decl_nonterminal12($$.all).body_stub_part :=    body_stub_Nonterminal_Ptr($1);
   };

object_decl_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal object_qualifier_opt_nonterminal object_subtype_def_nonterminal init_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new object_decl_nonterminal;
   object_decl_nonterminal($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   object_decl_nonterminal($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   object_decl_nonterminal($$.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr($3);
   object_decl_nonterminal($$.all).object_subtype_def_part :=    object_subtype_def_Nonterminal_Ptr($4);
   object_decl_nonterminal($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($5);
   object_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

def_id_s_nonterminal : 
   def_id_nonterminal  {
   $$ := new def_id_s_nonterminal1;
   def_id_s_nonterminal1($$.all).def_id_part :=    def_id_Nonterminal_Ptr($1);
   }|
   def_id_s_nonterminal COMMA_nonterminal def_id_nonterminal  {
   $$ := new def_id_s_nonterminal2;
   def_id_s_nonterminal2($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   def_id_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   def_id_s_nonterminal2($$.all).def_id_part :=    def_id_Nonterminal_Ptr($3);
   };

def_id_nonterminal : 
   identifier_nonterminal  {
   $$ := new def_id_nonterminal;
   def_id_nonterminal($$.all).identifier_part :=    Parseable_Token_Ptr($1);
   };

object_qualifier_opt_nonterminal : 
    {
   $$ := new object_qualifier_opt_nonterminal1;
   }|
   aliased_nonterminal  {
   $$ := new object_qualifier_opt_nonterminal2;
   object_qualifier_opt_nonterminal2($$.all).aliased_part :=    Parseable_Token_Ptr($1);
   }|
   CONSTANT_nonterminal  {
   $$ := new object_qualifier_opt_nonterminal3;
   object_qualifier_opt_nonterminal3($$.all).CONSTANT_part :=    Parseable_Token_Ptr($1);
   }|
   aliased_nonterminal CONSTANT_nonterminal  {
   $$ := new object_qualifier_opt_nonterminal4;
   object_qualifier_opt_nonterminal4($$.all).aliased_part :=    Parseable_Token_Ptr($1);
   object_qualifier_opt_nonterminal4($$.all).CONSTANT_part :=    Parseable_Token_Ptr($2);
   };

object_subtype_def_nonterminal : 
   subtype_ind_nonterminal  {
   $$ := new object_subtype_def_nonterminal1;
   object_subtype_def_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($1);
   }|
   access_type_nonterminal  {
   $$ := new object_subtype_def_nonterminal2;
   object_subtype_def_nonterminal2($$.all).access_type_part :=    access_type_Nonterminal_Ptr($1);
   }|
   array_type_nonterminal  {
   $$ := new object_subtype_def_nonterminal3;
   object_subtype_def_nonterminal3($$.all).array_type_part :=    array_type_Nonterminal_Ptr($1);
   };

init_opt_nonterminal : 
    {
   $$ := new init_opt_nonterminal1;
   }|
   ASSIGNMENT_nonterminal expression_nonterminal  {
   $$ := new init_opt_nonterminal2;
   init_opt_nonterminal2($$.all).ASSIGNMENT_part :=    Parseable_Token_Ptr($1);
   init_opt_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   };

number_decl_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal CONSTANT_nonterminal ASSIGNMENT_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new number_decl_nonterminal;
   number_decl_nonterminal($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   number_decl_nonterminal($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   number_decl_nonterminal($$.all).CONSTANT_part :=    Parseable_Token_Ptr($3);
   number_decl_nonterminal($$.all).ASSIGNMENT_part :=    Parseable_Token_Ptr($4);
   number_decl_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($5);
   number_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

type_decl_nonterminal : 
   TYPE_nonterminal identifier_nonterminal discrim_part_opt_nonterminal type_completion_nonterminal SEMICOLON_nonterminal  {
   $$ := new type_decl_nonterminal;
   type_decl_nonterminal($$.all).TYPE_part :=    Parseable_Token_Ptr($1);
   type_decl_nonterminal($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   type_decl_nonterminal($$.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr($3);
   type_decl_nonterminal($$.all).type_completion_part :=    type_completion_Nonterminal_Ptr($4);
   type_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

discrim_part_opt_nonterminal : 
    {
   $$ := new discrim_part_opt_nonterminal1;
   }|
   discrim_part_nonterminal  {
   $$ := new discrim_part_opt_nonterminal2;
   discrim_part_opt_nonterminal2($$.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr($1);
   }|
   L_PAREN_nonterminal BOX_nonterminal R_PAREN_nonterminal  {
   $$ := new discrim_part_opt_nonterminal3;
   discrim_part_opt_nonterminal3($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   discrim_part_opt_nonterminal3($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   discrim_part_opt_nonterminal3($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

type_completion_nonterminal : 
    {
   $$ := new type_completion_nonterminal1;
   }|
   IS_nonterminal type_def_nonterminal  {
   $$ := new type_completion_nonterminal2;
   type_completion_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($1);
   type_completion_nonterminal2($$.all).type_def_part :=    type_def_Nonterminal_Ptr($2);
   }|
   IS_nonterminal TAGGED_nonterminal  {
   $$ := new type_completion_nonterminal3;
   type_completion_nonterminal3($$.all).IS_part :=    Parseable_Token_Ptr($1);
   type_completion_nonterminal3($$.all).TAGGED_part :=    Parseable_Token_Ptr($2);
   };

type_def_nonterminal : 
   enumeration_type_nonterminal  {
   $$ := new type_def_nonterminal1;
   type_def_nonterminal1($$.all).enumeration_type_part :=    enumeration_type_Nonterminal_Ptr($1);
   }|
   integer_type_nonterminal  {
   $$ := new type_def_nonterminal2;
   type_def_nonterminal2($$.all).integer_type_part :=    integer_type_Nonterminal_Ptr($1);
   }|
   real_type_nonterminal  {
   $$ := new type_def_nonterminal3;
   type_def_nonterminal3($$.all).real_type_part :=    real_type_Nonterminal_Ptr($1);
   }|
   array_type_nonterminal  {
   $$ := new type_def_nonterminal4;
   type_def_nonterminal4($$.all).array_type_part :=    array_type_Nonterminal_Ptr($1);
   }|
   record_type_nonterminal  {
   $$ := new type_def_nonterminal5;
   type_def_nonterminal5($$.all).record_type_part :=    record_type_Nonterminal_Ptr($1);
   }|
   access_type_nonterminal  {
   $$ := new type_def_nonterminal6;
   type_def_nonterminal6($$.all).access_type_part :=    access_type_Nonterminal_Ptr($1);
   }|
   derived_type_nonterminal  {
   $$ := new type_def_nonterminal7;
   type_def_nonterminal7($$.all).derived_type_part :=    derived_type_Nonterminal_Ptr($1);
   }|
   private_type_nonterminal  {
   $$ := new type_def_nonterminal8;
   type_def_nonterminal8($$.all).private_type_part :=    private_type_Nonterminal_Ptr($1);
   }|
   interface_type_nonterminal  {
   $$ := new type_def_nonterminal9;
   type_def_nonterminal9($$.all).interface_type_part :=    interface_type_Nonterminal_Ptr($1);
   };

subtype_decl_nonterminal : 
   SUBTYPE_nonterminal identifier_nonterminal IS_nonterminal subtype_ind_nonterminal SEMICOLON_nonterminal  {
   $$ := new subtype_decl_nonterminal1;
   subtype_decl_nonterminal1($$.all).SUBTYPE_part :=    Parseable_Token_Ptr($1);
   subtype_decl_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   subtype_decl_nonterminal1($$.all).IS_part :=    Parseable_Token_Ptr($3);
   subtype_decl_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($4);
   subtype_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   SUBTYPE_nonterminal identifier_nonterminal IS_nonterminal NOT_nonterminal NULL_nonterminal subtype_ind_nonterminal SEMICOLON_nonterminal  {
   $$ := new subtype_decl_nonterminal2;
   subtype_decl_nonterminal2($$.all).SUBTYPE_part :=    Parseable_Token_Ptr($1);
   subtype_decl_nonterminal2($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   subtype_decl_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($3);
   subtype_decl_nonterminal2($$.all).NOT_part :=    Parseable_Token_Ptr($4);
   subtype_decl_nonterminal2($$.all).NULL_part :=    Parseable_Token_Ptr($5);
   subtype_decl_nonterminal2($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($6);
   subtype_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($7);
   };

subtype_ind_nonterminal : 
   name_nonterminal constraint_nonterminal  {
   $$ := new subtype_ind_nonterminal1;
   subtype_ind_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   subtype_ind_nonterminal1($$.all).constraint_part :=    constraint_Nonterminal_Ptr($2);
   }|
   name_nonterminal  {
   $$ := new subtype_ind_nonterminal2;
   subtype_ind_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($1);
   };

constraint_nonterminal : 
   range_constraint_nonterminal  {
   $$ := new constraint_nonterminal1;
   constraint_nonterminal1($$.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr($1);
   }|
   decimal_digits_constraint_nonterminal  {
   $$ := new constraint_nonterminal2;
   constraint_nonterminal2($$.all).decimal_digits_constraint_part :=    decimal_digits_constraint_Nonterminal_Ptr($1);
   };

decimal_digits_constraint_nonterminal : 
   DIGITS_nonterminal simple_expression_nonterminal range_constr_opt_nonterminal  {
   $$ := new decimal_digits_constraint_nonterminal;
   decimal_digits_constraint_nonterminal($$.all).DIGITS_part :=    Parseable_Token_Ptr($1);
   decimal_digits_constraint_nonterminal($$.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr($2);
   decimal_digits_constraint_nonterminal($$.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr($3);
   };

opt_interface_list_nonterminal : 
   AND_nonterminal mark_nonterminal opt_interface_list_nonterminal  {
   $$ := new opt_interface_list_nonterminal1;
   opt_interface_list_nonterminal1($$.all).AND_part :=    Parseable_Token_Ptr($1);
   opt_interface_list_nonterminal1($$.all).mark_part :=    mark_Nonterminal_Ptr($2);
   opt_interface_list_nonterminal1($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($3);
   }|
    {
   $$ := new opt_interface_list_nonterminal2;
   };

derived_type_nonterminal : 
   NEW_nonterminal subtype_ind_nonterminal  {
   $$ := new derived_type_nonterminal1;
   derived_type_nonterminal1($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   }|
   NEW_nonterminal subtype_ind_nonterminal WITH_nonterminal PRIVATE_nonterminal  {
   $$ := new derived_type_nonterminal2;
   derived_type_nonterminal2($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal2($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   derived_type_nonterminal2($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   derived_type_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($4);
   }|
   NEW_nonterminal subtype_ind_nonterminal WITH_nonterminal record_def_nonterminal  {
   $$ := new derived_type_nonterminal3;
   derived_type_nonterminal3($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal3($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   derived_type_nonterminal3($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   derived_type_nonterminal3($$.all).record_def_part :=    record_def_Nonterminal_Ptr($4);
   }|
   abstract_nonterminal NEW_nonterminal subtype_ind_nonterminal opt_interface_list_nonterminal WITH_nonterminal PRIVATE_nonterminal  {
   $$ := new derived_type_nonterminal4;
   derived_type_nonterminal4($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal4($$.all).NEW_part :=    Parseable_Token_Ptr($2);
   derived_type_nonterminal4($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($3);
   derived_type_nonterminal4($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($4);
   derived_type_nonterminal4($$.all).WITH_part :=    Parseable_Token_Ptr($5);
   derived_type_nonterminal4($$.all).PRIVATE_part :=    Parseable_Token_Ptr($6);
   }|
   abstract_nonterminal NEW_nonterminal subtype_ind_nonterminal opt_interface_list_nonterminal WITH_nonterminal record_def_nonterminal  {
   $$ := new derived_type_nonterminal5;
   derived_type_nonterminal5($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal5($$.all).NEW_part :=    Parseable_Token_Ptr($2);
   derived_type_nonterminal5($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($3);
   derived_type_nonterminal5($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($4);
   derived_type_nonterminal5($$.all).WITH_part :=    Parseable_Token_Ptr($5);
   derived_type_nonterminal5($$.all).record_def_part :=    record_def_Nonterminal_Ptr($6);
   }|
   abstract_nonterminal LIMITED_nonterminal NEW_nonterminal subtype_ind_nonterminal opt_interface_list_nonterminal WITH_nonterminal PRIVATE_nonterminal  {
   $$ := new derived_type_nonterminal6;
   derived_type_nonterminal6($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal6($$.all).LIMITED_part :=    Parseable_Token_Ptr($2);
   derived_type_nonterminal6($$.all).NEW_part :=    Parseable_Token_Ptr($3);
   derived_type_nonterminal6($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($4);
   derived_type_nonterminal6($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($5);
   derived_type_nonterminal6($$.all).WITH_part :=    Parseable_Token_Ptr($6);
   derived_type_nonterminal6($$.all).PRIVATE_part :=    Parseable_Token_Ptr($7);
   }|
   abstract_nonterminal LIMITED_nonterminal NEW_nonterminal subtype_ind_nonterminal opt_interface_list_nonterminal WITH_nonterminal record_def_nonterminal  {
   $$ := new derived_type_nonterminal7;
   derived_type_nonterminal7($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   derived_type_nonterminal7($$.all).LIMITED_part :=    Parseable_Token_Ptr($2);
   derived_type_nonterminal7($$.all).NEW_part :=    Parseable_Token_Ptr($3);
   derived_type_nonterminal7($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($4);
   derived_type_nonterminal7($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($5);
   derived_type_nonterminal7($$.all).WITH_part :=    Parseable_Token_Ptr($6);
   derived_type_nonterminal7($$.all).record_def_part :=    record_def_Nonterminal_Ptr($7);
   };

range_constraint_nonterminal : 
   RANGE_nonterminal range_sym_nonterminal  {
   $$ := new range_constraint_nonterminal;
   range_constraint_nonterminal($$.all).RANGE_part :=    Parseable_Token_Ptr($1);
   range_constraint_nonterminal($$.all).range_sym_part :=    range_sym_Nonterminal_Ptr($2);
   };

range_sym_nonterminal : 
   simple_expression_nonterminal DOUBLE_DOT_nonterminal simple_expression_nonterminal  {
   $$ := new range_sym_nonterminal1;
   range_sym_nonterminal1($$.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr($1);
   range_sym_nonterminal1($$.all).DOUBLE_DOT_part :=    Parseable_Token_Ptr($2);
   range_sym_nonterminal1($$.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr($3);
   }|
   name_nonterminal TICK_nonterminal RANGE_nonterminal  {
   $$ := new range_sym_nonterminal2;
   range_sym_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($1);
   range_sym_nonterminal2($$.all).TICK_part :=    Parseable_Token_Ptr($2);
   range_sym_nonterminal2($$.all).RANGE_part :=    Parseable_Token_Ptr($3);
   }|
   name_nonterminal TICK_nonterminal RANGE_nonterminal L_PAREN_nonterminal expression_nonterminal R_PAREN_nonterminal  {
   $$ := new range_sym_nonterminal3;
   range_sym_nonterminal3($$.all).name_part :=    name_Nonterminal_Ptr($1);
   range_sym_nonterminal3($$.all).TICK_part :=    Parseable_Token_Ptr($2);
   range_sym_nonterminal3($$.all).RANGE_part :=    Parseable_Token_Ptr($3);
   range_sym_nonterminal3($$.all).L_PAREN_part :=    Parseable_Token_Ptr($4);
   range_sym_nonterminal3($$.all).expression_part :=    expression_Nonterminal_Ptr($5);
   range_sym_nonterminal3($$.all).R_PAREN_part :=    Parseable_Token_Ptr($6);
   };

enumeration_type_nonterminal : 
   L_PAREN_nonterminal enum_id_s_nonterminal R_PAREN_nonterminal  {
   $$ := new enumeration_type_nonterminal;
   enumeration_type_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   enumeration_type_nonterminal($$.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr($2);
   enumeration_type_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

enum_id_s_nonterminal : 
   enum_id_nonterminal  {
   $$ := new enum_id_s_nonterminal1;
   enum_id_s_nonterminal1($$.all).enum_id_part :=    enum_id_Nonterminal_Ptr($1);
   }|
   enum_id_s_nonterminal COMMA_nonterminal enum_id_nonterminal  {
   $$ := new enum_id_s_nonterminal2;
   enum_id_s_nonterminal2($$.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr($1);
   enum_id_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   enum_id_s_nonterminal2($$.all).enum_id_part :=    enum_id_Nonterminal_Ptr($3);
   };

enum_id_nonterminal : 
   identifier_nonterminal  {
   $$ := new enum_id_nonterminal1;
   enum_id_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($1);
   }|
   char_lit_nonterminal  {
   $$ := new enum_id_nonterminal2;
   enum_id_nonterminal2($$.all).char_lit_part :=    char_lit_Nonterminal_Ptr($1);
   };

interface_type_nonterminal : 
   INTERFACE_nonterminal opt_interface_list_nonterminal  {
   $$ := new interface_type_nonterminal1;
   interface_type_nonterminal1($$.all).INTERFACE_part :=    Parseable_Token_Ptr($1);
   interface_type_nonterminal1($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($2);
   }|
   LIMITED_nonterminal INTERFACE_nonterminal opt_interface_list_nonterminal  {
   $$ := new interface_type_nonterminal2;
   interface_type_nonterminal2($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   interface_type_nonterminal2($$.all).INTERFACE_part :=    Parseable_Token_Ptr($2);
   interface_type_nonterminal2($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($3);
   }|
   TASK_nonterminal INTERFACE_nonterminal opt_interface_list_nonterminal  {
   $$ := new interface_type_nonterminal3;
   interface_type_nonterminal3($$.all).TASK_part :=    Parseable_Token_Ptr($1);
   interface_type_nonterminal3($$.all).INTERFACE_part :=    Parseable_Token_Ptr($2);
   interface_type_nonterminal3($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($3);
   }|
   PROTECTED_nonterminal INTERFACE_nonterminal opt_interface_list_nonterminal  {
   $$ := new interface_type_nonterminal4;
   interface_type_nonterminal4($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   interface_type_nonterminal4($$.all).INTERFACE_part :=    Parseable_Token_Ptr($2);
   interface_type_nonterminal4($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($3);
   };

integer_type_nonterminal : 
   range_spec_nonterminal  {
   $$ := new integer_type_nonterminal1;
   integer_type_nonterminal1($$.all).range_spec_part :=    range_spec_Nonterminal_Ptr($1);
   }|
   MOD_nonterminal expression_nonterminal  {
   $$ := new integer_type_nonterminal2;
   integer_type_nonterminal2($$.all).MOD_part :=    Parseable_Token_Ptr($1);
   integer_type_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   };

range_spec_nonterminal : 
   range_constraint_nonterminal  {
   $$ := new range_spec_nonterminal;
   range_spec_nonterminal($$.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr($1);
   };

range_spec_opt_nonterminal : 
    {
   $$ := new range_spec_opt_nonterminal1;
   }|
   range_spec_nonterminal  {
   $$ := new range_spec_opt_nonterminal2;
   range_spec_opt_nonterminal2($$.all).range_spec_part :=    range_spec_Nonterminal_Ptr($1);
   };

real_type_nonterminal : 
   float_type_nonterminal  {
   $$ := new real_type_nonterminal1;
   real_type_nonterminal1($$.all).float_type_part :=    float_type_Nonterminal_Ptr($1);
   }|
   fixed_type_nonterminal  {
   $$ := new real_type_nonterminal2;
   real_type_nonterminal2($$.all).fixed_type_part :=    fixed_type_Nonterminal_Ptr($1);
   };

float_type_nonterminal : 
   DIGITS_nonterminal expression_nonterminal range_spec_opt_nonterminal  {
   $$ := new float_type_nonterminal;
   float_type_nonterminal($$.all).DIGITS_part :=    Parseable_Token_Ptr($1);
   float_type_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   float_type_nonterminal($$.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr($3);
   };

fixed_type_nonterminal : 
   DELTA_nonterminal expression_nonterminal range_spec_nonterminal  {
   $$ := new fixed_type_nonterminal1;
   fixed_type_nonterminal1($$.all).DELTA_part :=    Parseable_Token_Ptr($1);
   fixed_type_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   fixed_type_nonterminal1($$.all).range_spec_part :=    range_spec_Nonterminal_Ptr($3);
   }|
   DELTA_nonterminal expression_nonterminal DIGITS_nonterminal expression_nonterminal range_spec_opt_nonterminal  {
   $$ := new fixed_type_nonterminal2;
   fixed_type_nonterminal2($$.all).DELTA_part :=    Parseable_Token_Ptr($1);
   fixed_type_nonterminal2($$.all).expression_part1 :=    expression_Nonterminal_Ptr($2);
   fixed_type_nonterminal2($$.all).DIGITS_part :=    Parseable_Token_Ptr($3);
   fixed_type_nonterminal2($$.all).expression_part2 :=    expression_Nonterminal_Ptr($4);
   fixed_type_nonterminal2($$.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr($5);
   };

array_type_nonterminal : 
   unconstr_array_type_nonterminal  {
   $$ := new array_type_nonterminal1;
   array_type_nonterminal1($$.all).unconstr_array_type_part :=    unconstr_array_type_Nonterminal_Ptr($1);
   }|
   constr_array_type_nonterminal  {
   $$ := new array_type_nonterminal2;
   array_type_nonterminal2($$.all).constr_array_type_part :=    constr_array_type_Nonterminal_Ptr($1);
   };

unconstr_array_type_nonterminal : 
   ARRAY_nonterminal L_PAREN_nonterminal index_s_nonterminal R_PAREN_nonterminal OF_nonterminal component_subtype_def_nonterminal  {
   $$ := new unconstr_array_type_nonterminal;
   unconstr_array_type_nonterminal($$.all).ARRAY_part :=    Parseable_Token_Ptr($1);
   unconstr_array_type_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($2);
   unconstr_array_type_nonterminal($$.all).index_s_part :=    index_s_Nonterminal_Ptr($3);
   unconstr_array_type_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($4);
   unconstr_array_type_nonterminal($$.all).OF_part :=    Parseable_Token_Ptr($5);
   unconstr_array_type_nonterminal($$.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr($6);
   };

constr_array_type_nonterminal : 
   ARRAY_nonterminal iter_index_constraint_nonterminal OF_nonterminal component_subtype_def_nonterminal  {
   $$ := new constr_array_type_nonterminal;
   constr_array_type_nonterminal($$.all).ARRAY_part :=    Parseable_Token_Ptr($1);
   constr_array_type_nonterminal($$.all).iter_index_constraint_part :=    iter_index_constraint_Nonterminal_Ptr($2);
   constr_array_type_nonterminal($$.all).OF_part :=    Parseable_Token_Ptr($3);
   constr_array_type_nonterminal($$.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr($4);
   };

component_subtype_def_nonterminal : 
   subtype_ind_nonterminal  {
   $$ := new component_subtype_def_nonterminal1;
   component_subtype_def_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($1);
   }|
   aliased_nonterminal subtype_ind_nonterminal  {
   $$ := new component_subtype_def_nonterminal2;
   component_subtype_def_nonterminal2($$.all).aliased_part :=    Parseable_Token_Ptr($1);
   component_subtype_def_nonterminal2($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   }|
   access_type_nonterminal  {
   $$ := new component_subtype_def_nonterminal3;
   component_subtype_def_nonterminal3($$.all).access_type_part :=    access_type_Nonterminal_Ptr($1);
   }|
   aliased_nonterminal access_type_nonterminal  {
   $$ := new component_subtype_def_nonterminal4;
   component_subtype_def_nonterminal4($$.all).aliased_part :=    Parseable_Token_Ptr($1);
   component_subtype_def_nonterminal4($$.all).access_type_part :=    access_type_Nonterminal_Ptr($2);
   };

aliased_opt_nonterminal : 
    {
   $$ := new aliased_opt_nonterminal1;
   }|
   aliased_nonterminal  {
   $$ := new aliased_opt_nonterminal2;
   aliased_opt_nonterminal2($$.all).aliased_part :=    Parseable_Token_Ptr($1);
   };

index_s_nonterminal : 
   index_nonterminal  {
   $$ := new index_s_nonterminal1;
   index_s_nonterminal1($$.all).index_part :=    index_Nonterminal_Ptr($1);
   }|
   index_s_nonterminal COMMA_nonterminal index_nonterminal  {
   $$ := new index_s_nonterminal2;
   index_s_nonterminal2($$.all).index_s_part :=    index_s_Nonterminal_Ptr($1);
   index_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   index_s_nonterminal2($$.all).index_part :=    index_Nonterminal_Ptr($3);
   };

index_nonterminal : 
   name_nonterminal RANGE_nonterminal BOX_nonterminal  {
   $$ := new index_nonterminal;
   index_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   index_nonterminal($$.all).RANGE_part :=    Parseable_Token_Ptr($2);
   index_nonterminal($$.all).BOX_part :=    Parseable_Token_Ptr($3);
   };

iter_index_constraint_nonterminal : 
   L_PAREN_nonterminal iter_discrete_range_s_nonterminal R_PAREN_nonterminal  {
   $$ := new iter_index_constraint_nonterminal;
   iter_index_constraint_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   iter_index_constraint_nonterminal($$.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr($2);
   iter_index_constraint_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

iter_discrete_range_s_nonterminal : 
   discrete_range_nonterminal  {
   $$ := new iter_discrete_range_s_nonterminal1;
   iter_discrete_range_s_nonterminal1($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($1);
   }|
   iter_discrete_range_s_nonterminal COMMA_nonterminal discrete_range_nonterminal  {
   $$ := new iter_discrete_range_s_nonterminal2;
   iter_discrete_range_s_nonterminal2($$.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr($1);
   iter_discrete_range_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   iter_discrete_range_s_nonterminal2($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($3);
   };

discrete_range_nonterminal : 
   name_nonterminal range_constr_opt_nonterminal  {
   $$ := new discrete_range_nonterminal1;
   discrete_range_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   discrete_range_nonterminal1($$.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr($2);
   }|
   range_sym_nonterminal  {
   $$ := new discrete_range_nonterminal2;
   discrete_range_nonterminal2($$.all).range_sym_part :=    range_sym_Nonterminal_Ptr($1);
   };

range_constr_opt_nonterminal : 
    {
   $$ := new range_constr_opt_nonterminal1;
   }|
   range_constraint_nonterminal  {
   $$ := new range_constr_opt_nonterminal2;
   range_constr_opt_nonterminal2($$.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr($1);
   };

record_type_nonterminal : 
   TAGGED_nonterminal LIMITED_nonterminal record_def_nonterminal  {
   $$ := new record_type_nonterminal1;
   record_type_nonterminal1($$.all).TAGGED_part :=    Parseable_Token_Ptr($1);
   record_type_nonterminal1($$.all).LIMITED_part :=    Parseable_Token_Ptr($2);
   record_type_nonterminal1($$.all).record_def_part :=    record_def_Nonterminal_Ptr($3);
   }|
   TAGGED_nonterminal record_def_nonterminal  {
   $$ := new record_type_nonterminal2;
   record_type_nonterminal2($$.all).TAGGED_part :=    Parseable_Token_Ptr($1);
   record_type_nonterminal2($$.all).record_def_part :=    record_def_Nonterminal_Ptr($2);
   }|
   LIMITED_nonterminal record_def_nonterminal  {
   $$ := new record_type_nonterminal3;
   record_type_nonterminal3($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   record_type_nonterminal3($$.all).record_def_part :=    record_def_Nonterminal_Ptr($2);
   }|
   record_def_nonterminal  {
   $$ := new record_type_nonterminal4;
   record_type_nonterminal4($$.all).record_def_part :=    record_def_Nonterminal_Ptr($1);
   };

record_def_nonterminal : 
   RECORD_nonterminal pragma_s_nonterminal comp_list_nonterminal END_nonterminal RECORD_nonterminal  {
   $$ := new record_def_nonterminal1;
   record_def_nonterminal1($$.all).RECORD_part1 :=    Parseable_Token_Ptr($1);
   record_def_nonterminal1($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($2);
   record_def_nonterminal1($$.all).comp_list_part :=    comp_list_Nonterminal_Ptr($3);
   record_def_nonterminal1($$.all).END_part :=    Parseable_Token_Ptr($4);
   record_def_nonterminal1($$.all).RECORD_part2 :=    Parseable_Token_Ptr($5);
   }|
   NULL_nonterminal RECORD_nonterminal  {
   $$ := new record_def_nonterminal2;
   record_def_nonterminal2($$.all).NULL_part :=    Parseable_Token_Ptr($1);
   record_def_nonterminal2($$.all).RECORD_part :=    Parseable_Token_Ptr($2);
   };

tagged_opt_nonterminal : 
    {
   $$ := new tagged_opt_nonterminal1;
   }|
   TAGGED_nonterminal  {
   $$ := new tagged_opt_nonterminal2;
   tagged_opt_nonterminal2($$.all).TAGGED_part :=    Parseable_Token_Ptr($1);
   }|
   abstract_nonterminal TAGGED_nonterminal  {
   $$ := new tagged_opt_nonterminal3;
   tagged_opt_nonterminal3($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   tagged_opt_nonterminal3($$.all).TAGGED_part :=    Parseable_Token_Ptr($2);
   };

comp_list_nonterminal : 
   comp_decl_s_nonterminal variant_part_opt_nonterminal  {
   $$ := new comp_list_nonterminal1;
   comp_list_nonterminal1($$.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr($1);
   comp_list_nonterminal1($$.all).variant_part_opt_part :=    variant_part_opt_Nonterminal_Ptr($2);
   }|
   variant_part_nonterminal pragma_s_nonterminal  {
   $$ := new comp_list_nonterminal2;
   comp_list_nonterminal2($$.all).variant_part_part :=    variant_part_Nonterminal_Ptr($1);
   comp_list_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($2);
   }|
   NULL_nonterminal SEMICOLON_nonterminal pragma_s_nonterminal  {
   $$ := new comp_list_nonterminal3;
   comp_list_nonterminal3($$.all).NULL_part :=    Parseable_Token_Ptr($1);
   comp_list_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   comp_list_nonterminal3($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($3);
   };

comp_decl_s_nonterminal : 
   comp_decl_nonterminal  {
   $$ := new comp_decl_s_nonterminal1;
   comp_decl_s_nonterminal1($$.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr($1);
   }|
   comp_decl_s_nonterminal pragma_s_nonterminal comp_decl_nonterminal  {
   $$ := new comp_decl_s_nonterminal2;
   comp_decl_s_nonterminal2($$.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr($1);
   comp_decl_s_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($2);
   comp_decl_s_nonterminal2($$.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr($3);
   };

variant_part_opt_nonterminal : 
   pragma_s_nonterminal  {
   $$ := new variant_part_opt_nonterminal1;
   variant_part_opt_nonterminal1($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($1);
   }|
   pragma_s_nonterminal variant_part_nonterminal pragma_s_nonterminal  {
   $$ := new variant_part_opt_nonterminal2;
   variant_part_opt_nonterminal2($$.all).pragma_s_part1 :=    pragma_s_Nonterminal_Ptr($1);
   variant_part_opt_nonterminal2($$.all).variant_part_part :=    variant_part_Nonterminal_Ptr($2);
   variant_part_opt_nonterminal2($$.all).pragma_s_part2 :=    pragma_s_Nonterminal_Ptr($3);
   };

comp_decl_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal component_subtype_def_nonterminal init_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new comp_decl_nonterminal;
   comp_decl_nonterminal($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   comp_decl_nonterminal($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   comp_decl_nonterminal($$.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr($3);
   comp_decl_nonterminal($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($4);
   comp_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

discrim_part_nonterminal : 
   L_PAREN_nonterminal discrim_spec_s_nonterminal R_PAREN_nonterminal  {
   $$ := new discrim_part_nonterminal;
   discrim_part_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   discrim_part_nonterminal($$.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr($2);
   discrim_part_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

discrim_spec_s_nonterminal : 
   discrim_spec_nonterminal  {
   $$ := new discrim_spec_s_nonterminal1;
   discrim_spec_s_nonterminal1($$.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr($1);
   }|
   discrim_spec_s_nonterminal SEMICOLON_nonterminal discrim_spec_nonterminal  {
   $$ := new discrim_spec_s_nonterminal2;
   discrim_spec_s_nonterminal2($$.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr($1);
   discrim_spec_s_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   discrim_spec_s_nonterminal2($$.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr($3);
   };

discrim_spec_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal NOT_nonterminal NULL_nonterminal mark_nonterminal init_opt_nonterminal  {
   $$ := new discrim_spec_nonterminal1;
   discrim_spec_nonterminal1($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   discrim_spec_nonterminal1($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   discrim_spec_nonterminal1($$.all).NOT_part :=    Parseable_Token_Ptr($3);
   discrim_spec_nonterminal1($$.all).NULL_part :=    Parseable_Token_Ptr($4);
   discrim_spec_nonterminal1($$.all).mark_part :=    mark_Nonterminal_Ptr($5);
   discrim_spec_nonterminal1($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($6);
   }|
   def_id_s_nonterminal COLON_nonterminal mark_nonterminal init_opt_nonterminal  {
   $$ := new discrim_spec_nonterminal2;
   discrim_spec_nonterminal2($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   discrim_spec_nonterminal2($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   discrim_spec_nonterminal2($$.all).mark_part :=    mark_Nonterminal_Ptr($3);
   discrim_spec_nonterminal2($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($4);
   }|
   def_id_s_nonterminal COLON_nonterminal access_type_nonterminal init_opt_nonterminal  {
   $$ := new discrim_spec_nonterminal3;
   discrim_spec_nonterminal3($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   discrim_spec_nonterminal3($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   discrim_spec_nonterminal3($$.all).access_type_part :=    access_type_Nonterminal_Ptr($3);
   discrim_spec_nonterminal3($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($4);
   };

access_opt_nonterminal : 
    {
   $$ := new access_opt_nonterminal1;
   }|
   ACCESS_nonterminal  {
   $$ := new access_opt_nonterminal2;
   access_opt_nonterminal2($$.all).ACCESS_part :=    Parseable_Token_Ptr($1);
   };

variant_part_nonterminal : 
   CASE_nonterminal simple_name_nonterminal IS_nonterminal pragma_s_nonterminal variant_s_nonterminal END_nonterminal CASE_nonterminal SEMICOLON_nonterminal  {
   $$ := new variant_part_nonterminal;
   variant_part_nonterminal($$.all).CASE_part1 :=    Parseable_Token_Ptr($1);
   variant_part_nonterminal($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($2);
   variant_part_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($3);
   variant_part_nonterminal($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($4);
   variant_part_nonterminal($$.all).variant_s_part :=    variant_s_Nonterminal_Ptr($5);
   variant_part_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($6);
   variant_part_nonterminal($$.all).CASE_part2 :=    Parseable_Token_Ptr($7);
   variant_part_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   };

variant_s_nonterminal : 
   variant_nonterminal  {
   $$ := new variant_s_nonterminal1;
   variant_s_nonterminal1($$.all).variant_part :=    variant_Nonterminal_Ptr($1);
   }|
   variant_s_nonterminal variant_nonterminal  {
   $$ := new variant_s_nonterminal2;
   variant_s_nonterminal2($$.all).variant_s_part :=    variant_s_Nonterminal_Ptr($1);
   variant_s_nonterminal2($$.all).variant_part :=    variant_Nonterminal_Ptr($2);
   };

variant_nonterminal : 
   WHEN_nonterminal choice_s_nonterminal ARROW_nonterminal pragma_s_nonterminal comp_list_nonterminal  {
   $$ := new variant_nonterminal;
   variant_nonterminal($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   variant_nonterminal($$.all).choice_s_part :=    choice_s_Nonterminal_Ptr($2);
   variant_nonterminal($$.all).ARROW_part :=    Parseable_Token_Ptr($3);
   variant_nonterminal($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($4);
   variant_nonterminal($$.all).comp_list_part :=    comp_list_Nonterminal_Ptr($5);
   };

choice_s_nonterminal : 
   choice_nonterminal  {
   $$ := new choice_s_nonterminal1;
   choice_s_nonterminal1($$.all).choice_part :=    choice_Nonterminal_Ptr($1);
   }|
   choice_s_nonterminal PIPE_nonterminal choice_nonterminal  {
   $$ := new choice_s_nonterminal2;
   choice_s_nonterminal2($$.all).choice_s_part :=    choice_s_Nonterminal_Ptr($1);
   choice_s_nonterminal2($$.all).PIPE_part :=    Parseable_Token_Ptr($2);
   choice_s_nonterminal2($$.all).choice_part :=    choice_Nonterminal_Ptr($3);
   };

choice_nonterminal : 
   expression_nonterminal  {
   $$ := new choice_nonterminal1;
   choice_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($1);
   }|
   discrete_with_range_nonterminal  {
   $$ := new choice_nonterminal2;
   choice_nonterminal2($$.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr($1);
   }|
   OTHERS_nonterminal  {
   $$ := new choice_nonterminal3;
   choice_nonterminal3($$.all).OTHERS_part :=    Parseable_Token_Ptr($1);
   };

discrete_with_range_nonterminal : 
   name_nonterminal range_constraint_nonterminal  {
   $$ := new discrete_with_range_nonterminal1;
   discrete_with_range_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   discrete_with_range_nonterminal1($$.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr($2);
   }|
   range_sym_nonterminal  {
   $$ := new discrete_with_range_nonterminal2;
   discrete_with_range_nonterminal2($$.all).range_sym_part :=    range_sym_Nonterminal_Ptr($1);
   };

not_null_opt_nonterminal : 
   NOT_nonterminal NULL_nonterminal  {
   $$ := new not_null_opt_nonterminal1;
   not_null_opt_nonterminal1($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   not_null_opt_nonterminal1($$.all).NULL_part :=    Parseable_Token_Ptr($2);
   }|
    {
   $$ := new not_null_opt_nonterminal2;
   };

not_null_opt_access_nonterminal : 
   NOT_nonterminal NULL_nonterminal aCCESS_nonterminal  {
   $$ := new not_null_opt_access_nonterminal1;
   not_null_opt_access_nonterminal1($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   not_null_opt_access_nonterminal1($$.all).NULL_part :=    Parseable_Token_Ptr($2);
   not_null_opt_access_nonterminal1($$.all).aCCESS_part :=    Parseable_Token_Ptr($3);
   }|
   ACCESS_nonterminal  {
   $$ := new not_null_opt_access_nonterminal2;
   not_null_opt_access_nonterminal2($$.all).ACCESS_part :=    Parseable_Token_Ptr($1);
   };

access_type_nonterminal : 
   not_null_opt_access_nonterminal subtype_ind_nonterminal  {
   $$ := new access_type_nonterminal1;
   access_type_nonterminal1($$.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr($1);
   access_type_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   }|
   not_null_opt_access_nonterminal CONSTANT_nonterminal subtype_ind_nonterminal  {
   $$ := new access_type_nonterminal2;
   access_type_nonterminal2($$.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr($1);
   access_type_nonterminal2($$.all).CONSTANT_part :=    Parseable_Token_Ptr($2);
   access_type_nonterminal2($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($3);
   }|
   not_null_opt_access_nonterminal all_nonterminal subtype_ind_nonterminal  {
   $$ := new access_type_nonterminal3;
   access_type_nonterminal3($$.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr($1);
   access_type_nonterminal3($$.all).all_part :=    Parseable_Token_Ptr($2);
   access_type_nonterminal3($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($3);
   }|
   not_null_opt_access_nonterminal prot_opt_nonterminal PROCEDURE_nonterminal formal_part_opt_nonterminal  {
   $$ := new access_type_nonterminal4;
   access_type_nonterminal4($$.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr($1);
   access_type_nonterminal4($$.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr($2);
   access_type_nonterminal4($$.all).PROCEDURE_part :=    Parseable_Token_Ptr($3);
   access_type_nonterminal4($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   }|
   not_null_opt_access_nonterminal prot_opt_nonterminal FUNCTION_nonterminal formal_part_opt_nonterminal RETURN_nonterminal not_null_opt_nonterminal mark_nonterminal  {
   $$ := new access_type_nonterminal5;
   access_type_nonterminal5($$.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr($1);
   access_type_nonterminal5($$.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr($2);
   access_type_nonterminal5($$.all).FUNCTION_part :=    Parseable_Token_Ptr($3);
   access_type_nonterminal5($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   access_type_nonterminal5($$.all).RETURN_part :=    Parseable_Token_Ptr($5);
   access_type_nonterminal5($$.all).not_null_opt_part :=    not_null_opt_Nonterminal_Ptr($6);
   access_type_nonterminal5($$.all).mark_part :=    mark_Nonterminal_Ptr($7);
   };

prot_opt_nonterminal : 
    {
   $$ := new prot_opt_nonterminal1;
   }|
   PROTECTED_nonterminal  {
   $$ := new prot_opt_nonterminal2;
   prot_opt_nonterminal2($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   };

decl_part_nonterminal : 
    {
   $$ := new decl_part_nonterminal1;
   }|
   decl_item_or_body_s1_nonterminal  {
   $$ := new decl_part_nonterminal2;
   decl_part_nonterminal2($$.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr($1);
   };

decl_item_s_nonterminal : 
    {
   $$ := new decl_item_s_nonterminal1;
   }|
   decl_item_s1_nonterminal  {
   $$ := new decl_item_s_nonterminal2;
   decl_item_s_nonterminal2($$.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr($1);
   };

decl_item_s1_nonterminal : 
   decl_item_nonterminal  {
   $$ := new decl_item_s1_nonterminal1;
   decl_item_s1_nonterminal1($$.all).decl_item_part :=    decl_item_Nonterminal_Ptr($1);
   }|
   decl_item_s1_nonterminal decl_item_nonterminal  {
   $$ := new decl_item_s1_nonterminal2;
   decl_item_s1_nonterminal2($$.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr($1);
   decl_item_s1_nonterminal2($$.all).decl_item_part :=    decl_item_Nonterminal_Ptr($2);
   };

decl_item_nonterminal : 
   decl_nonterminal  {
   $$ := new decl_item_nonterminal1;
   decl_item_nonterminal1($$.all).decl_part :=    decl_Nonterminal_Ptr($1);
   }|
   use_clause_nonterminal  {
   $$ := new decl_item_nonterminal2;
   decl_item_nonterminal2($$.all).use_clause_part :=    use_clause_Nonterminal_Ptr($1);
   }|
   rep_spec_nonterminal  {
   $$ := new decl_item_nonterminal3;
   decl_item_nonterminal3($$.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr($1);
   }|
   pragma_sym_nonterminal  {
   $$ := new decl_item_nonterminal4;
   decl_item_nonterminal4($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($1);
   };

decl_item_or_body_s1_nonterminal : 
   decl_item_or_body_nonterminal  {
   $$ := new decl_item_or_body_s1_nonterminal1;
   decl_item_or_body_s1_nonterminal1($$.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr($1);
   }|
   decl_item_or_body_s1_nonterminal decl_item_or_body_nonterminal  {
   $$ := new decl_item_or_body_s1_nonterminal2;
   decl_item_or_body_s1_nonterminal2($$.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr($1);
   decl_item_or_body_s1_nonterminal2($$.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr($2);
   };

decl_item_or_body_nonterminal : 
   body_nt_nonterminal  {
   $$ := new decl_item_or_body_nonterminal1;
   decl_item_or_body_nonterminal1($$.all).body_nt_part :=    body_nt_Nonterminal_Ptr($1);
   }|
   decl_item_nonterminal  {
   $$ := new decl_item_or_body_nonterminal2;
   decl_item_or_body_nonterminal2($$.all).decl_item_part :=    decl_item_Nonterminal_Ptr($1);
   };

body_nt_nonterminal : 
   subprog_body_nonterminal  {
   $$ := new body_nt_nonterminal1;
   body_nt_nonterminal1($$.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr($1);
   }|
   pkg_body_nonterminal  {
   $$ := new body_nt_nonterminal2;
   body_nt_nonterminal2($$.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr($1);
   }|
   task_body_nonterminal  {
   $$ := new body_nt_nonterminal3;
   body_nt_nonterminal3($$.all).task_body_part :=    task_body_Nonterminal_Ptr($1);
   }|
   prot_body_nonterminal  {
   $$ := new body_nt_nonterminal4;
   body_nt_nonterminal4($$.all).prot_body_part :=    prot_body_Nonterminal_Ptr($1);
   };

name_nonterminal : 
   simple_name_nonterminal  {
   $$ := new name_nonterminal1;
   name_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($1);
   }|
   indexed_comp_nonterminal  {
   $$ := new name_nonterminal2;
   name_nonterminal2($$.all).indexed_comp_part :=    indexed_comp_Nonterminal_Ptr($1);
   }|
   selected_comp_nonterminal  {
   $$ := new name_nonterminal3;
   name_nonterminal3($$.all).selected_comp_part :=    selected_comp_Nonterminal_Ptr($1);
   }|
   attribute_nonterminal  {
   $$ := new name_nonterminal4;
   name_nonterminal4($$.all).attribute_part :=    attribute_Nonterminal_Ptr($1);
   }|
   operator_symbol_nonterminal  {
   $$ := new name_nonterminal5;
   name_nonterminal5($$.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr($1);
   };

mark_nonterminal : 
   simple_name_nonterminal  {
   $$ := new mark_nonterminal1;
   mark_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($1);
   }|
   mark_nonterminal TICK_nonterminal attribute_id_nonterminal  {
   $$ := new mark_nonterminal2;
   mark_nonterminal2($$.all).mark_part :=    mark_Nonterminal_Ptr($1);
   mark_nonterminal2($$.all).TICK_part :=    Parseable_Token_Ptr($2);
   mark_nonterminal2($$.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr($3);
   }|
   mark_nonterminal DOT_nonterminal simple_name_nonterminal  {
   $$ := new mark_nonterminal3;
   mark_nonterminal3($$.all).mark_part :=    mark_Nonterminal_Ptr($1);
   mark_nonterminal3($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   mark_nonterminal3($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   };

simple_name_nonterminal : 
   identifier_nonterminal  {
   $$ := new simple_name_nonterminal;
   simple_name_nonterminal($$.all).identifier_part :=    Parseable_Token_Ptr($1);
   };

compound_name_nonterminal : 
   simple_name_nonterminal  {
   $$ := new compound_name_nonterminal1;
   compound_name_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($1);
   }|
   compound_name_nonterminal DOT_nonterminal simple_name_nonterminal  {
   $$ := new compound_name_nonterminal2;
   compound_name_nonterminal2($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($1);
   compound_name_nonterminal2($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   compound_name_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   };

c_name_list_nonterminal : 
   compound_name_nonterminal  {
   $$ := new c_name_list_nonterminal1;
   c_name_list_nonterminal1($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($1);
   }|
   c_name_list_nonterminal COMMA_nonterminal compound_name_nonterminal  {
   $$ := new c_name_list_nonterminal2;
   c_name_list_nonterminal2($$.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr($1);
   c_name_list_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   c_name_list_nonterminal2($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($3);
   };

used_char_nonterminal : 
   char_lit_nonterminal  {
   $$ := new used_char_nonterminal;
   used_char_nonterminal($$.all).char_lit_part :=    char_lit_Nonterminal_Ptr($1);
   };

operator_symbol_nonterminal : 
   char_string_nonterminal  {
   $$ := new operator_symbol_nonterminal;
   operator_symbol_nonterminal($$.all).char_string_part :=    char_string_Nonterminal_Ptr($1);
   };

indexed_comp_nonterminal : 
   name_nonterminal L_PAREN_nonterminal value_s_nonterminal R_PAREN_nonterminal  {
   $$ := new indexed_comp_nonterminal;
   indexed_comp_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   indexed_comp_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($2);
   indexed_comp_nonterminal($$.all).value_s_part :=    value_s_Nonterminal_Ptr($3);
   indexed_comp_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($4);
   };

value_s_nonterminal : 
   value_nonterminal  {
   $$ := new value_s_nonterminal1;
   value_s_nonterminal1($$.all).value_part :=    value_Nonterminal_Ptr($1);
   }|
   value_s_nonterminal COMMA_nonterminal value_nonterminal  {
   $$ := new value_s_nonterminal2;
   value_s_nonterminal2($$.all).value_s_part :=    value_s_Nonterminal_Ptr($1);
   value_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   value_s_nonterminal2($$.all).value_part :=    value_Nonterminal_Ptr($3);
   };

value_nonterminal : 
   expression_nonterminal  {
   $$ := new value_nonterminal1;
   value_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($1);
   }|
   comp_assoc_nonterminal  {
   $$ := new value_nonterminal2;
   value_nonterminal2($$.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr($1);
   }|
   discrete_with_range_nonterminal  {
   $$ := new value_nonterminal3;
   value_nonterminal3($$.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr($1);
   };

selected_comp_nonterminal : 
   name_nonterminal DOT_nonterminal simple_name_nonterminal  {
   $$ := new selected_comp_nonterminal1;
   selected_comp_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   selected_comp_nonterminal1($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   selected_comp_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   }|
   name_nonterminal DOT_nonterminal used_char_nonterminal  {
   $$ := new selected_comp_nonterminal2;
   selected_comp_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($1);
   selected_comp_nonterminal2($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   selected_comp_nonterminal2($$.all).used_char_part :=    used_char_Nonterminal_Ptr($3);
   }|
   name_nonterminal DOT_nonterminal operator_symbol_nonterminal  {
   $$ := new selected_comp_nonterminal3;
   selected_comp_nonterminal3($$.all).name_part :=    name_Nonterminal_Ptr($1);
   selected_comp_nonterminal3($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   selected_comp_nonterminal3($$.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr($3);
   }|
   name_nonterminal DOT_nonterminal all_nonterminal  {
   $$ := new selected_comp_nonterminal4;
   selected_comp_nonterminal4($$.all).name_part :=    name_Nonterminal_Ptr($1);
   selected_comp_nonterminal4($$.all).DOT_part :=    Parseable_Token_Ptr($2);
   selected_comp_nonterminal4($$.all).all_part :=    Parseable_Token_Ptr($3);
   };

attribute_nonterminal : 
   name_nonterminal TICK_nonterminal attribute_id_nonterminal  {
   $$ := new attribute_nonterminal;
   attribute_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   attribute_nonterminal($$.all).TICK_part :=    Parseable_Token_Ptr($2);
   attribute_nonterminal($$.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr($3);
   };

attribute_id_nonterminal : 
   identifier_nonterminal  {
   $$ := new attribute_id_nonterminal1;
   attribute_id_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($1);
   }|
   DIGITS_nonterminal  {
   $$ := new attribute_id_nonterminal2;
   attribute_id_nonterminal2($$.all).DIGITS_part :=    Parseable_Token_Ptr($1);
   }|
   DELTA_nonterminal  {
   $$ := new attribute_id_nonterminal3;
   attribute_id_nonterminal3($$.all).DELTA_part :=    Parseable_Token_Ptr($1);
   }|
   ACCESS_nonterminal  {
   $$ := new attribute_id_nonterminal4;
   attribute_id_nonterminal4($$.all).ACCESS_part :=    Parseable_Token_Ptr($1);
   };

literal_nonterminal : 
   numeric_lit_nonterminal  {
   $$ := new literal_nonterminal1;
   literal_nonterminal1($$.all).numeric_lit_part :=    numeric_lit_Nonterminal_Ptr($1);
   }|
   used_char_nonterminal  {
   $$ := new literal_nonterminal2;
   literal_nonterminal2($$.all).used_char_part :=    used_char_Nonterminal_Ptr($1);
   }|
   NULL_nonterminal  {
   $$ := new literal_nonterminal3;
   literal_nonterminal3($$.all).NULL_part :=    Parseable_Token_Ptr($1);
   };

aggregate_nonterminal : 
   L_PAREN_nonterminal comp_assoc_nonterminal R_PAREN_nonterminal  {
   $$ := new aggregate_nonterminal1;
   aggregate_nonterminal1($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   aggregate_nonterminal1($$.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr($2);
   aggregate_nonterminal1($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   }|
   L_PAREN_nonterminal value_s_2_nonterminal R_PAREN_nonterminal  {
   $$ := new aggregate_nonterminal2;
   aggregate_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   aggregate_nonterminal2($$.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr($2);
   aggregate_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   }|
   L_PAREN_nonterminal expression_nonterminal WITH_nonterminal value_s_nonterminal R_PAREN_nonterminal  {
   $$ := new aggregate_nonterminal3;
   aggregate_nonterminal3($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   aggregate_nonterminal3($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   aggregate_nonterminal3($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   aggregate_nonterminal3($$.all).value_s_part :=    value_s_Nonterminal_Ptr($4);
   aggregate_nonterminal3($$.all).R_PAREN_part :=    Parseable_Token_Ptr($5);
   }|
   L_PAREN_nonterminal expression_nonterminal WITH_nonterminal NULL_nonterminal RECORD_nonterminal R_PAREN_nonterminal  {
   $$ := new aggregate_nonterminal4;
   aggregate_nonterminal4($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   aggregate_nonterminal4($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   aggregate_nonterminal4($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   aggregate_nonterminal4($$.all).NULL_part :=    Parseable_Token_Ptr($4);
   aggregate_nonterminal4($$.all).RECORD_part :=    Parseable_Token_Ptr($5);
   aggregate_nonterminal4($$.all).R_PAREN_part :=    Parseable_Token_Ptr($6);
   }|
   L_PAREN_nonterminal NULL_nonterminal RECORD_nonterminal R_PAREN_nonterminal  {
   $$ := new aggregate_nonterminal5;
   aggregate_nonterminal5($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   aggregate_nonterminal5($$.all).NULL_part :=    Parseable_Token_Ptr($2);
   aggregate_nonterminal5($$.all).RECORD_part :=    Parseable_Token_Ptr($3);
   aggregate_nonterminal5($$.all).R_PAREN_part :=    Parseable_Token_Ptr($4);
   };

value_s_2_nonterminal : 
   value_nonterminal COMMA_nonterminal value_nonterminal  {
   $$ := new value_s_2_nonterminal1;
   value_s_2_nonterminal1($$.all).value_part1 :=    value_Nonterminal_Ptr($1);
   value_s_2_nonterminal1($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   value_s_2_nonterminal1($$.all).value_part2 :=    value_Nonterminal_Ptr($3);
   }|
   value_s_2_nonterminal COMMA_nonterminal value_nonterminal  {
   $$ := new value_s_2_nonterminal2;
   value_s_2_nonterminal2($$.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr($1);
   value_s_2_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   value_s_2_nonterminal2($$.all).value_part :=    value_Nonterminal_Ptr($3);
   };

comp_assoc_nonterminal : 
   choice_s_nonterminal ARROW_nonterminal expression_nonterminal  {
   $$ := new comp_assoc_nonterminal1;
   comp_assoc_nonterminal1($$.all).choice_s_part :=    choice_s_Nonterminal_Ptr($1);
   comp_assoc_nonterminal1($$.all).ARROW_part :=    Parseable_Token_Ptr($2);
   comp_assoc_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   }|
   choice_s_nonterminal ARROW_nonterminal BOX_nonterminal  {
   $$ := new comp_assoc_nonterminal2;
   comp_assoc_nonterminal2($$.all).choice_s_part :=    choice_s_Nonterminal_Ptr($1);
   comp_assoc_nonterminal2($$.all).ARROW_part :=    Parseable_Token_Ptr($2);
   comp_assoc_nonterminal2($$.all).BOX_part :=    Parseable_Token_Ptr($3);
   };

expression_nonterminal : 
   relation_nonterminal  {
   $$ := new expression_nonterminal1;
   expression_nonterminal1($$.all).relation_part :=    relation_Nonterminal_Ptr($1);
   }|
   expression_nonterminal logical_nonterminal relation_nonterminal  {
   $$ := new expression_nonterminal2;
   expression_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($1);
   expression_nonterminal2($$.all).logical_part :=    logical_Nonterminal_Ptr($2);
   expression_nonterminal2($$.all).relation_part :=    relation_Nonterminal_Ptr($3);
   };

logical_nonterminal : 
   and_nonterminal  {
   $$ := new logical_nonterminal1;
   logical_nonterminal1($$.all).and_part :=    Parseable_Token_Ptr($1);
   }|
   OR_nonterminal  {
   $$ := new logical_nonterminal2;
   logical_nonterminal2($$.all).OR_part :=    Parseable_Token_Ptr($1);
   }|
   XOR_nonterminal  {
   $$ := new logical_nonterminal3;
   logical_nonterminal3($$.all).XOR_part :=    Parseable_Token_Ptr($1);
   }|
   and_nonterminal THEN_nonterminal  {
   $$ := new logical_nonterminal4;
   logical_nonterminal4($$.all).and_part :=    Parseable_Token_Ptr($1);
   logical_nonterminal4($$.all).THEN_part :=    Parseable_Token_Ptr($2);
   }|
   OR_nonterminal ELSE_nonterminal  {
   $$ := new logical_nonterminal5;
   logical_nonterminal5($$.all).OR_part :=    Parseable_Token_Ptr($1);
   logical_nonterminal5($$.all).ELSE_part :=    Parseable_Token_Ptr($2);
   };

relation_nonterminal : 
   simple_expression_nonterminal  {
   $$ := new relation_nonterminal1;
   relation_nonterminal1($$.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr($1);
   }|
   simple_expression_nonterminal relational_nonterminal simple_expression_nonterminal  {
   $$ := new relation_nonterminal2;
   relation_nonterminal2($$.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr($1);
   relation_nonterminal2($$.all).relational_part :=    relational_Nonterminal_Ptr($2);
   relation_nonterminal2($$.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr($3);
   }|
   simple_expression_nonterminal membership_nonterminal range_sym_nonterminal  {
   $$ := new relation_nonterminal3;
   relation_nonterminal3($$.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr($1);
   relation_nonterminal3($$.all).membership_part :=    membership_Nonterminal_Ptr($2);
   relation_nonterminal3($$.all).range_sym_part :=    range_sym_Nonterminal_Ptr($3);
   }|
   simple_expression_nonterminal membership_nonterminal name_nonterminal  {
   $$ := new relation_nonterminal4;
   relation_nonterminal4($$.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr($1);
   relation_nonterminal4($$.all).membership_part :=    membership_Nonterminal_Ptr($2);
   relation_nonterminal4($$.all).name_part :=    name_Nonterminal_Ptr($3);
   };

relational_nonterminal : 
   EQ_nonterminal  {
   $$ := new relational_nonterminal1;
   relational_nonterminal1($$.all).EQ_part :=    Parseable_Token_Ptr($1);
   }|
   NE_nonterminal  {
   $$ := new relational_nonterminal2;
   relational_nonterminal2($$.all).NE_part :=    NE_Nonterminal_Ptr($1);
   }|
   LT_nonterminal  {
   $$ := new relational_nonterminal3;
   relational_nonterminal3($$.all).LT_part :=    Parseable_Token_Ptr($1);
   }|
   LT_EQ_nonterminal  {
   $$ := new relational_nonterminal4;
   relational_nonterminal4($$.all).LT_EQ_part :=    LT_EQ_Nonterminal_Ptr($1);
   }|
   GT_nonterminal  {
   $$ := new relational_nonterminal5;
   relational_nonterminal5($$.all).GT_part :=    Parseable_Token_Ptr($1);
   }|
   GE_nonterminal  {
   $$ := new relational_nonterminal6;
   relational_nonterminal6($$.all).GE_part :=    GE_Nonterminal_Ptr($1);
   };

membership_nonterminal : 
   IN_nonterminal  {
   $$ := new membership_nonterminal1;
   membership_nonterminal1($$.all).IN_part :=    Parseable_Token_Ptr($1);
   }|
   NOT_nonterminal IN_nonterminal  {
   $$ := new membership_nonterminal2;
   membership_nonterminal2($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   membership_nonterminal2($$.all).IN_part :=    Parseable_Token_Ptr($2);
   };

simple_expression_nonterminal : 
   unary_nonterminal term_nonterminal  {
   $$ := new simple_expression_nonterminal1;
   simple_expression_nonterminal1($$.all).unary_part :=    unary_Nonterminal_Ptr($1);
   simple_expression_nonterminal1($$.all).term_part :=    term_Nonterminal_Ptr($2);
   }|
   term_nonterminal  {
   $$ := new simple_expression_nonterminal2;
   simple_expression_nonterminal2($$.all).term_part :=    term_Nonterminal_Ptr($1);
   }|
   simple_expression_nonterminal adding_nonterminal term_nonterminal  {
   $$ := new simple_expression_nonterminal3;
   simple_expression_nonterminal3($$.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr($1);
   simple_expression_nonterminal3($$.all).adding_part :=    adding_Nonterminal_Ptr($2);
   simple_expression_nonterminal3($$.all).term_part :=    term_Nonterminal_Ptr($3);
   };

unary_nonterminal : 
   PLUS_nonterminal  {
   $$ := new unary_nonterminal1;
   unary_nonterminal1($$.all).PLUS_part :=    Parseable_Token_Ptr($1);
   }|
   MINUS_nonterminal  {
   $$ := new unary_nonterminal2;
   unary_nonterminal2($$.all).MINUS_part :=    Parseable_Token_Ptr($1);
   };

adding_nonterminal : 
   PLUS_nonterminal  {
   $$ := new adding_nonterminal1;
   adding_nonterminal1($$.all).PLUS_part :=    Parseable_Token_Ptr($1);
   }|
   MINUS_nonterminal  {
   $$ := new adding_nonterminal2;
   adding_nonterminal2($$.all).MINUS_part :=    Parseable_Token_Ptr($1);
   }|
   BIT_AND_nonterminal  {
   $$ := new adding_nonterminal3;
   adding_nonterminal3($$.all).BIT_AND_part :=    Parseable_Token_Ptr($1);
   };

term_nonterminal : 
   factor_nonterminal  {
   $$ := new term_nonterminal1;
   term_nonterminal1($$.all).factor_part :=    factor_Nonterminal_Ptr($1);
   }|
   term_nonterminal multiplying_nonterminal factor_nonterminal  {
   $$ := new term_nonterminal2;
   term_nonterminal2($$.all).term_part :=    term_Nonterminal_Ptr($1);
   term_nonterminal2($$.all).multiplying_part :=    multiplying_Nonterminal_Ptr($2);
   term_nonterminal2($$.all).factor_part :=    factor_Nonterminal_Ptr($3);
   };

multiplying_nonterminal : 
   star_nonterminal  {
   $$ := new multiplying_nonterminal1;
   multiplying_nonterminal1($$.all).star_part :=    Parseable_Token_Ptr($1);
   }|
   SLASH_nonterminal  {
   $$ := new multiplying_nonterminal2;
   multiplying_nonterminal2($$.all).SLASH_part :=    Parseable_Token_Ptr($1);
   }|
   MOD_nonterminal  {
   $$ := new multiplying_nonterminal3;
   multiplying_nonterminal3($$.all).MOD_part :=    Parseable_Token_Ptr($1);
   }|
   REM_nonterminal  {
   $$ := new multiplying_nonterminal4;
   multiplying_nonterminal4($$.all).REM_part :=    Parseable_Token_Ptr($1);
   };

factor_nonterminal : 
   primary_nonterminal  {
   $$ := new factor_nonterminal1;
   factor_nonterminal1($$.all).primary_part :=    primary_Nonterminal_Ptr($1);
   }|
   NOT_nonterminal primary_nonterminal  {
   $$ := new factor_nonterminal2;
   factor_nonterminal2($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   factor_nonterminal2($$.all).primary_part :=    primary_Nonterminal_Ptr($2);
   }|
   abs_nonterminal primary_nonterminal  {
   $$ := new factor_nonterminal3;
   factor_nonterminal3($$.all).abs_part :=    Parseable_Token_Ptr($1);
   factor_nonterminal3($$.all).primary_part :=    primary_Nonterminal_Ptr($2);
   }|
   primary_nonterminal EXPONENT_nonterminal primary_nonterminal  {
   $$ := new factor_nonterminal4;
   factor_nonterminal4($$.all).primary_part1 :=    primary_Nonterminal_Ptr($1);
   factor_nonterminal4($$.all).EXPONENT_part :=    Parseable_Token_Ptr($2);
   factor_nonterminal4($$.all).primary_part2 :=    primary_Nonterminal_Ptr($3);
   };

primary_nonterminal : 
   literal_nonterminal  {
   $$ := new primary_nonterminal1;
   primary_nonterminal1($$.all).literal_part :=    literal_Nonterminal_Ptr($1);
   }|
   name_nonterminal  {
   $$ := new primary_nonterminal2;
   primary_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($1);
   }|
   allocator_nonterminal  {
   $$ := new primary_nonterminal3;
   primary_nonterminal3($$.all).allocator_part :=    allocator_Nonterminal_Ptr($1);
   }|
   qualified_nonterminal  {
   $$ := new primary_nonterminal4;
   primary_nonterminal4($$.all).qualified_part :=    qualified_Nonterminal_Ptr($1);
   }|
   parenthesized_primary_nonterminal  {
   $$ := new primary_nonterminal5;
   primary_nonterminal5($$.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr($1);
   };

parenthesized_primary_nonterminal : 
   aggregate_nonterminal  {
   $$ := new parenthesized_primary_nonterminal1;
   parenthesized_primary_nonterminal1($$.all).aggregate_part :=    aggregate_Nonterminal_Ptr($1);
   }|
   L_PAREN_nonterminal expression_nonterminal R_PAREN_nonterminal  {
   $$ := new parenthesized_primary_nonterminal2;
   parenthesized_primary_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   parenthesized_primary_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   parenthesized_primary_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

qualified_nonterminal : 
   name_nonterminal TICK_nonterminal parenthesized_primary_nonterminal  {
   $$ := new qualified_nonterminal;
   qualified_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   qualified_nonterminal($$.all).TICK_part :=    Parseable_Token_Ptr($2);
   qualified_nonterminal($$.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr($3);
   };

allocator_nonterminal : 
   NEW_nonterminal name_nonterminal  {
   $$ := new allocator_nonterminal1;
   allocator_nonterminal1($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   allocator_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($2);
   }|
   NEW_nonterminal qualified_nonterminal  {
   $$ := new allocator_nonterminal2;
   allocator_nonterminal2($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   allocator_nonterminal2($$.all).qualified_part :=    qualified_Nonterminal_Ptr($2);
   };

statement_s_nonterminal : 
   statement_nonterminal  {
   $$ := new statement_s_nonterminal1;
   statement_s_nonterminal1($$.all).statement_part :=    statement_Nonterminal_Ptr($1);
   }|
   statement_s_nonterminal statement_nonterminal  {
   $$ := new statement_s_nonterminal2;
   statement_s_nonterminal2($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($1);
   statement_s_nonterminal2($$.all).statement_part :=    statement_Nonterminal_Ptr($2);
   };

statement_nonterminal : 
   unlabeled_nonterminal  {
   $$ := new statement_nonterminal1;
   statement_nonterminal1($$.all).unlabeled_part :=    unlabeled_Nonterminal_Ptr($1);
   }|
   label_nonterminal statement_nonterminal  {
   $$ := new statement_nonterminal2;
   statement_nonterminal2($$.all).label_part :=    label_Nonterminal_Ptr($1);
   statement_nonterminal2($$.all).statement_part :=    statement_Nonterminal_Ptr($2);
   };

unlabeled_nonterminal : 
   simple_stmt_nonterminal  {
   $$ := new unlabeled_nonterminal1;
   unlabeled_nonterminal1($$.all).simple_stmt_part :=    simple_stmt_Nonterminal_Ptr($1);
   }|
   compound_stmt_nonterminal  {
   $$ := new unlabeled_nonterminal2;
   unlabeled_nonterminal2($$.all).compound_stmt_part :=    compound_stmt_Nonterminal_Ptr($1);
   }|
   pragma_sym_nonterminal  {
   $$ := new unlabeled_nonterminal3;
   unlabeled_nonterminal3($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($1);
   };

simple_stmt_nonterminal : 
   null_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal1;
   simple_stmt_nonterminal1($$.all).null_stmt_part :=    null_stmt_Nonterminal_Ptr($1);
   }|
   assign_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal2;
   simple_stmt_nonterminal2($$.all).assign_stmt_part :=    assign_stmt_Nonterminal_Ptr($1);
   }|
   exit_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal3;
   simple_stmt_nonterminal3($$.all).exit_stmt_part :=    exit_stmt_Nonterminal_Ptr($1);
   }|
   return_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal4;
   simple_stmt_nonterminal4($$.all).return_stmt_part :=    return_stmt_Nonterminal_Ptr($1);
   }|
   goto_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal5;
   simple_stmt_nonterminal5($$.all).goto_stmt_part :=    goto_stmt_Nonterminal_Ptr($1);
   }|
   procedure_call_nonterminal  {
   $$ := new simple_stmt_nonterminal6;
   simple_stmt_nonterminal6($$.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr($1);
   }|
   delay_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal7;
   simple_stmt_nonterminal7($$.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr($1);
   }|
   abort_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal8;
   simple_stmt_nonterminal8($$.all).abort_stmt_part :=    abort_stmt_Nonterminal_Ptr($1);
   }|
   raise_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal9;
   simple_stmt_nonterminal9($$.all).raise_stmt_part :=    raise_stmt_Nonterminal_Ptr($1);
   }|
   code_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal10;
   simple_stmt_nonterminal10($$.all).code_stmt_part :=    code_stmt_Nonterminal_Ptr($1);
   }|
   requeue_stmt_nonterminal  {
   $$ := new simple_stmt_nonterminal11;
   simple_stmt_nonterminal11($$.all).requeue_stmt_part :=    requeue_stmt_Nonterminal_Ptr($1);
   };

compound_stmt_nonterminal : 
   if_stmt_nonterminal  {
   $$ := new compound_stmt_nonterminal1;
   compound_stmt_nonterminal1($$.all).if_stmt_part :=    if_stmt_Nonterminal_Ptr($1);
   }|
   case_stmt_nonterminal  {
   $$ := new compound_stmt_nonterminal2;
   compound_stmt_nonterminal2($$.all).case_stmt_part :=    case_stmt_Nonterminal_Ptr($1);
   }|
   loop_stmt_nonterminal  {
   $$ := new compound_stmt_nonterminal3;
   compound_stmt_nonterminal3($$.all).loop_stmt_part :=    loop_stmt_Nonterminal_Ptr($1);
   }|
   block_nonterminal  {
   $$ := new compound_stmt_nonterminal4;
   compound_stmt_nonterminal4($$.all).block_part :=    block_Nonterminal_Ptr($1);
   }|
   accept_stmt_nonterminal  {
   $$ := new compound_stmt_nonterminal5;
   compound_stmt_nonterminal5($$.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr($1);
   }|
   select_stmt_nonterminal  {
   $$ := new compound_stmt_nonterminal6;
   compound_stmt_nonterminal6($$.all).select_stmt_part :=    select_stmt_Nonterminal_Ptr($1);
   };

label_nonterminal : 
   LT_LT_nonterminal identifier_nonterminal GT_GT_nonterminal  {
   $$ := new label_nonterminal;
   label_nonterminal($$.all).LT_LT_part :=    LT_LT_Nonterminal_Ptr($1);
   label_nonterminal($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   label_nonterminal($$.all).GT_GT_part :=    GT_GT_Nonterminal_Ptr($3);
   };

null_stmt_nonterminal : 
   NULL_nonterminal SEMICOLON_nonterminal  {
   $$ := new null_stmt_nonterminal;
   null_stmt_nonterminal($$.all).NULL_part :=    Parseable_Token_Ptr($1);
   null_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

assign_stmt_nonterminal : 
   name_nonterminal ASSIGNMENT_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new assign_stmt_nonterminal;
   assign_stmt_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   assign_stmt_nonterminal($$.all).ASSIGNMENT_part :=    Parseable_Token_Ptr($2);
   assign_stmt_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   assign_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

if_stmt_nonterminal : 
   IF_nonterminal cond_clause_s_nonterminal else_opt_nonterminal END_nonterminal IF_nonterminal SEMICOLON_nonterminal  {
   $$ := new if_stmt_nonterminal;
   if_stmt_nonterminal($$.all).IF_part1 :=    Parseable_Token_Ptr($1);
   if_stmt_nonterminal($$.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr($2);
   if_stmt_nonterminal($$.all).else_opt_part :=    else_opt_Nonterminal_Ptr($3);
   if_stmt_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($4);
   if_stmt_nonterminal($$.all).IF_part2 :=    Parseable_Token_Ptr($5);
   if_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

cond_clause_s_nonterminal : 
   cond_clause_nonterminal  {
   $$ := new cond_clause_s_nonterminal1;
   cond_clause_s_nonterminal1($$.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr($1);
   }|
   cond_clause_s_nonterminal ELSIF_nonterminal cond_clause_nonterminal  {
   $$ := new cond_clause_s_nonterminal2;
   cond_clause_s_nonterminal2($$.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr($1);
   cond_clause_s_nonterminal2($$.all).ELSIF_part :=    Parseable_Token_Ptr($2);
   cond_clause_s_nonterminal2($$.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr($3);
   };

cond_clause_nonterminal : 
   cond_part_nonterminal statement_s_nonterminal  {
   $$ := new cond_clause_nonterminal;
   cond_clause_nonterminal($$.all).cond_part_part :=    cond_part_Nonterminal_Ptr($1);
   cond_clause_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($2);
   };

cond_part_nonterminal : 
   condition_nonterminal THEN_nonterminal  {
   $$ := new cond_part_nonterminal;
   cond_part_nonterminal($$.all).condition_part :=    condition_Nonterminal_Ptr($1);
   cond_part_nonterminal($$.all).THEN_part :=    Parseable_Token_Ptr($2);
   };

condition_nonterminal : 
   expression_nonterminal  {
   $$ := new condition_nonterminal;
   condition_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($1);
   };

else_opt_nonterminal : 
    {
   $$ := new else_opt_nonterminal1;
   }|
   ELSE_nonterminal statement_s_nonterminal  {
   $$ := new else_opt_nonterminal2;
   else_opt_nonterminal2($$.all).ELSE_part :=    Parseable_Token_Ptr($1);
   else_opt_nonterminal2($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($2);
   };

case_stmt_nonterminal : 
   case_hdr_nonterminal pragma_s_nonterminal alternative_s_nonterminal END_nonterminal CASE_nonterminal SEMICOLON_nonterminal  {
   $$ := new case_stmt_nonterminal;
   case_stmt_nonterminal($$.all).case_hdr_part :=    case_hdr_Nonterminal_Ptr($1);
   case_stmt_nonterminal($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($2);
   case_stmt_nonterminal($$.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr($3);
   case_stmt_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($4);
   case_stmt_nonterminal($$.all).CASE_part :=    Parseable_Token_Ptr($5);
   case_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

case_hdr_nonterminal : 
   CASE_nonterminal expression_nonterminal IS_nonterminal  {
   $$ := new case_hdr_nonterminal;
   case_hdr_nonterminal($$.all).CASE_part :=    Parseable_Token_Ptr($1);
   case_hdr_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   case_hdr_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($3);
   };

alternative_s_nonterminal : 
    {
   $$ := new alternative_s_nonterminal1;
   }|
   alternative_s_nonterminal alternative_nonterminal  {
   $$ := new alternative_s_nonterminal2;
   alternative_s_nonterminal2($$.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr($1);
   alternative_s_nonterminal2($$.all).alternative_part :=    alternative_Nonterminal_Ptr($2);
   };

alternative_nonterminal : 
   WHEN_nonterminal choice_s_nonterminal ARROW_nonterminal statement_s_nonterminal  {
   $$ := new alternative_nonterminal;
   alternative_nonterminal($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   alternative_nonterminal($$.all).choice_s_part :=    choice_s_Nonterminal_Ptr($2);
   alternative_nonterminal($$.all).ARROW_part :=    Parseable_Token_Ptr($3);
   alternative_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($4);
   };

loop_stmt_nonterminal : 
   label_opt_nonterminal iteration_nonterminal basic_loop_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new loop_stmt_nonterminal;
   loop_stmt_nonterminal($$.all).label_opt_part :=    label_opt_Nonterminal_Ptr($1);
   loop_stmt_nonterminal($$.all).iteration_part :=    iteration_Nonterminal_Ptr($2);
   loop_stmt_nonterminal($$.all).basic_loop_part :=    basic_loop_Nonterminal_Ptr($3);
   loop_stmt_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($4);
   loop_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

label_opt_nonterminal : 
    {
   $$ := new label_opt_nonterminal1;
   }|
   identifier_nonterminal COLON_nonterminal  {
   $$ := new label_opt_nonterminal2;
   label_opt_nonterminal2($$.all).identifier_part :=    Parseable_Token_Ptr($1);
   label_opt_nonterminal2($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   };

iteration_nonterminal : 
    {
   $$ := new iteration_nonterminal1;
   }|
   WHILE_nonterminal condition_nonterminal  {
   $$ := new iteration_nonterminal2;
   iteration_nonterminal2($$.all).WHILE_part :=    Parseable_Token_Ptr($1);
   iteration_nonterminal2($$.all).condition_part :=    condition_Nonterminal_Ptr($2);
   }|
   iter_part_nonterminal reverse_opt_nonterminal discrete_range_nonterminal  {
   $$ := new iteration_nonterminal3;
   iteration_nonterminal3($$.all).iter_part_part :=    iter_part_Nonterminal_Ptr($1);
   iteration_nonterminal3($$.all).reverse_opt_part :=    reverse_opt_Nonterminal_Ptr($2);
   iteration_nonterminal3($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($3);
   };

iter_part_nonterminal : 
   FOR_nonterminal identifier_nonterminal IN_nonterminal  {
   $$ := new iter_part_nonterminal;
   iter_part_nonterminal($$.all).FOR_part :=    Parseable_Token_Ptr($1);
   iter_part_nonterminal($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   iter_part_nonterminal($$.all).IN_part :=    Parseable_Token_Ptr($3);
   };

reverse_opt_nonterminal : 
    {
   $$ := new reverse_opt_nonterminal1;
   }|
   REVERSE_nonterminal  {
   $$ := new reverse_opt_nonterminal2;
   reverse_opt_nonterminal2($$.all).REVERSE_part :=    Parseable_Token_Ptr($1);
   };

basic_loop_nonterminal : 
   LOOP_nonterminal statement_s_nonterminal END_nonterminal LOOP_nonterminal  {
   $$ := new basic_loop_nonterminal;
   basic_loop_nonterminal($$.all).LOOP_part1 :=    Parseable_Token_Ptr($1);
   basic_loop_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($2);
   basic_loop_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($3);
   basic_loop_nonterminal($$.all).LOOP_part2 :=    Parseable_Token_Ptr($4);
   };

id_opt_nonterminal : 
    {
   $$ := new id_opt_nonterminal1;
   }|
   designator_nonterminal  {
   $$ := new id_opt_nonterminal2;
   id_opt_nonterminal2($$.all).designator_part :=    designator_Nonterminal_Ptr($1);
   };

block_nonterminal : 
   label_opt_nonterminal block_decl_nonterminal block_body_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new block_nonterminal;
   block_nonterminal($$.all).label_opt_part :=    label_opt_Nonterminal_Ptr($1);
   block_nonterminal($$.all).block_decl_part :=    block_decl_Nonterminal_Ptr($2);
   block_nonterminal($$.all).block_body_part :=    block_body_Nonterminal_Ptr($3);
   block_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($4);
   block_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($5);
   block_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

block_decl_nonterminal : 
    {
   $$ := new block_decl_nonterminal1;
   }|
   DECLARE_nonterminal decl_part_nonterminal  {
   $$ := new block_decl_nonterminal2;
   block_decl_nonterminal2($$.all).DECLARE_part :=    Parseable_Token_Ptr($1);
   block_decl_nonterminal2($$.all).decl_part_part :=    decl_part_Nonterminal_Ptr($2);
   };

block_body_nonterminal : 
   BEGIN_nonterminal handled_stmt_s_nonterminal  {
   $$ := new block_body_nonterminal;
   block_body_nonterminal($$.all).BEGIN_part :=    Parseable_Token_Ptr($1);
   block_body_nonterminal($$.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr($2);
   };

handled_stmt_s_nonterminal : 
   statement_s_nonterminal except_handler_part_opt_nonterminal  {
   $$ := new handled_stmt_s_nonterminal;
   handled_stmt_s_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($1);
   handled_stmt_s_nonterminal($$.all).except_handler_part_opt_part :=    except_handler_part_opt_Nonterminal_Ptr($2);
   };

except_handler_part_opt_nonterminal : 
    {
   $$ := new except_handler_part_opt_nonterminal1;
   }|
   except_handler_part_nonterminal  {
   $$ := new except_handler_part_opt_nonterminal2;
   except_handler_part_opt_nonterminal2($$.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr($1);
   };

exit_stmt_nonterminal : 
   EXIT_nonterminal name_opt_nonterminal when_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new exit_stmt_nonterminal;
   exit_stmt_nonterminal($$.all).EXIT_part :=    Parseable_Token_Ptr($1);
   exit_stmt_nonterminal($$.all).name_opt_part :=    name_opt_Nonterminal_Ptr($2);
   exit_stmt_nonterminal($$.all).when_opt_part :=    when_opt_Nonterminal_Ptr($3);
   exit_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

name_opt_nonterminal : 
    {
   $$ := new name_opt_nonterminal1;
   }|
   name_nonterminal  {
   $$ := new name_opt_nonterminal2;
   name_opt_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($1);
   };

when_opt_nonterminal : 
    {
   $$ := new when_opt_nonterminal1;
   }|
   WHEN_nonterminal condition_nonterminal  {
   $$ := new when_opt_nonterminal2;
   when_opt_nonterminal2($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   when_opt_nonterminal2($$.all).condition_part :=    condition_Nonterminal_Ptr($2);
   };

opt_aliased_nonterminal : 
   ALIASED_nonterminal  {
   $$ := new opt_aliased_nonterminal1;
   opt_aliased_nonterminal1($$.all).ALIASED_part :=    Parseable_Token_Ptr($1);
   }|
    {
   $$ := new opt_aliased_nonterminal2;
   };

opt_assign_nonterminal : 
   ASSIGNMENT_nonterminal expression_nonterminal  {
   $$ := new opt_assign_nonterminal1;
   opt_assign_nonterminal1($$.all).ASSIGNMENT_part :=    Parseable_Token_Ptr($1);
   opt_assign_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   }|
    {
   $$ := new opt_assign_nonterminal2;
   };

return_subtype_nonterminal : 
   subtype_ind_nonterminal  {
   $$ := new return_subtype_nonterminal1;
   return_subtype_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($1);
   }|
   access_type_nonterminal  {
   $$ := new return_subtype_nonterminal2;
   return_subtype_nonterminal2($$.all).access_type_part :=    access_type_Nonterminal_Ptr($1);
   };

opt_do_block_nonterminal : 
   DO_nonterminal handled_stmt_s_nonterminal END_nonterminal RETURN_nonterminal  {
   $$ := new opt_do_block_nonterminal1;
   opt_do_block_nonterminal1($$.all).DO_part :=    Parseable_Token_Ptr($1);
   opt_do_block_nonterminal1($$.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr($2);
   opt_do_block_nonterminal1($$.all).END_part :=    Parseable_Token_Ptr($3);
   opt_do_block_nonterminal1($$.all).RETURN_part :=    Parseable_Token_Ptr($4);
   }|
    {
   $$ := new opt_do_block_nonterminal2;
   };

return_stmt_nonterminal : 
   RETURN_nonterminal SEMICOLON_nonterminal  {
   $$ := new return_stmt_nonterminal1;
   return_stmt_nonterminal1($$.all).RETURN_part :=    Parseable_Token_Ptr($1);
   return_stmt_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   RETURN_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new return_stmt_nonterminal2;
   return_stmt_nonterminal2($$.all).RETURN_part :=    Parseable_Token_Ptr($1);
   return_stmt_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   return_stmt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   RETURN_nonterminal name_nonterminal COLON_nonterminal opt_aliased_nonterminal return_subtype_nonterminal opt_assign_nonterminal opt_do_block_nonterminal SEMICOLON_nonterminal  {
   $$ := new return_stmt_nonterminal3;
   return_stmt_nonterminal3($$.all).RETURN_part :=    Parseable_Token_Ptr($1);
   return_stmt_nonterminal3($$.all).name_part :=    name_Nonterminal_Ptr($2);
   return_stmt_nonterminal3($$.all).COLON_part :=    Parseable_Token_Ptr($3);
   return_stmt_nonterminal3($$.all).opt_aliased_part :=    opt_aliased_Nonterminal_Ptr($4);
   return_stmt_nonterminal3($$.all).return_subtype_part :=    return_subtype_Nonterminal_Ptr($5);
   return_stmt_nonterminal3($$.all).opt_assign_part :=    opt_assign_Nonterminal_Ptr($6);
   return_stmt_nonterminal3($$.all).opt_do_block_part :=    opt_do_block_Nonterminal_Ptr($7);
   return_stmt_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   };

goto_stmt_nonterminal : 
   GOTO_nonterminal name_nonterminal SEMICOLON_nonterminal  {
   $$ := new goto_stmt_nonterminal;
   goto_stmt_nonterminal($$.all).GOTO_part :=    Parseable_Token_Ptr($1);
   goto_stmt_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($2);
   goto_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   };

subprog_decl_nonterminal : 
   subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal1;
   subprog_decl_nonterminal1($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   subprog_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   OVERRIDING_nonterminal subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal2;
   subprog_decl_nonterminal2($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal2($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($2);
   subprog_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   NOT_nonterminal OVERRIDING_nonterminal subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal3;
   subprog_decl_nonterminal3($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal3($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   subprog_decl_nonterminal3($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($3);
   subprog_decl_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   generic_subp_inst_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal4;
   subprog_decl_nonterminal4($$.all).generic_subp_inst_part :=    generic_subp_inst_Nonterminal_Ptr($1);
   subprog_decl_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   subprog_spec_is_push_nonterminal abstract_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal5;
   subprog_decl_nonterminal5($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($1);
   subprog_decl_nonterminal5($$.all).abstract_part :=    Parseable_Token_Ptr($2);
   subprog_decl_nonterminal5($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   subprog_spec_is_push_nonterminal NULL_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal6;
   subprog_decl_nonterminal6($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($1);
   subprog_decl_nonterminal6($$.all).NULL_part :=    Parseable_Token_Ptr($2);
   subprog_decl_nonterminal6($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   OVERRIDING_nonterminal subprog_spec_is_push_nonterminal abstract_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal7;
   subprog_decl_nonterminal7($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal7($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($2);
   subprog_decl_nonterminal7($$.all).abstract_part :=    Parseable_Token_Ptr($3);
   subprog_decl_nonterminal7($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   OVERRIDING_nonterminal subprog_spec_is_push_nonterminal NULL_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal8;
   subprog_decl_nonterminal8($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal8($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($2);
   subprog_decl_nonterminal8($$.all).NULL_part :=    Parseable_Token_Ptr($3);
   subprog_decl_nonterminal8($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   NOT_nonterminal OVERRIDING_nonterminal subprog_spec_is_push_nonterminal abstract_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal9;
   subprog_decl_nonterminal9($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal9($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   subprog_decl_nonterminal9($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($3);
   subprog_decl_nonterminal9($$.all).abstract_part :=    Parseable_Token_Ptr($4);
   subprog_decl_nonterminal9($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   NOT_nonterminal OVERRIDING_nonterminal subprog_spec_is_push_nonterminal NULL_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_decl_nonterminal10;
   subprog_decl_nonterminal10($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   subprog_decl_nonterminal10($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   subprog_decl_nonterminal10($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($3);
   subprog_decl_nonterminal10($$.all).NULL_part :=    Parseable_Token_Ptr($4);
   subprog_decl_nonterminal10($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

subprog_spec_nonterminal : 
   PROCEDURE_nonterminal compound_name_nonterminal formal_part_opt_nonterminal  {
   $$ := new subprog_spec_nonterminal1;
   subprog_spec_nonterminal1($$.all).PROCEDURE_part :=    Parseable_Token_Ptr($1);
   subprog_spec_nonterminal1($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($2);
   subprog_spec_nonterminal1($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   }|
   FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal name_nonterminal  {
   $$ := new subprog_spec_nonterminal2;
   subprog_spec_nonterminal2($$.all).FUNCTION_part :=    Parseable_Token_Ptr($1);
   subprog_spec_nonterminal2($$.all).designator_part :=    designator_Nonterminal_Ptr($2);
   subprog_spec_nonterminal2($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   subprog_spec_nonterminal2($$.all).RETURN_part :=    Parseable_Token_Ptr($4);
   subprog_spec_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($5);
   }|
   FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal NOT_nonterminal NULL_nonterminal name_nonterminal  {
   $$ := new subprog_spec_nonterminal3;
   subprog_spec_nonterminal3($$.all).FUNCTION_part :=    Parseable_Token_Ptr($1);
   subprog_spec_nonterminal3($$.all).designator_part :=    designator_Nonterminal_Ptr($2);
   subprog_spec_nonterminal3($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   subprog_spec_nonterminal3($$.all).RETURN_part :=    Parseable_Token_Ptr($4);
   subprog_spec_nonterminal3($$.all).NOT_part :=    Parseable_Token_Ptr($5);
   subprog_spec_nonterminal3($$.all).NULL_part :=    Parseable_Token_Ptr($6);
   subprog_spec_nonterminal3($$.all).name_part :=    name_Nonterminal_Ptr($7);
   }|
   FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal access_type_nonterminal  {
   $$ := new subprog_spec_nonterminal4;
   subprog_spec_nonterminal4($$.all).FUNCTION_part :=    Parseable_Token_Ptr($1);
   subprog_spec_nonterminal4($$.all).designator_part :=    designator_Nonterminal_Ptr($2);
   subprog_spec_nonterminal4($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   subprog_spec_nonterminal4($$.all).RETURN_part :=    Parseable_Token_Ptr($4);
   subprog_spec_nonterminal4($$.all).access_type_part :=    access_type_Nonterminal_Ptr($5);
   }|
   FUNCTION_nonterminal designator_nonterminal  {
   $$ := new subprog_spec_nonterminal5;
   subprog_spec_nonterminal5($$.all).FUNCTION_part :=    Parseable_Token_Ptr($1);
   subprog_spec_nonterminal5($$.all).designator_part :=    designator_Nonterminal_Ptr($2);
   };

designator_nonterminal : 
   compound_name_nonterminal  {
   $$ := new designator_nonterminal1;
   designator_nonterminal1($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($1);
   }|
   char_string_nonterminal  {
   $$ := new designator_nonterminal2;
   designator_nonterminal2($$.all).char_string_part :=    char_string_Nonterminal_Ptr($1);
   };

formal_part_opt_nonterminal : 
    {
   $$ := new formal_part_opt_nonterminal1;
   }|
   formal_part_nonterminal  {
   $$ := new formal_part_opt_nonterminal2;
   formal_part_opt_nonterminal2($$.all).formal_part_part :=    formal_part_Nonterminal_Ptr($1);
   };

formal_part_nonterminal : 
   L_PAREN_nonterminal param_s_nonterminal R_PAREN_nonterminal  {
   $$ := new formal_part_nonterminal;
   formal_part_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   formal_part_nonterminal($$.all).param_s_part :=    param_s_Nonterminal_Ptr($2);
   formal_part_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

param_s_nonterminal : 
   param_nonterminal  {
   $$ := new param_s_nonterminal1;
   param_s_nonterminal1($$.all).param_part :=    param_Nonterminal_Ptr($1);
   }|
   param_s_nonterminal SEMICOLON_nonterminal param_nonterminal  {
   $$ := new param_s_nonterminal2;
   param_s_nonterminal2($$.all).param_s_part :=    param_s_Nonterminal_Ptr($1);
   param_s_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   param_s_nonterminal2($$.all).param_part :=    param_Nonterminal_Ptr($3);
   };

param_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal mode_nonterminal mark_nonterminal init_opt_nonterminal  {
   $$ := new param_nonterminal1;
   param_nonterminal1($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   param_nonterminal1($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   param_nonterminal1($$.all).mode_part :=    mode_Nonterminal_Ptr($3);
   param_nonterminal1($$.all).mark_part :=    mark_Nonterminal_Ptr($4);
   param_nonterminal1($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($5);
   }|
   def_id_s_nonterminal COLON_nonterminal access_type_nonterminal init_opt_nonterminal  {
   $$ := new param_nonterminal2;
   param_nonterminal2($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   param_nonterminal2($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   param_nonterminal2($$.all).access_type_part :=    access_type_Nonterminal_Ptr($3);
   param_nonterminal2($$.all).init_opt_part :=    init_opt_Nonterminal_Ptr($4);
   };

mode_nonterminal : 
    {
   $$ := new mode_nonterminal1;
   }|
   IN_nonterminal  {
   $$ := new mode_nonterminal2;
   mode_nonterminal2($$.all).IN_part :=    Parseable_Token_Ptr($1);
   }|
   OUT_nonterminal  {
   $$ := new mode_nonterminal3;
   mode_nonterminal3($$.all).OUT_part :=    Parseable_Token_Ptr($1);
   }|
   IN_nonterminal OUT_nonterminal  {
   $$ := new mode_nonterminal4;
   mode_nonterminal4($$.all).IN_part :=    Parseable_Token_Ptr($1);
   mode_nonterminal4($$.all).OUT_part :=    Parseable_Token_Ptr($2);
   };

subprog_spec_is_push_nonterminal : 
   subprog_spec_nonterminal IS_nonterminal  {
   $$ := new subprog_spec_is_push_nonterminal;
   subprog_spec_is_push_nonterminal($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   subprog_spec_is_push_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($2);
   };

subprog_body_nonterminal : 
   subprog_spec_is_push_nonterminal decl_part_nonterminal block_body_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new subprog_body_nonterminal;
   subprog_body_nonterminal($$.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr($1);
   subprog_body_nonterminal($$.all).decl_part_part :=    decl_part_Nonterminal_Ptr($2);
   subprog_body_nonterminal($$.all).block_body_part :=    block_body_Nonterminal_Ptr($3);
   subprog_body_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($4);
   subprog_body_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($5);
   subprog_body_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

procedure_call_nonterminal : 
   name_nonterminal SEMICOLON_nonterminal  {
   $$ := new procedure_call_nonterminal;
   procedure_call_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($1);
   procedure_call_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

pkg_decl_nonterminal : 
   pkg_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new pkg_decl_nonterminal1;
   pkg_decl_nonterminal1($$.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr($1);
   pkg_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   generic_pkg_inst_nonterminal SEMICOLON_nonterminal  {
   $$ := new pkg_decl_nonterminal2;
   pkg_decl_nonterminal2($$.all).generic_pkg_inst_part :=    generic_pkg_inst_Nonterminal_Ptr($1);
   pkg_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

pkg_spec_nonterminal : 
   PACKAGE_nonterminal compound_name_nonterminal IS_nonterminal decl_item_s_nonterminal private_part_nonterminal END_nonterminal c_id_opt_nonterminal  {
   $$ := new pkg_spec_nonterminal;
   pkg_spec_nonterminal($$.all).PACKAGE_part :=    Parseable_Token_Ptr($1);
   pkg_spec_nonterminal($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($2);
   pkg_spec_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($3);
   pkg_spec_nonterminal($$.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr($4);
   pkg_spec_nonterminal($$.all).private_part_part :=    private_part_Nonterminal_Ptr($5);
   pkg_spec_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($6);
   pkg_spec_nonterminal($$.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr($7);
   };

private_part_nonterminal : 
    {
   $$ := new private_part_nonterminal1;
   }|
   PRIVATE_nonterminal decl_item_s_nonterminal  {
   $$ := new private_part_nonterminal2;
   private_part_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   private_part_nonterminal2($$.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr($2);
   };

c_id_opt_nonterminal : 
    {
   $$ := new c_id_opt_nonterminal1;
   }|
   compound_name_nonterminal  {
   $$ := new c_id_opt_nonterminal2;
   c_id_opt_nonterminal2($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($1);
   };

pkg_body_nonterminal : 
   PACKAGE_nonterminal BODY_nonterminal compound_name_nonterminal IS_nonterminal decl_part_nonterminal body_opt_nonterminal END_nonterminal c_id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new pkg_body_nonterminal;
   pkg_body_nonterminal($$.all).PACKAGE_part :=    Parseable_Token_Ptr($1);
   pkg_body_nonterminal($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   pkg_body_nonterminal($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($3);
   pkg_body_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($4);
   pkg_body_nonterminal($$.all).decl_part_part :=    decl_part_Nonterminal_Ptr($5);
   pkg_body_nonterminal($$.all).body_opt_part :=    body_opt_Nonterminal_Ptr($6);
   pkg_body_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($7);
   pkg_body_nonterminal($$.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr($8);
   pkg_body_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($9);
   };

body_opt_nonterminal : 
    {
   $$ := new body_opt_nonterminal1;
   }|
   block_body_nonterminal  {
   $$ := new body_opt_nonterminal2;
   body_opt_nonterminal2($$.all).block_body_part :=    block_body_Nonterminal_Ptr($1);
   };

private_type_nonterminal : 
   TAGGED_nonterminal LIMITED_nonterminal PRIVATE_nonterminal  {
   $$ := new private_type_nonterminal1;
   private_type_nonterminal1($$.all).TAGGED_part :=    Parseable_Token_Ptr($1);
   private_type_nonterminal1($$.all).LIMITED_part :=    Parseable_Token_Ptr($2);
   private_type_nonterminal1($$.all).PRIVATE_part :=    Parseable_Token_Ptr($3);
   }|
   TAGGED_nonterminal PRIVATE_nonterminal  {
   $$ := new private_type_nonterminal2;
   private_type_nonterminal2($$.all).TAGGED_part :=    Parseable_Token_Ptr($1);
   private_type_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($2);
   }|
   LIMITED_nonterminal PRIVATE_nonterminal  {
   $$ := new private_type_nonterminal3;
   private_type_nonterminal3($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   private_type_nonterminal3($$.all).PRIVATE_part :=    Parseable_Token_Ptr($2);
   }|
   PRIVATE_nonterminal  {
   $$ := new private_type_nonterminal4;
   private_type_nonterminal4($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   };

limited_opt_nonterminal : 
    {
   $$ := new limited_opt_nonterminal1;
   }|
   LIMITED_nonterminal  {
   $$ := new limited_opt_nonterminal2;
   limited_opt_nonterminal2($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   };

use_clause_nonterminal : 
   USE_nonterminal name_s_nonterminal SEMICOLON_nonterminal  {
   $$ := new use_clause_nonterminal1;
   use_clause_nonterminal1($$.all).USE_part :=    Parseable_Token_Ptr($1);
   use_clause_nonterminal1($$.all).name_s_part :=    name_s_Nonterminal_Ptr($2);
   use_clause_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   USE_nonterminal TYPE_nonterminal name_s_nonterminal SEMICOLON_nonterminal  {
   $$ := new use_clause_nonterminal2;
   use_clause_nonterminal2($$.all).USE_part :=    Parseable_Token_Ptr($1);
   use_clause_nonterminal2($$.all).TYPE_part :=    Parseable_Token_Ptr($2);
   use_clause_nonterminal2($$.all).name_s_part :=    name_s_Nonterminal_Ptr($3);
   use_clause_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

name_s_nonterminal : 
   name_nonterminal  {
   $$ := new name_s_nonterminal1;
   name_s_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   }|
   name_s_nonterminal COMMA_nonterminal name_nonterminal  {
   $$ := new name_s_nonterminal2;
   name_s_nonterminal2($$.all).name_s_part :=    name_s_Nonterminal_Ptr($1);
   name_s_nonterminal2($$.all).COMMA_part :=    Parseable_Token_Ptr($2);
   name_s_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($3);
   };

rename_decl_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal object_qualifier_opt_nonterminal subtype_ind_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_decl_nonterminal1;
   rename_decl_nonterminal1($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   rename_decl_nonterminal1($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   rename_decl_nonterminal1($$.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr($3);
   rename_decl_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($4);
   rename_decl_nonterminal1($$.all).renaming_part :=    renaming_Nonterminal_Ptr($5);
   rename_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   def_id_s_nonterminal COLON_nonterminal object_qualifier_opt_nonterminal access_type_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_decl_nonterminal2;
   rename_decl_nonterminal2($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   rename_decl_nonterminal2($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   rename_decl_nonterminal2($$.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr($3);
   rename_decl_nonterminal2($$.all).access_type_part :=    access_type_Nonterminal_Ptr($4);
   rename_decl_nonterminal2($$.all).renaming_part :=    renaming_Nonterminal_Ptr($5);
   rename_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   def_id_s_nonterminal COLON_nonterminal EXCEPTION_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_decl_nonterminal3;
   rename_decl_nonterminal3($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   rename_decl_nonterminal3($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   rename_decl_nonterminal3($$.all).EXCEPTION_part :=    Parseable_Token_Ptr($3);
   rename_decl_nonterminal3($$.all).renaming_part :=    renaming_Nonterminal_Ptr($4);
   rename_decl_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   rename_unit_nonterminal  {
   $$ := new rename_decl_nonterminal4;
   rename_decl_nonterminal4($$.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr($1);
   };

rename_unit_nonterminal : 
   PACKAGE_nonterminal compound_name_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_unit_nonterminal1;
   rename_unit_nonterminal1($$.all).PACKAGE_part :=    Parseable_Token_Ptr($1);
   rename_unit_nonterminal1($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($2);
   rename_unit_nonterminal1($$.all).renaming_part :=    renaming_Nonterminal_Ptr($3);
   rename_unit_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   subprog_spec_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_unit_nonterminal2;
   rename_unit_nonterminal2($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   rename_unit_nonterminal2($$.all).renaming_part :=    renaming_Nonterminal_Ptr($2);
   rename_unit_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   generic_formal_part_nonterminal PACKAGE_nonterminal compound_name_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_unit_nonterminal3;
   rename_unit_nonterminal3($$.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr($1);
   rename_unit_nonterminal3($$.all).PACKAGE_part :=    Parseable_Token_Ptr($2);
   rename_unit_nonterminal3($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($3);
   rename_unit_nonterminal3($$.all).renaming_part :=    renaming_Nonterminal_Ptr($4);
   rename_unit_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   generic_formal_part_nonterminal subprog_spec_nonterminal renaming_nonterminal SEMICOLON_nonterminal  {
   $$ := new rename_unit_nonterminal4;
   rename_unit_nonterminal4($$.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr($1);
   rename_unit_nonterminal4($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($2);
   rename_unit_nonterminal4($$.all).renaming_part :=    renaming_Nonterminal_Ptr($3);
   rename_unit_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

renaming_nonterminal : 
   RENAMES_nonterminal name_nonterminal  {
   $$ := new renaming_nonterminal;
   renaming_nonterminal($$.all).RENAMES_part :=    Parseable_Token_Ptr($1);
   renaming_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($2);
   };

task_decl_nonterminal : 
   task_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new task_decl_nonterminal;
   task_decl_nonterminal($$.all).task_spec_part :=    task_spec_Nonterminal_Ptr($1);
   task_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

task_spec_nonterminal : 
   TASK_nonterminal simple_name_nonterminal task_def_nonterminal  {
   $$ := new task_spec_nonterminal1;
   task_spec_nonterminal1($$.all).TASK_part :=    Parseable_Token_Ptr($1);
   task_spec_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($2);
   task_spec_nonterminal1($$.all).task_def_part :=    task_def_Nonterminal_Ptr($3);
   }|
   TASK_nonterminal TYPE_nonterminal simple_name_nonterminal discrim_part_opt_nonterminal task_def_nonterminal  {
   $$ := new task_spec_nonterminal2;
   task_spec_nonterminal2($$.all).TASK_part :=    Parseable_Token_Ptr($1);
   task_spec_nonterminal2($$.all).TYPE_part :=    Parseable_Token_Ptr($2);
   task_spec_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   task_spec_nonterminal2($$.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr($4);
   task_spec_nonterminal2($$.all).task_def_part :=    task_def_Nonterminal_Ptr($5);
   };

opt_task_interfaces_nonterminal : 
   NEW_nonterminal name_nonterminal opt_interface_list_nonterminal WITH_nonterminal  {
   $$ := new opt_task_interfaces_nonterminal1;
   opt_task_interfaces_nonterminal1($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   opt_task_interfaces_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($2);
   opt_task_interfaces_nonterminal1($$.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr($3);
   opt_task_interfaces_nonterminal1($$.all).WITH_part :=    Parseable_Token_Ptr($4);
   }|
    {
   $$ := new opt_task_interfaces_nonterminal2;
   };

task_def_nonterminal : 
    {
   $$ := new task_def_nonterminal1;
   }|
   IS_nonterminal opt_task_interfaces_nonterminal entry_decl_s_nonterminal rep_spec_s_nonterminal task_private_opt_nonterminal END_nonterminal id_opt_nonterminal  {
   $$ := new task_def_nonterminal2;
   task_def_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($1);
   task_def_nonterminal2($$.all).opt_task_interfaces_part :=    opt_task_interfaces_Nonterminal_Ptr($2);
   task_def_nonterminal2($$.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr($3);
   task_def_nonterminal2($$.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr($4);
   task_def_nonterminal2($$.all).task_private_opt_part :=    task_private_opt_Nonterminal_Ptr($5);
   task_def_nonterminal2($$.all).END_part :=    Parseable_Token_Ptr($6);
   task_def_nonterminal2($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($7);
   };

task_private_opt_nonterminal : 
    {
   $$ := new task_private_opt_nonterminal1;
   }|
   PRIVATE_nonterminal entry_decl_s_nonterminal rep_spec_s_nonterminal  {
   $$ := new task_private_opt_nonterminal2;
   task_private_opt_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   task_private_opt_nonterminal2($$.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr($2);
   task_private_opt_nonterminal2($$.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr($3);
   };

task_body_nonterminal : 
   TASK_nonterminal BODY_nonterminal simple_name_nonterminal IS_nonterminal decl_part_nonterminal block_body_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new task_body_nonterminal;
   task_body_nonterminal($$.all).TASK_part :=    Parseable_Token_Ptr($1);
   task_body_nonterminal($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   task_body_nonterminal($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   task_body_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($4);
   task_body_nonterminal($$.all).decl_part_part :=    decl_part_Nonterminal_Ptr($5);
   task_body_nonterminal($$.all).block_body_part :=    block_body_Nonterminal_Ptr($6);
   task_body_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($7);
   task_body_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($8);
   task_body_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($9);
   };

prot_decl_nonterminal : 
   prot_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new prot_decl_nonterminal;
   prot_decl_nonterminal($$.all).prot_spec_part :=    prot_spec_Nonterminal_Ptr($1);
   prot_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

prot_spec_nonterminal : 
   PROTECTED_nonterminal identifier_nonterminal prot_def_nonterminal  {
   $$ := new prot_spec_nonterminal1;
   prot_spec_nonterminal1($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   prot_spec_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   prot_spec_nonterminal1($$.all).prot_def_part :=    prot_def_Nonterminal_Ptr($3);
   }|
   PROTECTED_nonterminal TYPE_nonterminal simple_name_nonterminal discrim_part_opt_nonterminal prot_def_nonterminal  {
   $$ := new prot_spec_nonterminal2;
   prot_spec_nonterminal2($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   prot_spec_nonterminal2($$.all).TYPE_part :=    Parseable_Token_Ptr($2);
   prot_spec_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   prot_spec_nonterminal2($$.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr($4);
   prot_spec_nonterminal2($$.all).prot_def_part :=    prot_def_Nonterminal_Ptr($5);
   };

prot_def_nonterminal : 
   IS_nonterminal opt_task_interfaces_nonterminal prot_op_decl_s_nonterminal prot_private_opt_nonterminal END_nonterminal id_opt_nonterminal  {
   $$ := new prot_def_nonterminal;
   prot_def_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($1);
   prot_def_nonterminal($$.all).opt_task_interfaces_part :=    opt_task_interfaces_Nonterminal_Ptr($2);
   prot_def_nonterminal($$.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr($3);
   prot_def_nonterminal($$.all).prot_private_opt_part :=    prot_private_opt_Nonterminal_Ptr($4);
   prot_def_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($5);
   prot_def_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($6);
   };

prot_private_opt_nonterminal : 
    {
   $$ := new prot_private_opt_nonterminal1;
   }|
   PRIVATE_nonterminal prot_elem_decl_s_nonterminal  {
   $$ := new prot_private_opt_nonterminal2;
   prot_private_opt_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   prot_private_opt_nonterminal2($$.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr($2);
   };

prot_op_decl_s_nonterminal : 
    {
   $$ := new prot_op_decl_s_nonterminal1;
   }|
   prot_op_decl_s_nonterminal prot_op_decl_nonterminal  {
   $$ := new prot_op_decl_s_nonterminal2;
   prot_op_decl_s_nonterminal2($$.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr($1);
   prot_op_decl_s_nonterminal2($$.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr($2);
   };

prot_op_decl_nonterminal : 
   entry_decl_nonterminal  {
   $$ := new prot_op_decl_nonterminal1;
   prot_op_decl_nonterminal1($$.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr($1);
   }|
   subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new prot_op_decl_nonterminal2;
   prot_op_decl_nonterminal2($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   prot_op_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   rep_spec_nonterminal  {
   $$ := new prot_op_decl_nonterminal3;
   prot_op_decl_nonterminal3($$.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr($1);
   }|
   pragma_sym_nonterminal  {
   $$ := new prot_op_decl_nonterminal4;
   prot_op_decl_nonterminal4($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($1);
   };

prot_elem_decl_s_nonterminal : 
    {
   $$ := new prot_elem_decl_s_nonterminal1;
   }|
   prot_elem_decl_s_nonterminal prot_elem_decl_nonterminal  {
   $$ := new prot_elem_decl_s_nonterminal2;
   prot_elem_decl_s_nonterminal2($$.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr($1);
   prot_elem_decl_s_nonterminal2($$.all).prot_elem_decl_part :=    prot_elem_decl_Nonterminal_Ptr($2);
   };

prot_elem_decl_nonterminal : 
   prot_op_decl_nonterminal  {
   $$ := new prot_elem_decl_nonterminal1;
   prot_elem_decl_nonterminal1($$.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr($1);
   }|
   comp_decl_nonterminal  {
   $$ := new prot_elem_decl_nonterminal2;
   prot_elem_decl_nonterminal2($$.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr($1);
   };

prot_body_nonterminal : 
   PROTECTED_nonterminal BODY_nonterminal simple_name_nonterminal IS_nonterminal prot_op_body_s_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new prot_body_nonterminal;
   prot_body_nonterminal($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   prot_body_nonterminal($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   prot_body_nonterminal($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   prot_body_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($4);
   prot_body_nonterminal($$.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr($5);
   prot_body_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($6);
   prot_body_nonterminal($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($7);
   prot_body_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   };

prot_op_body_s_nonterminal : 
   pragma_s_nonterminal  {
   $$ := new prot_op_body_s_nonterminal1;
   prot_op_body_s_nonterminal1($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($1);
   }|
   prot_op_body_s_nonterminal prot_op_body_nonterminal pragma_s_nonterminal  {
   $$ := new prot_op_body_s_nonterminal2;
   prot_op_body_s_nonterminal2($$.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr($1);
   prot_op_body_s_nonterminal2($$.all).prot_op_body_part :=    prot_op_body_Nonterminal_Ptr($2);
   prot_op_body_s_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($3);
   };

prot_op_body_nonterminal : 
   entry_body_nonterminal  {
   $$ := new prot_op_body_nonterminal1;
   prot_op_body_nonterminal1($$.all).entry_body_part :=    entry_body_Nonterminal_Ptr($1);
   }|
   subprog_body_nonterminal  {
   $$ := new prot_op_body_nonterminal2;
   prot_op_body_nonterminal2($$.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr($1);
   }|
   subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new prot_op_body_nonterminal3;
   prot_op_body_nonterminal3($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   prot_op_body_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

entry_decl_s_nonterminal : 
   pragma_s_nonterminal  {
   $$ := new entry_decl_s_nonterminal1;
   entry_decl_s_nonterminal1($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($1);
   }|
   entry_decl_s_nonterminal entry_decl_nonterminal pragma_s_nonterminal  {
   $$ := new entry_decl_s_nonterminal2;
   entry_decl_s_nonterminal2($$.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr($1);
   entry_decl_s_nonterminal2($$.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr($2);
   entry_decl_s_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($3);
   };

entry_decl_nonterminal : 
   ENTRY_nonterminal identifier_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal1;
   entry_decl_nonterminal1($$.all).ENTRY_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal1($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   entry_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   ENTRY_nonterminal identifier_nonterminal L_PAREN_nonterminal discrete_range_nonterminal R_PAREN_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal2;
   entry_decl_nonterminal2($$.all).ENTRY_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal2($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($3);
   entry_decl_nonterminal2($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($4);
   entry_decl_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($5);
   entry_decl_nonterminal2($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($6);
   entry_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($7);
   }|
   OVERRIDING_nonterminal ENTRY_nonterminal identifier_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal3;
   entry_decl_nonterminal3($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal3($$.all).ENTRY_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal3($$.all).identifier_part :=    Parseable_Token_Ptr($3);
   entry_decl_nonterminal3($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   entry_decl_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   OVERRIDING_nonterminal ENTRY_nonterminal identifier_nonterminal L_PAREN_nonterminal discrete_range_nonterminal R_PAREN_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal4;
   entry_decl_nonterminal4($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal4($$.all).ENTRY_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal4($$.all).identifier_part :=    Parseable_Token_Ptr($3);
   entry_decl_nonterminal4($$.all).L_PAREN_part :=    Parseable_Token_Ptr($4);
   entry_decl_nonterminal4($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($5);
   entry_decl_nonterminal4($$.all).R_PAREN_part :=    Parseable_Token_Ptr($6);
   entry_decl_nonterminal4($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($7);
   entry_decl_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   }|
   NOT_nonterminal OVERRIDING_nonterminal ENTRY_nonterminal identifier_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal5;
   entry_decl_nonterminal5($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal5($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal5($$.all).ENTRY_part :=    Parseable_Token_Ptr($3);
   entry_decl_nonterminal5($$.all).identifier_part :=    Parseable_Token_Ptr($4);
   entry_decl_nonterminal5($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($5);
   entry_decl_nonterminal5($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   NOT_nonterminal OVERRIDING_nonterminal ENTRY_nonterminal identifier_nonterminal L_PAREN_nonterminal discrete_range_nonterminal R_PAREN_nonterminal formal_part_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_decl_nonterminal6;
   entry_decl_nonterminal6($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   entry_decl_nonterminal6($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   entry_decl_nonterminal6($$.all).ENTRY_part :=    Parseable_Token_Ptr($3);
   entry_decl_nonterminal6($$.all).identifier_part :=    Parseable_Token_Ptr($4);
   entry_decl_nonterminal6($$.all).L_PAREN_part :=    Parseable_Token_Ptr($5);
   entry_decl_nonterminal6($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($6);
   entry_decl_nonterminal6($$.all).R_PAREN_part :=    Parseable_Token_Ptr($7);
   entry_decl_nonterminal6($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($8);
   entry_decl_nonterminal6($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($9);
   };

entry_body_nonterminal : 
   ENTRY_nonterminal identifier_nonterminal formal_part_opt_nonterminal WHEN_nonterminal condition_nonterminal entry_body_part_nonterminal  {
   $$ := new entry_body_nonterminal1;
   entry_body_nonterminal1($$.all).ENTRY_part :=    Parseable_Token_Ptr($1);
   entry_body_nonterminal1($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   entry_body_nonterminal1($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   entry_body_nonterminal1($$.all).WHEN_part :=    Parseable_Token_Ptr($4);
   entry_body_nonterminal1($$.all).condition_part :=    condition_Nonterminal_Ptr($5);
   entry_body_nonterminal1($$.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr($6);
   }|
   ENTRY_nonterminal identifier_nonterminal L_PAREN_nonterminal iter_part_nonterminal discrete_range_nonterminal R_PAREN_nonterminal formal_part_opt_nonterminal WHEN_nonterminal condition_nonterminal entry_body_part_nonterminal  {
   $$ := new entry_body_nonterminal2;
   entry_body_nonterminal2($$.all).ENTRY_part :=    Parseable_Token_Ptr($1);
   entry_body_nonterminal2($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   entry_body_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($3);
   entry_body_nonterminal2($$.all).iter_part_part :=    iter_part_Nonterminal_Ptr($4);
   entry_body_nonterminal2($$.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr($5);
   entry_body_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($6);
   entry_body_nonterminal2($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($7);
   entry_body_nonterminal2($$.all).WHEN_part :=    Parseable_Token_Ptr($8);
   entry_body_nonterminal2($$.all).condition_part :=    condition_Nonterminal_Ptr($9);
   entry_body_nonterminal2($$.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr($10);
   };

entry_body_part_nonterminal : 
   SEMICOLON_nonterminal  {
   $$ := new entry_body_part_nonterminal1;
   entry_body_part_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($1);
   }|
   IS_nonterminal decl_part_nonterminal block_body_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new entry_body_part_nonterminal2;
   entry_body_part_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($1);
   entry_body_part_nonterminal2($$.all).decl_part_part :=    decl_part_Nonterminal_Ptr($2);
   entry_body_part_nonterminal2($$.all).block_body_part :=    block_body_Nonterminal_Ptr($3);
   entry_body_part_nonterminal2($$.all).END_part :=    Parseable_Token_Ptr($4);
   entry_body_part_nonterminal2($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($5);
   entry_body_part_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

rep_spec_s_nonterminal : 
    {
   $$ := new rep_spec_s_nonterminal1;
   }|
   rep_spec_s_nonterminal rep_spec_nonterminal pragma_s_nonterminal  {
   $$ := new rep_spec_s_nonterminal2;
   rep_spec_s_nonterminal2($$.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr($1);
   rep_spec_s_nonterminal2($$.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr($2);
   rep_spec_s_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($3);
   };

entry_call_nonterminal : 
   procedure_call_nonterminal  {
   $$ := new entry_call_nonterminal;
   entry_call_nonterminal($$.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr($1);
   };

accept_stmt_nonterminal : 
   accept_hdr_nonterminal SEMICOLON_nonterminal  {
   $$ := new accept_stmt_nonterminal1;
   accept_stmt_nonterminal1($$.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr($1);
   accept_stmt_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   accept_hdr_nonterminal DO_nonterminal handled_stmt_s_nonterminal END_nonterminal id_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new accept_stmt_nonterminal2;
   accept_stmt_nonterminal2($$.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr($1);
   accept_stmt_nonterminal2($$.all).DO_part :=    Parseable_Token_Ptr($2);
   accept_stmt_nonterminal2($$.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr($3);
   accept_stmt_nonterminal2($$.all).END_part :=    Parseable_Token_Ptr($4);
   accept_stmt_nonterminal2($$.all).id_opt_part :=    id_opt_Nonterminal_Ptr($5);
   accept_stmt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

accept_hdr_nonterminal : 
   accept_nonterminal entry_name_nonterminal formal_part_opt_nonterminal  {
   $$ := new accept_hdr_nonterminal;
   accept_hdr_nonterminal($$.all).accept_part :=    Parseable_Token_Ptr($1);
   accept_hdr_nonterminal($$.all).entry_name_part :=    entry_name_Nonterminal_Ptr($2);
   accept_hdr_nonterminal($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($3);
   };

entry_name_nonterminal : 
   simple_name_nonterminal  {
   $$ := new entry_name_nonterminal1;
   entry_name_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($1);
   }|
   entry_name_nonterminal L_PAREN_nonterminal expression_nonterminal R_PAREN_nonterminal  {
   $$ := new entry_name_nonterminal2;
   entry_name_nonterminal2($$.all).entry_name_part :=    entry_name_Nonterminal_Ptr($1);
   entry_name_nonterminal2($$.all).L_PAREN_part :=    Parseable_Token_Ptr($2);
   entry_name_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   entry_name_nonterminal2($$.all).R_PAREN_part :=    Parseable_Token_Ptr($4);
   };

delay_stmt_nonterminal : 
   DELAY_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new delay_stmt_nonterminal1;
   delay_stmt_nonterminal1($$.all).DELAY_part :=    Parseable_Token_Ptr($1);
   delay_stmt_nonterminal1($$.all).expression_part :=    expression_Nonterminal_Ptr($2);
   delay_stmt_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   DELAY_nonterminal UNTIL_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new delay_stmt_nonterminal2;
   delay_stmt_nonterminal2($$.all).DELAY_part :=    Parseable_Token_Ptr($1);
   delay_stmt_nonterminal2($$.all).UNTIL_part :=    Parseable_Token_Ptr($2);
   delay_stmt_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   delay_stmt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

select_stmt_nonterminal : 
   select_wait_nonterminal  {
   $$ := new select_stmt_nonterminal1;
   select_stmt_nonterminal1($$.all).select_wait_part :=    select_wait_Nonterminal_Ptr($1);
   }|
   async_select_nonterminal  {
   $$ := new select_stmt_nonterminal2;
   select_stmt_nonterminal2($$.all).async_select_part :=    async_select_Nonterminal_Ptr($1);
   }|
   timed_entry_call_nonterminal  {
   $$ := new select_stmt_nonterminal3;
   select_stmt_nonterminal3($$.all).timed_entry_call_part :=    timed_entry_call_Nonterminal_Ptr($1);
   }|
   cond_entry_call_nonterminal  {
   $$ := new select_stmt_nonterminal4;
   select_stmt_nonterminal4($$.all).cond_entry_call_part :=    cond_entry_call_Nonterminal_Ptr($1);
   };

select_wait_nonterminal : 
   SELECT_nonterminal guarded_select_alt_nonterminal or_select_nonterminal else_opt_nonterminal END_nonterminal SELECT_nonterminal SEMICOLON_nonterminal  {
   $$ := new select_wait_nonterminal;
   select_wait_nonterminal($$.all).SELECT_part1 :=    Parseable_Token_Ptr($1);
   select_wait_nonterminal($$.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr($2);
   select_wait_nonterminal($$.all).or_select_part :=    or_select_Nonterminal_Ptr($3);
   select_wait_nonterminal($$.all).else_opt_part :=    else_opt_Nonterminal_Ptr($4);
   select_wait_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($5);
   select_wait_nonterminal($$.all).SELECT_part2 :=    Parseable_Token_Ptr($6);
   select_wait_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($7);
   };

guarded_select_alt_nonterminal : 
   select_alt_nonterminal  {
   $$ := new guarded_select_alt_nonterminal1;
   guarded_select_alt_nonterminal1($$.all).select_alt_part :=    select_alt_Nonterminal_Ptr($1);
   }|
   WHEN_nonterminal condition_nonterminal ARROW_nonterminal select_alt_nonterminal  {
   $$ := new guarded_select_alt_nonterminal2;
   guarded_select_alt_nonterminal2($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   guarded_select_alt_nonterminal2($$.all).condition_part :=    condition_Nonterminal_Ptr($2);
   guarded_select_alt_nonterminal2($$.all).ARROW_part :=    Parseable_Token_Ptr($3);
   guarded_select_alt_nonterminal2($$.all).select_alt_part :=    select_alt_Nonterminal_Ptr($4);
   };

or_select_nonterminal : 
    {
   $$ := new or_select_nonterminal1;
   }|
   or_select_nonterminal OR_nonterminal guarded_select_alt_nonterminal  {
   $$ := new or_select_nonterminal2;
   or_select_nonterminal2($$.all).or_select_part :=    or_select_Nonterminal_Ptr($1);
   or_select_nonterminal2($$.all).OR_part :=    Parseable_Token_Ptr($2);
   or_select_nonterminal2($$.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr($3);
   };

select_alt_nonterminal : 
   accept_stmt_nonterminal stmts_opt_nonterminal  {
   $$ := new select_alt_nonterminal1;
   select_alt_nonterminal1($$.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr($1);
   select_alt_nonterminal1($$.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr($2);
   }|
   delay_stmt_nonterminal stmts_opt_nonterminal  {
   $$ := new select_alt_nonterminal2;
   select_alt_nonterminal2($$.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr($1);
   select_alt_nonterminal2($$.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr($2);
   }|
   TERMINATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new select_alt_nonterminal3;
   select_alt_nonterminal3($$.all).TERMINATE_part :=    Parseable_Token_Ptr($1);
   select_alt_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

delay_or_entry_alt_nonterminal : 
   delay_stmt_nonterminal stmts_opt_nonterminal  {
   $$ := new delay_or_entry_alt_nonterminal1;
   delay_or_entry_alt_nonterminal1($$.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr($1);
   delay_or_entry_alt_nonterminal1($$.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr($2);
   }|
   entry_call_nonterminal stmts_opt_nonterminal  {
   $$ := new delay_or_entry_alt_nonterminal2;
   delay_or_entry_alt_nonterminal2($$.all).entry_call_part :=    entry_call_Nonterminal_Ptr($1);
   delay_or_entry_alt_nonterminal2($$.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr($2);
   };

async_select_nonterminal : 
   SELECT_nonterminal delay_or_entry_alt_nonterminal THEN_nonterminal abort_nonterminal statement_s_nonterminal END_nonterminal SELECT_nonterminal SEMICOLON_nonterminal  {
   $$ := new async_select_nonterminal;
   async_select_nonterminal($$.all).SELECT_part1 :=    Parseable_Token_Ptr($1);
   async_select_nonterminal($$.all).delay_or_entry_alt_part :=    delay_or_entry_alt_Nonterminal_Ptr($2);
   async_select_nonterminal($$.all).THEN_part :=    Parseable_Token_Ptr($3);
   async_select_nonterminal($$.all).abort_part :=    Parseable_Token_Ptr($4);
   async_select_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($5);
   async_select_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($6);
   async_select_nonterminal($$.all).SELECT_part2 :=    Parseable_Token_Ptr($7);
   async_select_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   };

timed_entry_call_nonterminal : 
   SELECT_nonterminal entry_call_nonterminal stmts_opt_nonterminal OR_nonterminal delay_stmt_nonterminal stmts_opt_nonterminal END_nonterminal SELECT_nonterminal SEMICOLON_nonterminal  {
   $$ := new timed_entry_call_nonterminal;
   timed_entry_call_nonterminal($$.all).SELECT_part1 :=    Parseable_Token_Ptr($1);
   timed_entry_call_nonterminal($$.all).entry_call_part :=    entry_call_Nonterminal_Ptr($2);
   timed_entry_call_nonterminal($$.all).stmts_opt_part1 :=    stmts_opt_Nonterminal_Ptr($3);
   timed_entry_call_nonterminal($$.all).OR_part :=    Parseable_Token_Ptr($4);
   timed_entry_call_nonterminal($$.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr($5);
   timed_entry_call_nonterminal($$.all).stmts_opt_part2 :=    stmts_opt_Nonterminal_Ptr($6);
   timed_entry_call_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($7);
   timed_entry_call_nonterminal($$.all).SELECT_part2 :=    Parseable_Token_Ptr($8);
   timed_entry_call_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($9);
   };

cond_entry_call_nonterminal : 
   SELECT_nonterminal entry_call_nonterminal stmts_opt_nonterminal ELSE_nonterminal statement_s_nonterminal END_nonterminal SELECT_nonterminal SEMICOLON_nonterminal  {
   $$ := new cond_entry_call_nonterminal;
   cond_entry_call_nonterminal($$.all).SELECT_part1 :=    Parseable_Token_Ptr($1);
   cond_entry_call_nonterminal($$.all).entry_call_part :=    entry_call_Nonterminal_Ptr($2);
   cond_entry_call_nonterminal($$.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr($3);
   cond_entry_call_nonterminal($$.all).ELSE_part :=    Parseable_Token_Ptr($4);
   cond_entry_call_nonterminal($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($5);
   cond_entry_call_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($6);
   cond_entry_call_nonterminal($$.all).SELECT_part2 :=    Parseable_Token_Ptr($7);
   cond_entry_call_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   };

stmts_opt_nonterminal : 
    {
   $$ := new stmts_opt_nonterminal1;
   }|
   statement_s_nonterminal  {
   $$ := new stmts_opt_nonterminal2;
   stmts_opt_nonterminal2($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($1);
   };

abort_stmt_nonterminal : 
   abort_nonterminal name_s_nonterminal SEMICOLON_nonterminal  {
   $$ := new abort_stmt_nonterminal;
   abort_stmt_nonterminal($$.all).abort_part :=    Parseable_Token_Ptr($1);
   abort_stmt_nonterminal($$.all).name_s_part :=    name_s_Nonterminal_Ptr($2);
   abort_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   };

compilation_nonterminal : 
    {
   $$ := new compilation_nonterminal1;
   }|
   compilation_nonterminal comp_unit_nonterminal  {
   $$ := new compilation_nonterminal2;
   compilation_nonterminal2($$.all).compilation_part :=    compilation_Nonterminal_Ptr($1);
   compilation_nonterminal2($$.all).comp_unit_part :=    comp_unit_Nonterminal_Ptr($2);
   }|
   pragma_sym_nonterminal pragma_s_nonterminal  {
   $$ := new compilation_nonterminal3;
   compilation_nonterminal3($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($1);
   compilation_nonterminal3($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($2);
   };

comp_unit_nonterminal : 
   context_spec_nonterminal private_opt_nonterminal unit_nonterminal pragma_s_nonterminal  {
   $$ := new comp_unit_nonterminal1;
   comp_unit_nonterminal1($$.all).context_spec_part :=    context_spec_Nonterminal_Ptr($1);
   comp_unit_nonterminal1($$.all).private_opt_part :=    private_opt_Nonterminal_Ptr($2);
   comp_unit_nonterminal1($$.all).unit_part :=    unit_Nonterminal_Ptr($3);
   comp_unit_nonterminal1($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($4);
   }|
   private_opt_nonterminal unit_nonterminal pragma_s_nonterminal  {
   $$ := new comp_unit_nonterminal2;
   comp_unit_nonterminal2($$.all).private_opt_part :=    private_opt_Nonterminal_Ptr($1);
   comp_unit_nonterminal2($$.all).unit_part :=    unit_Nonterminal_Ptr($2);
   comp_unit_nonterminal2($$.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr($3);
   };

private_opt_nonterminal : 
    {
   $$ := new private_opt_nonterminal1;
   }|
   PRIVATE_nonterminal  {
   $$ := new private_opt_nonterminal2;
   private_opt_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   };

context_spec_nonterminal : 
   with_clause_nonterminal use_clause_opt_nonterminal  {
   $$ := new context_spec_nonterminal1;
   context_spec_nonterminal1($$.all).with_clause_part :=    with_clause_Nonterminal_Ptr($1);
   context_spec_nonterminal1($$.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr($2);
   }|
   context_spec_nonterminal with_clause_nonterminal use_clause_opt_nonterminal  {
   $$ := new context_spec_nonterminal2;
   context_spec_nonterminal2($$.all).context_spec_part :=    context_spec_Nonterminal_Ptr($1);
   context_spec_nonterminal2($$.all).with_clause_part :=    with_clause_Nonterminal_Ptr($2);
   context_spec_nonterminal2($$.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr($3);
   }|
   context_spec_nonterminal pragma_sym_nonterminal  {
   $$ := new context_spec_nonterminal3;
   context_spec_nonterminal3($$.all).context_spec_part :=    context_spec_Nonterminal_Ptr($1);
   context_spec_nonterminal3($$.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr($2);
   };

with_clause_nonterminal : 
   WITH_nonterminal c_name_list_nonterminal SEMICOLON_nonterminal  {
   $$ := new with_clause_nonterminal1;
   with_clause_nonterminal1($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   with_clause_nonterminal1($$.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr($2);
   with_clause_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   LIMITED_nonterminal WITH_nonterminal c_name_list_nonterminal SEMICOLON_nonterminal  {
   $$ := new with_clause_nonterminal2;
   with_clause_nonterminal2($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   with_clause_nonterminal2($$.all).WITH_part :=    Parseable_Token_Ptr($2);
   with_clause_nonterminal2($$.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr($3);
   with_clause_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   LIMITED_nonterminal PRIVATE_nonterminal WITH_nonterminal c_name_list_nonterminal SEMICOLON_nonterminal  {
   $$ := new with_clause_nonterminal3;
   with_clause_nonterminal3($$.all).LIMITED_part :=    Parseable_Token_Ptr($1);
   with_clause_nonterminal3($$.all).PRIVATE_part :=    Parseable_Token_Ptr($2);
   with_clause_nonterminal3($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   with_clause_nonterminal3($$.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr($4);
   with_clause_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   PRIVATE_nonterminal WITH_nonterminal c_name_list_nonterminal SEMICOLON_nonterminal  {
   $$ := new with_clause_nonterminal4;
   with_clause_nonterminal4($$.all).PRIVATE_part :=    Parseable_Token_Ptr($1);
   with_clause_nonterminal4($$.all).WITH_part :=    Parseable_Token_Ptr($2);
   with_clause_nonterminal4($$.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr($3);
   with_clause_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

use_clause_opt_nonterminal : 
    {
   $$ := new use_clause_opt_nonterminal1;
   }|
   use_clause_opt_nonterminal use_clause_nonterminal  {
   $$ := new use_clause_opt_nonterminal2;
   use_clause_opt_nonterminal2($$.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr($1);
   use_clause_opt_nonterminal2($$.all).use_clause_part :=    use_clause_Nonterminal_Ptr($2);
   };

unit_nonterminal : 
   pkg_decl_nonterminal  {
   $$ := new unit_nonterminal1;
   unit_nonterminal1($$.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr($1);
   }|
   pkg_body_nonterminal  {
   $$ := new unit_nonterminal2;
   unit_nonterminal2($$.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr($1);
   }|
   subprog_decl_nonterminal  {
   $$ := new unit_nonterminal3;
   unit_nonterminal3($$.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr($1);
   }|
   subprog_body_nonterminal  {
   $$ := new unit_nonterminal4;
   unit_nonterminal4($$.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr($1);
   }|
   subunit_nonterminal  {
   $$ := new unit_nonterminal5;
   unit_nonterminal5($$.all).subunit_part :=    subunit_Nonterminal_Ptr($1);
   }|
   generic_decl_nonterminal  {
   $$ := new unit_nonterminal6;
   unit_nonterminal6($$.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr($1);
   }|
   rename_unit_nonterminal  {
   $$ := new unit_nonterminal7;
   unit_nonterminal7($$.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr($1);
   };

subunit_nonterminal : 
   SEPARATE_nonterminal L_PAREN_nonterminal compound_name_nonterminal R_PAREN_nonterminal subunit_body_nonterminal  {
   $$ := new subunit_nonterminal;
   subunit_nonterminal($$.all).SEPARATE_part :=    Parseable_Token_Ptr($1);
   subunit_nonterminal($$.all).L_PAREN_part :=    Parseable_Token_Ptr($2);
   subunit_nonterminal($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($3);
   subunit_nonterminal($$.all).R_PAREN_part :=    Parseable_Token_Ptr($4);
   subunit_nonterminal($$.all).subunit_body_part :=    subunit_body_Nonterminal_Ptr($5);
   };

subunit_body_nonterminal : 
   subprog_body_nonterminal  {
   $$ := new subunit_body_nonterminal1;
   subunit_body_nonterminal1($$.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr($1);
   }|
   pkg_body_nonterminal  {
   $$ := new subunit_body_nonterminal2;
   subunit_body_nonterminal2($$.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr($1);
   }|
   task_body_nonterminal  {
   $$ := new subunit_body_nonterminal3;
   subunit_body_nonterminal3($$.all).task_body_part :=    task_body_Nonterminal_Ptr($1);
   }|
   prot_body_nonterminal  {
   $$ := new subunit_body_nonterminal4;
   subunit_body_nonterminal4($$.all).prot_body_part :=    prot_body_Nonterminal_Ptr($1);
   };

body_stub_nonterminal : 
   TASK_nonterminal BODY_nonterminal simple_name_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal1;
   body_stub_nonterminal1($$.all).TASK_part :=    Parseable_Token_Ptr($1);
   body_stub_nonterminal1($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   body_stub_nonterminal1($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   body_stub_nonterminal1($$.all).IS_part :=    Parseable_Token_Ptr($4);
   body_stub_nonterminal1($$.all).SEPARATE_part :=    Parseable_Token_Ptr($5);
   body_stub_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   PACKAGE_nonterminal BODY_nonterminal compound_name_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal2;
   body_stub_nonterminal2($$.all).PACKAGE_part :=    Parseable_Token_Ptr($1);
   body_stub_nonterminal2($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   body_stub_nonterminal2($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($3);
   body_stub_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($4);
   body_stub_nonterminal2($$.all).SEPARATE_part :=    Parseable_Token_Ptr($5);
   body_stub_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   subprog_spec_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal3;
   body_stub_nonterminal3($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   body_stub_nonterminal3($$.all).IS_part :=    Parseable_Token_Ptr($2);
   body_stub_nonterminal3($$.all).SEPARATE_part :=    Parseable_Token_Ptr($3);
   body_stub_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   }|
   OVERRIDING_nonterminal subprog_spec_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal4;
   body_stub_nonterminal4($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   body_stub_nonterminal4($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($2);
   body_stub_nonterminal4($$.all).IS_part :=    Parseable_Token_Ptr($3);
   body_stub_nonterminal4($$.all).SEPARATE_part :=    Parseable_Token_Ptr($4);
   body_stub_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   }|
   NOT_nonterminal OVERRIDING_nonterminal subprog_spec_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal5;
   body_stub_nonterminal5($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   body_stub_nonterminal5($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   body_stub_nonterminal5($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($3);
   body_stub_nonterminal5($$.all).IS_part :=    Parseable_Token_Ptr($4);
   body_stub_nonterminal5($$.all).SEPARATE_part :=    Parseable_Token_Ptr($5);
   body_stub_nonterminal5($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   PROTECTED_nonterminal BODY_nonterminal simple_name_nonterminal IS_nonterminal SEPARATE_nonterminal SEMICOLON_nonterminal  {
   $$ := new body_stub_nonterminal6;
   body_stub_nonterminal6($$.all).PROTECTED_part :=    Parseable_Token_Ptr($1);
   body_stub_nonterminal6($$.all).BODY_part :=    Parseable_Token_Ptr($2);
   body_stub_nonterminal6($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   body_stub_nonterminal6($$.all).IS_part :=    Parseable_Token_Ptr($4);
   body_stub_nonterminal6($$.all).SEPARATE_part :=    Parseable_Token_Ptr($5);
   body_stub_nonterminal6($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

exception_decl_nonterminal : 
   def_id_s_nonterminal COLON_nonterminal EXCEPTION_nonterminal SEMICOLON_nonterminal  {
   $$ := new exception_decl_nonterminal;
   exception_decl_nonterminal($$.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr($1);
   exception_decl_nonterminal($$.all).COLON_part :=    Parseable_Token_Ptr($2);
   exception_decl_nonterminal($$.all).EXCEPTION_part :=    Parseable_Token_Ptr($3);
   exception_decl_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

except_handler_part_nonterminal : 
   EXCEPTION_nonterminal exception_handler_nonterminal  {
   $$ := new except_handler_part_nonterminal1;
   except_handler_part_nonterminal1($$.all).EXCEPTION_part :=    Parseable_Token_Ptr($1);
   except_handler_part_nonterminal1($$.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr($2);
   }|
   except_handler_part_nonterminal exception_handler_nonterminal  {
   $$ := new except_handler_part_nonterminal2;
   except_handler_part_nonterminal2($$.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr($1);
   except_handler_part_nonterminal2($$.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr($2);
   };

exception_handler_nonterminal : 
   WHEN_nonterminal except_choice_s_nonterminal ARROW_nonterminal statement_s_nonterminal  {
   $$ := new exception_handler_nonterminal1;
   exception_handler_nonterminal1($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   exception_handler_nonterminal1($$.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr($2);
   exception_handler_nonterminal1($$.all).ARROW_part :=    Parseable_Token_Ptr($3);
   exception_handler_nonterminal1($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($4);
   }|
   WHEN_nonterminal identifier_nonterminal COLON_nonterminal except_choice_s_nonterminal ARROW_nonterminal statement_s_nonterminal  {
   $$ := new exception_handler_nonterminal2;
   exception_handler_nonterminal2($$.all).WHEN_part :=    Parseable_Token_Ptr($1);
   exception_handler_nonterminal2($$.all).identifier_part :=    Parseable_Token_Ptr($2);
   exception_handler_nonterminal2($$.all).COLON_part :=    Parseable_Token_Ptr($3);
   exception_handler_nonterminal2($$.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr($4);
   exception_handler_nonterminal2($$.all).ARROW_part :=    Parseable_Token_Ptr($5);
   exception_handler_nonterminal2($$.all).statement_s_part :=    statement_s_Nonterminal_Ptr($6);
   };

except_choice_s_nonterminal : 
   except_choice_nonterminal  {
   $$ := new except_choice_s_nonterminal1;
   except_choice_s_nonterminal1($$.all).except_choice_part :=    except_choice_Nonterminal_Ptr($1);
   }|
   except_choice_s_nonterminal PIPE_nonterminal except_choice_nonterminal  {
   $$ := new except_choice_s_nonterminal2;
   except_choice_s_nonterminal2($$.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr($1);
   except_choice_s_nonterminal2($$.all).PIPE_part :=    Parseable_Token_Ptr($2);
   except_choice_s_nonterminal2($$.all).except_choice_part :=    except_choice_Nonterminal_Ptr($3);
   };

except_choice_nonterminal : 
   name_nonterminal  {
   $$ := new except_choice_nonterminal1;
   except_choice_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($1);
   }|
   OTHERS_nonterminal  {
   $$ := new except_choice_nonterminal2;
   except_choice_nonterminal2($$.all).OTHERS_part :=    Parseable_Token_Ptr($1);
   };

raise_stmt_nonterminal : 
   RAISE_nonterminal name_opt_nonterminal SEMICOLON_nonterminal  {
   $$ := new raise_stmt_nonterminal1;
   raise_stmt_nonterminal1($$.all).RAISE_part :=    Parseable_Token_Ptr($1);
   raise_stmt_nonterminal1($$.all).name_opt_part :=    name_opt_Nonterminal_Ptr($2);
   raise_stmt_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   RAISE_nonterminal name_nonterminal WITH_nonterminal CHAR_STRING_nonterminal SEMICOLON_nonterminal  {
   $$ := new raise_stmt_nonterminal2;
   raise_stmt_nonterminal2($$.all).RAISE_part :=    Parseable_Token_Ptr($1);
   raise_stmt_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($2);
   raise_stmt_nonterminal2($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   raise_stmt_nonterminal2($$.all).CHAR_STRING_part :=    CHAR_STRING_Nonterminal_Ptr($4);
   raise_stmt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

requeue_stmt_nonterminal : 
   REQUEUE_nonterminal name_nonterminal SEMICOLON_nonterminal  {
   $$ := new requeue_stmt_nonterminal1;
   requeue_stmt_nonterminal1($$.all).REQUEUE_part :=    Parseable_Token_Ptr($1);
   requeue_stmt_nonterminal1($$.all).name_part :=    name_Nonterminal_Ptr($2);
   requeue_stmt_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   REQUEUE_nonterminal name_nonterminal WITH_nonterminal abort_nonterminal SEMICOLON_nonterminal  {
   $$ := new requeue_stmt_nonterminal2;
   requeue_stmt_nonterminal2($$.all).REQUEUE_part :=    Parseable_Token_Ptr($1);
   requeue_stmt_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($2);
   requeue_stmt_nonterminal2($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   requeue_stmt_nonterminal2($$.all).abort_part :=    Parseable_Token_Ptr($4);
   requeue_stmt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

generic_decl_nonterminal : 
   generic_formal_part_nonterminal subprog_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_decl_nonterminal1;
   generic_decl_nonterminal1($$.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr($1);
   generic_decl_nonterminal1($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($2);
   generic_decl_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   }|
   generic_formal_part_nonterminal pkg_spec_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_decl_nonterminal2;
   generic_decl_nonterminal2($$.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr($1);
   generic_decl_nonterminal2($$.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr($2);
   generic_decl_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($3);
   };

generic_formal_part_nonterminal : 
   GENERIC_nonterminal  {
   $$ := new generic_formal_part_nonterminal1;
   generic_formal_part_nonterminal1($$.all).GENERIC_part :=    Parseable_Token_Ptr($1);
   }|
   generic_formal_part_nonterminal generic_formal_nonterminal  {
   $$ := new generic_formal_part_nonterminal2;
   generic_formal_part_nonterminal2($$.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr($1);
   generic_formal_part_nonterminal2($$.all).generic_formal_part :=    generic_formal_Nonterminal_Ptr($2);
   };

generic_formal_nonterminal : 
   param_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal1;
   generic_formal_nonterminal1($$.all).param_part :=    param_Nonterminal_Ptr($1);
   generic_formal_nonterminal1($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   }|
   TYPE_nonterminal simple_name_nonterminal generic_discrim_part_opt_nonterminal IS_nonterminal generic_type_def_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal2;
   generic_formal_nonterminal2($$.all).TYPE_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal2($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($2);
   generic_formal_nonterminal2($$.all).generic_discrim_part_opt_part :=    generic_discrim_part_opt_Nonterminal_Ptr($3);
   generic_formal_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($4);
   generic_formal_nonterminal2($$.all).generic_type_def_part :=    generic_type_def_Nonterminal_Ptr($5);
   generic_formal_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   WITH_nonterminal PROCEDURE_nonterminal simple_name_nonterminal formal_part_opt_nonterminal subp_default_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal3;
   generic_formal_nonterminal3($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal3($$.all).PROCEDURE_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal3($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   generic_formal_nonterminal3($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   generic_formal_nonterminal3($$.all).subp_default_part :=    subp_default_Nonterminal_Ptr($5);
   generic_formal_nonterminal3($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   }|
   WITH_nonterminal FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal name_nonterminal subp_default_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal4;
   generic_formal_nonterminal4($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal4($$.all).FUNCTION_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal4($$.all).designator_part :=    designator_Nonterminal_Ptr($3);
   generic_formal_nonterminal4($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   generic_formal_nonterminal4($$.all).RETURN_part :=    Parseable_Token_Ptr($5);
   generic_formal_nonterminal4($$.all).name_part :=    name_Nonterminal_Ptr($6);
   generic_formal_nonterminal4($$.all).subp_default_part :=    subp_default_Nonterminal_Ptr($7);
   generic_formal_nonterminal4($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   }|
   WITH_nonterminal FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal NOT_nonterminal NULL_nonterminal name_nonterminal subp_default_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal5;
   generic_formal_nonterminal5($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal5($$.all).FUNCTION_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal5($$.all).designator_part :=    designator_Nonterminal_Ptr($3);
   generic_formal_nonterminal5($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   generic_formal_nonterminal5($$.all).RETURN_part :=    Parseable_Token_Ptr($5);
   generic_formal_nonterminal5($$.all).NOT_part :=    Parseable_Token_Ptr($6);
   generic_formal_nonterminal5($$.all).NULL_part :=    Parseable_Token_Ptr($7);
   generic_formal_nonterminal5($$.all).name_part :=    name_Nonterminal_Ptr($8);
   generic_formal_nonterminal5($$.all).subp_default_part :=    subp_default_Nonterminal_Ptr($9);
   generic_formal_nonterminal5($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($10);
   }|
   WITH_nonterminal FUNCTION_nonterminal designator_nonterminal formal_part_opt_nonterminal RETURN_nonterminal access_type_nonterminal subp_default_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal6;
   generic_formal_nonterminal6($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal6($$.all).FUNCTION_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal6($$.all).designator_part :=    designator_Nonterminal_Ptr($3);
   generic_formal_nonterminal6($$.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr($4);
   generic_formal_nonterminal6($$.all).RETURN_part :=    Parseable_Token_Ptr($5);
   generic_formal_nonterminal6($$.all).access_type_part :=    access_type_Nonterminal_Ptr($6);
   generic_formal_nonterminal6($$.all).subp_default_part :=    subp_default_Nonterminal_Ptr($7);
   generic_formal_nonterminal6($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($8);
   }|
   WITH_nonterminal PACKAGE_nonterminal simple_name_nonterminal IS_nonterminal NEW_nonterminal name_nonterminal L_PAREN_nonterminal BOX_nonterminal R_PAREN_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal7;
   generic_formal_nonterminal7($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal7($$.all).PACKAGE_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal7($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   generic_formal_nonterminal7($$.all).IS_part :=    Parseable_Token_Ptr($4);
   generic_formal_nonterminal7($$.all).NEW_part :=    Parseable_Token_Ptr($5);
   generic_formal_nonterminal7($$.all).name_part :=    name_Nonterminal_Ptr($6);
   generic_formal_nonterminal7($$.all).L_PAREN_part :=    Parseable_Token_Ptr($7);
   generic_formal_nonterminal7($$.all).BOX_part :=    Parseable_Token_Ptr($8);
   generic_formal_nonterminal7($$.all).R_PAREN_part :=    Parseable_Token_Ptr($9);
   generic_formal_nonterminal7($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($10);
   }|
   WITH_nonterminal PACKAGE_nonterminal simple_name_nonterminal IS_nonterminal NEW_nonterminal name_nonterminal SEMICOLON_nonterminal  {
   $$ := new generic_formal_nonterminal8;
   generic_formal_nonterminal8($$.all).WITH_part :=    Parseable_Token_Ptr($1);
   generic_formal_nonterminal8($$.all).PACKAGE_part :=    Parseable_Token_Ptr($2);
   generic_formal_nonterminal8($$.all).simple_name_part :=    simple_name_Nonterminal_Ptr($3);
   generic_formal_nonterminal8($$.all).IS_part :=    Parseable_Token_Ptr($4);
   generic_formal_nonterminal8($$.all).NEW_part :=    Parseable_Token_Ptr($5);
   generic_formal_nonterminal8($$.all).name_part :=    name_Nonterminal_Ptr($6);
   generic_formal_nonterminal8($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($7);
   }|
   use_clause_nonterminal  {
   $$ := new generic_formal_nonterminal9;
   generic_formal_nonterminal9($$.all).use_clause_part :=    use_clause_Nonterminal_Ptr($1);
   };

generic_discrim_part_opt_nonterminal : 
    {
   $$ := new generic_discrim_part_opt_nonterminal1;
   }|
   discrim_part_nonterminal  {
   $$ := new generic_discrim_part_opt_nonterminal2;
   generic_discrim_part_opt_nonterminal2($$.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr($1);
   }|
   L_PAREN_nonterminal BOX_nonterminal R_PAREN_nonterminal  {
   $$ := new generic_discrim_part_opt_nonterminal3;
   generic_discrim_part_opt_nonterminal3($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   generic_discrim_part_opt_nonterminal3($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   generic_discrim_part_opt_nonterminal3($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   };

subp_default_nonterminal : 
    {
   $$ := new subp_default_nonterminal1;
   }|
   IS_nonterminal name_nonterminal  {
   $$ := new subp_default_nonterminal2;
   subp_default_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($1);
   subp_default_nonterminal2($$.all).name_part :=    name_Nonterminal_Ptr($2);
   }|
   IS_nonterminal BOX_nonterminal  {
   $$ := new subp_default_nonterminal3;
   subp_default_nonterminal3($$.all).IS_part :=    Parseable_Token_Ptr($1);
   subp_default_nonterminal3($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   }|
   IS_nonterminal NULL_nonterminal  {
   $$ := new subp_default_nonterminal4;
   subp_default_nonterminal4($$.all).IS_part :=    Parseable_Token_Ptr($1);
   subp_default_nonterminal4($$.all).NULL_part :=    Parseable_Token_Ptr($2);
   };

generic_type_def_nonterminal : 
   L_PAREN_nonterminal BOX_nonterminal R_PAREN_nonterminal  {
   $$ := new generic_type_def_nonterminal1;
   generic_type_def_nonterminal1($$.all).L_PAREN_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal1($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   generic_type_def_nonterminal1($$.all).R_PAREN_part :=    Parseable_Token_Ptr($3);
   }|
   RANGE_nonterminal BOX_nonterminal  {
   $$ := new generic_type_def_nonterminal2;
   generic_type_def_nonterminal2($$.all).RANGE_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal2($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   }|
   MOD_nonterminal BOX_nonterminal  {
   $$ := new generic_type_def_nonterminal3;
   generic_type_def_nonterminal3($$.all).MOD_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal3($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   }|
   DELTA_nonterminal BOX_nonterminal  {
   $$ := new generic_type_def_nonterminal4;
   generic_type_def_nonterminal4($$.all).DELTA_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal4($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   }|
   DELTA_nonterminal BOX_nonterminal DIGITS_nonterminal BOX_nonterminal  {
   $$ := new generic_type_def_nonterminal5;
   generic_type_def_nonterminal5($$.all).DELTA_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal5($$.all).BOX_part1 :=    Parseable_Token_Ptr($2);
   generic_type_def_nonterminal5($$.all).DIGITS_part :=    Parseable_Token_Ptr($3);
   generic_type_def_nonterminal5($$.all).BOX_part2 :=    Parseable_Token_Ptr($4);
   }|
   DIGITS_nonterminal BOX_nonterminal  {
   $$ := new generic_type_def_nonterminal6;
   generic_type_def_nonterminal6($$.all).DIGITS_part :=    Parseable_Token_Ptr($1);
   generic_type_def_nonterminal6($$.all).BOX_part :=    Parseable_Token_Ptr($2);
   }|
   array_type_nonterminal  {
   $$ := new generic_type_def_nonterminal7;
   generic_type_def_nonterminal7($$.all).array_type_part :=    array_type_Nonterminal_Ptr($1);
   }|
   access_type_nonterminal  {
   $$ := new generic_type_def_nonterminal8;
   generic_type_def_nonterminal8($$.all).access_type_part :=    access_type_Nonterminal_Ptr($1);
   }|
   private_type_nonterminal  {
   $$ := new generic_type_def_nonterminal9;
   generic_type_def_nonterminal9($$.all).private_type_part :=    private_type_Nonterminal_Ptr($1);
   }|
   generic_derived_type_nonterminal  {
   $$ := new generic_type_def_nonterminal10;
   generic_type_def_nonterminal10($$.all).generic_derived_type_part :=    generic_derived_type_Nonterminal_Ptr($1);
   };

generic_derived_type_nonterminal : 
   NEW_nonterminal subtype_ind_nonterminal  {
   $$ := new generic_derived_type_nonterminal1;
   generic_derived_type_nonterminal1($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   generic_derived_type_nonterminal1($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   }|
   NEW_nonterminal subtype_ind_nonterminal WITH_nonterminal PRIVATE_nonterminal  {
   $$ := new generic_derived_type_nonterminal2;
   generic_derived_type_nonterminal2($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   generic_derived_type_nonterminal2($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($2);
   generic_derived_type_nonterminal2($$.all).WITH_part :=    Parseable_Token_Ptr($3);
   generic_derived_type_nonterminal2($$.all).PRIVATE_part :=    Parseable_Token_Ptr($4);
   }|
   abstract_nonterminal NEW_nonterminal subtype_ind_nonterminal WITH_nonterminal PRIVATE_nonterminal  {
   $$ := new generic_derived_type_nonterminal3;
   generic_derived_type_nonterminal3($$.all).abstract_part :=    Parseable_Token_Ptr($1);
   generic_derived_type_nonterminal3($$.all).NEW_part :=    Parseable_Token_Ptr($2);
   generic_derived_type_nonterminal3($$.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr($3);
   generic_derived_type_nonterminal3($$.all).WITH_part :=    Parseable_Token_Ptr($4);
   generic_derived_type_nonterminal3($$.all).PRIVATE_part :=    Parseable_Token_Ptr($5);
   };

generic_subp_inst_nonterminal : 
   subprog_spec_nonterminal IS_nonterminal generic_inst_nonterminal  {
   $$ := new generic_subp_inst_nonterminal1;
   generic_subp_inst_nonterminal1($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($1);
   generic_subp_inst_nonterminal1($$.all).IS_part :=    Parseable_Token_Ptr($2);
   generic_subp_inst_nonterminal1($$.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr($3);
   }|
   OVERRIDING_nonterminal subprog_spec_nonterminal IS_nonterminal generic_inst_nonterminal  {
   $$ := new generic_subp_inst_nonterminal2;
   generic_subp_inst_nonterminal2($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($1);
   generic_subp_inst_nonterminal2($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($2);
   generic_subp_inst_nonterminal2($$.all).IS_part :=    Parseable_Token_Ptr($3);
   generic_subp_inst_nonterminal2($$.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr($4);
   }|
   NOT_nonterminal OVERRIDING_nonterminal subprog_spec_nonterminal IS_nonterminal generic_inst_nonterminal  {
   $$ := new generic_subp_inst_nonterminal3;
   generic_subp_inst_nonterminal3($$.all).NOT_part :=    Parseable_Token_Ptr($1);
   generic_subp_inst_nonterminal3($$.all).OVERRIDING_part :=    Parseable_Token_Ptr($2);
   generic_subp_inst_nonterminal3($$.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr($3);
   generic_subp_inst_nonterminal3($$.all).IS_part :=    Parseable_Token_Ptr($4);
   generic_subp_inst_nonterminal3($$.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr($5);
   };

generic_pkg_inst_nonterminal : 
   PACKAGE_nonterminal compound_name_nonterminal IS_nonterminal generic_inst_nonterminal  {
   $$ := new generic_pkg_inst_nonterminal;
   generic_pkg_inst_nonterminal($$.all).PACKAGE_part :=    Parseable_Token_Ptr($1);
   generic_pkg_inst_nonterminal($$.all).compound_name_part :=    compound_name_Nonterminal_Ptr($2);
   generic_pkg_inst_nonterminal($$.all).IS_part :=    Parseable_Token_Ptr($3);
   generic_pkg_inst_nonterminal($$.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr($4);
   };

generic_inst_nonterminal : 
   NEW_nonterminal name_nonterminal  {
   $$ := new generic_inst_nonterminal;
   generic_inst_nonterminal($$.all).NEW_part :=    Parseable_Token_Ptr($1);
   generic_inst_nonterminal($$.all).name_part :=    name_Nonterminal_Ptr($2);
   };

rep_spec_nonterminal : 
   attrib_def_nonterminal  {
   $$ := new rep_spec_nonterminal1;
   rep_spec_nonterminal1($$.all).attrib_def_part :=    attrib_def_Nonterminal_Ptr($1);
   }|
   record_type_spec_nonterminal  {
   $$ := new rep_spec_nonterminal2;
   rep_spec_nonterminal2($$.all).record_type_spec_part :=    record_type_spec_Nonterminal_Ptr($1);
   }|
   address_spec_nonterminal  {
   $$ := new rep_spec_nonterminal3;
   rep_spec_nonterminal3($$.all).address_spec_part :=    address_spec_Nonterminal_Ptr($1);
   };

attrib_def_nonterminal : 
   FOR_nonterminal mark_nonterminal USE_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new attrib_def_nonterminal;
   attrib_def_nonterminal($$.all).FOR_part :=    Parseable_Token_Ptr($1);
   attrib_def_nonterminal($$.all).mark_part :=    mark_Nonterminal_Ptr($2);
   attrib_def_nonterminal($$.all).USE_part :=    Parseable_Token_Ptr($3);
   attrib_def_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($4);
   attrib_def_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($5);
   };

record_type_spec_nonterminal : 
   FOR_nonterminal mark_nonterminal USE_nonterminal RECORD_nonterminal align_opt_nonterminal comp_loc_s_nonterminal END_nonterminal RECORD_nonterminal SEMICOLON_nonterminal  {
   $$ := new record_type_spec_nonterminal;
   record_type_spec_nonterminal($$.all).FOR_part :=    Parseable_Token_Ptr($1);
   record_type_spec_nonterminal($$.all).mark_part :=    mark_Nonterminal_Ptr($2);
   record_type_spec_nonterminal($$.all).USE_part :=    Parseable_Token_Ptr($3);
   record_type_spec_nonterminal($$.all).RECORD_part1 :=    Parseable_Token_Ptr($4);
   record_type_spec_nonterminal($$.all).align_opt_part :=    align_opt_Nonterminal_Ptr($5);
   record_type_spec_nonterminal($$.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr($6);
   record_type_spec_nonterminal($$.all).END_part :=    Parseable_Token_Ptr($7);
   record_type_spec_nonterminal($$.all).RECORD_part2 :=    Parseable_Token_Ptr($8);
   record_type_spec_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($9);
   };

align_opt_nonterminal : 
    {
   $$ := new align_opt_nonterminal1;
   }|
   AT_nonterminal MOD_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new align_opt_nonterminal2;
   align_opt_nonterminal2($$.all).AT_part :=    Parseable_Token_Ptr($1);
   align_opt_nonterminal2($$.all).MOD_part :=    Parseable_Token_Ptr($2);
   align_opt_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($3);
   align_opt_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($4);
   };

comp_loc_s_nonterminal : 
    {
   $$ := new comp_loc_s_nonterminal1;
   }|
   comp_loc_s_nonterminal mark_nonterminal AT_nonterminal expression_nonterminal RANGE_nonterminal range_sym_nonterminal SEMICOLON_nonterminal  {
   $$ := new comp_loc_s_nonterminal2;
   comp_loc_s_nonterminal2($$.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr($1);
   comp_loc_s_nonterminal2($$.all).mark_part :=    mark_Nonterminal_Ptr($2);
   comp_loc_s_nonterminal2($$.all).AT_part :=    Parseable_Token_Ptr($3);
   comp_loc_s_nonterminal2($$.all).expression_part :=    expression_Nonterminal_Ptr($4);
   comp_loc_s_nonterminal2($$.all).RANGE_part :=    Parseable_Token_Ptr($5);
   comp_loc_s_nonterminal2($$.all).range_sym_part :=    range_sym_Nonterminal_Ptr($6);
   comp_loc_s_nonterminal2($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($7);
   };

address_spec_nonterminal : 
   FOR_nonterminal mark_nonterminal USE_nonterminal AT_nonterminal expression_nonterminal SEMICOLON_nonterminal  {
   $$ := new address_spec_nonterminal;
   address_spec_nonterminal($$.all).FOR_part :=    Parseable_Token_Ptr($1);
   address_spec_nonterminal($$.all).mark_part :=    mark_Nonterminal_Ptr($2);
   address_spec_nonterminal($$.all).USE_part :=    Parseable_Token_Ptr($3);
   address_spec_nonterminal($$.all).AT_part :=    Parseable_Token_Ptr($4);
   address_spec_nonterminal($$.all).expression_part :=    expression_Nonterminal_Ptr($5);
   address_spec_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($6);
   };

code_stmt_nonterminal : 
   qualified_nonterminal SEMICOLON_nonterminal  {
   $$ := new code_stmt_nonterminal;
   code_stmt_nonterminal($$.all).qualified_part :=    qualified_Nonterminal_Ptr($1);
   code_stmt_nonterminal($$.all).SEMICOLON_part :=    Parseable_Token_Ptr($2);
   };

%%

with ada05_Model;
use ada05_Model;
package ada05_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end ada05_Parser;

with Text_IO;
use Text_IO;
with ada05;
use ada05;
with ada05_Goto;
use ada05_Goto;
with ada05_Shift_Reduce;
use ada05_Shift_Reduce;
with ada05_Tokens;
use ada05_Tokens;
with code_stmt_model;
use code_stmt_model;
with address_spec_model;
use address_spec_model;
with comp_loc_s_model;
use comp_loc_s_model;
with align_opt_model;
use align_opt_model;
with record_type_spec_model;
use record_type_spec_model;
with attrib_def_model;
use attrib_def_model;
with rep_spec_model;
use rep_spec_model;
with generic_inst_model;
use generic_inst_model;
with generic_pkg_inst_model;
use generic_pkg_inst_model;
with generic_subp_inst_model;
use generic_subp_inst_model;
with generic_derived_type_model;
use generic_derived_type_model;
with generic_type_def_model;
use generic_type_def_model;
with subp_default_model;
use subp_default_model;
with generic_discrim_part_opt_model;
use generic_discrim_part_opt_model;
with generic_formal_model;
use generic_formal_model;
with generic_formal_part_model;
use generic_formal_part_model;
with generic_decl_model;
use generic_decl_model;
with requeue_stmt_model;
use requeue_stmt_model;
with raise_stmt_model;
use raise_stmt_model;
with except_choice_model;
use except_choice_model;
with except_choice_s_model;
use except_choice_s_model;
with exception_handler_model;
use exception_handler_model;
with except_handler_part_model;
use except_handler_part_model;
with exception_decl_model;
use exception_decl_model;
with body_stub_model;
use body_stub_model;
with subunit_body_model;
use subunit_body_model;
with subunit_model;
use subunit_model;
with unit_model;
use unit_model;
with use_clause_opt_model;
use use_clause_opt_model;
with with_clause_model;
use with_clause_model;
with context_spec_model;
use context_spec_model;
with private_opt_model;
use private_opt_model;
with comp_unit_model;
use comp_unit_model;
with compilation_model;
use compilation_model;
with abort_stmt_model;
use abort_stmt_model;
with stmts_opt_model;
use stmts_opt_model;
with cond_entry_call_model;
use cond_entry_call_model;
with timed_entry_call_model;
use timed_entry_call_model;
with async_select_model;
use async_select_model;
with delay_or_entry_alt_model;
use delay_or_entry_alt_model;
with select_alt_model;
use select_alt_model;
with or_select_model;
use or_select_model;
with guarded_select_alt_model;
use guarded_select_alt_model;
with select_wait_model;
use select_wait_model;
with select_stmt_model;
use select_stmt_model;
with delay_stmt_model;
use delay_stmt_model;
with entry_name_model;
use entry_name_model;
with accept_hdr_model;
use accept_hdr_model;
with accept_stmt_model;
use accept_stmt_model;
with entry_call_model;
use entry_call_model;
with rep_spec_s_model;
use rep_spec_s_model;
with entry_body_part_model;
use entry_body_part_model;
with entry_body_model;
use entry_body_model;
with entry_decl_model;
use entry_decl_model;
with entry_decl_s_model;
use entry_decl_s_model;
with prot_op_body_model;
use prot_op_body_model;
with prot_op_body_s_model;
use prot_op_body_s_model;
with prot_body_model;
use prot_body_model;
with prot_elem_decl_model;
use prot_elem_decl_model;
with prot_elem_decl_s_model;
use prot_elem_decl_s_model;
with prot_op_decl_model;
use prot_op_decl_model;
with prot_op_decl_s_model;
use prot_op_decl_s_model;
with prot_private_opt_model;
use prot_private_opt_model;
with prot_def_model;
use prot_def_model;
with prot_spec_model;
use prot_spec_model;
with prot_decl_model;
use prot_decl_model;
with task_body_model;
use task_body_model;
with task_private_opt_model;
use task_private_opt_model;
with task_def_model;
use task_def_model;
with opt_task_interfaces_model;
use opt_task_interfaces_model;
with task_spec_model;
use task_spec_model;
with task_decl_model;
use task_decl_model;
with renaming_model;
use renaming_model;
with rename_unit_model;
use rename_unit_model;
with rename_decl_model;
use rename_decl_model;
with name_s_model;
use name_s_model;
with use_clause_model;
use use_clause_model;
with limited_opt_model;
use limited_opt_model;
with private_type_model;
use private_type_model;
with body_opt_model;
use body_opt_model;
with pkg_body_model;
use pkg_body_model;
with c_id_opt_model;
use c_id_opt_model;
with private_part_model;
use private_part_model;
with pkg_spec_model;
use pkg_spec_model;
with pkg_decl_model;
use pkg_decl_model;
with procedure_call_model;
use procedure_call_model;
with subprog_body_model;
use subprog_body_model;
with subprog_spec_is_push_model;
use subprog_spec_is_push_model;
with mode_model;
use mode_model;
with param_model;
use param_model;
with param_s_model;
use param_s_model;
with formal_part_model;
use formal_part_model;
with formal_part_opt_model;
use formal_part_opt_model;
with designator_model;
use designator_model;
with subprog_spec_model;
use subprog_spec_model;
with subprog_decl_model;
use subprog_decl_model;
with goto_stmt_model;
use goto_stmt_model;
with return_stmt_model;
use return_stmt_model;
with opt_do_block_model;
use opt_do_block_model;
with return_subtype_model;
use return_subtype_model;
with opt_assign_model;
use opt_assign_model;
with opt_aliased_model;
use opt_aliased_model;
with when_opt_model;
use when_opt_model;
with name_opt_model;
use name_opt_model;
with exit_stmt_model;
use exit_stmt_model;
with except_handler_part_opt_model;
use except_handler_part_opt_model;
with handled_stmt_s_model;
use handled_stmt_s_model;
with block_body_model;
use block_body_model;
with block_decl_model;
use block_decl_model;
with block_model;
use block_model;
with id_opt_model;
use id_opt_model;
with basic_loop_model;
use basic_loop_model;
with reverse_opt_model;
use reverse_opt_model;
with iter_part_model;
use iter_part_model;
with iteration_model;
use iteration_model;
with label_opt_model;
use label_opt_model;
with loop_stmt_model;
use loop_stmt_model;
with alternative_model;
use alternative_model;
with alternative_s_model;
use alternative_s_model;
with case_hdr_model;
use case_hdr_model;
with case_stmt_model;
use case_stmt_model;
with else_opt_model;
use else_opt_model;
with condition_model;
use condition_model;
with cond_part_model;
use cond_part_model;
with cond_clause_model;
use cond_clause_model;
with cond_clause_s_model;
use cond_clause_s_model;
with if_stmt_model;
use if_stmt_model;
with assign_stmt_model;
use assign_stmt_model;
with null_stmt_model;
use null_stmt_model;
with label_model;
use label_model;
with compound_stmt_model;
use compound_stmt_model;
with simple_stmt_model;
use simple_stmt_model;
with unlabeled_model;
use unlabeled_model;
with statement_model;
use statement_model;
with statement_s_model;
use statement_s_model;
with allocator_model;
use allocator_model;
with qualified_model;
use qualified_model;
with parenthesized_primary_model;
use parenthesized_primary_model;
with primary_model;
use primary_model;
with factor_model;
use factor_model;
with multiplying_model;
use multiplying_model;
with term_model;
use term_model;
with adding_model;
use adding_model;
with unary_model;
use unary_model;
with simple_expression_model;
use simple_expression_model;
with membership_model;
use membership_model;
with relational_model;
use relational_model;
with relation_model;
use relation_model;
with logical_model;
use logical_model;
with expression_model;
use expression_model;
with comp_assoc_model;
use comp_assoc_model;
with value_s_2_model;
use value_s_2_model;
with aggregate_model;
use aggregate_model;
with literal_model;
use literal_model;
with attribute_id_model;
use attribute_id_model;
with attribute_model;
use attribute_model;
with selected_comp_model;
use selected_comp_model;
with value_model;
use value_model;
with value_s_model;
use value_s_model;
with indexed_comp_model;
use indexed_comp_model;
with operator_symbol_model;
use operator_symbol_model;
with used_char_model;
use used_char_model;
with c_name_list_model;
use c_name_list_model;
with compound_name_model;
use compound_name_model;
with simple_name_model;
use simple_name_model;
with mark_model;
use mark_model;
with name_model;
use name_model;
with body_nt_model;
use body_nt_model;
with decl_item_or_body_model;
use decl_item_or_body_model;
with decl_item_or_body_s1_model;
use decl_item_or_body_s1_model;
with decl_item_model;
use decl_item_model;
with decl_item_s1_model;
use decl_item_s1_model;
with decl_item_s_model;
use decl_item_s_model;
with decl_part_model;
use decl_part_model;
with prot_opt_model;
use prot_opt_model;
with access_type_model;
use access_type_model;
with not_null_opt_access_model;
use not_null_opt_access_model;
with not_null_opt_model;
use not_null_opt_model;
with discrete_with_range_model;
use discrete_with_range_model;
with choice_model;
use choice_model;
with choice_s_model;
use choice_s_model;
with variant_model;
use variant_model;
with variant_s_model;
use variant_s_model;
with variant_part_model;
use variant_part_model;
with access_opt_model;
use access_opt_model;
with discrim_spec_model;
use discrim_spec_model;
with discrim_spec_s_model;
use discrim_spec_s_model;
with discrim_part_model;
use discrim_part_model;
with comp_decl_model;
use comp_decl_model;
with variant_part_opt_model;
use variant_part_opt_model;
with comp_decl_s_model;
use comp_decl_s_model;
with comp_list_model;
use comp_list_model;
with tagged_opt_model;
use tagged_opt_model;
with record_def_model;
use record_def_model;
with record_type_model;
use record_type_model;
with range_constr_opt_model;
use range_constr_opt_model;
with discrete_range_model;
use discrete_range_model;
with iter_discrete_range_s_model;
use iter_discrete_range_s_model;
with iter_index_constraint_model;
use iter_index_constraint_model;
with index_model;
use index_model;
with index_s_model;
use index_s_model;
with aliased_opt_model;
use aliased_opt_model;
with component_subtype_def_model;
use component_subtype_def_model;
with constr_array_type_model;
use constr_array_type_model;
with unconstr_array_type_model;
use unconstr_array_type_model;
with array_type_model;
use array_type_model;
with fixed_type_model;
use fixed_type_model;
with float_type_model;
use float_type_model;
with real_type_model;
use real_type_model;
with range_spec_opt_model;
use range_spec_opt_model;
with range_spec_model;
use range_spec_model;
with integer_type_model;
use integer_type_model;
with interface_type_model;
use interface_type_model;
with enum_id_model;
use enum_id_model;
with enum_id_s_model;
use enum_id_s_model;
with enumeration_type_model;
use enumeration_type_model;
with range_sym_model;
use range_sym_model;
with range_constraint_model;
use range_constraint_model;
with derived_type_model;
use derived_type_model;
with opt_interface_list_model;
use opt_interface_list_model;
with decimal_digits_constraint_model;
use decimal_digits_constraint_model;
with constraint_model;
use constraint_model;
with subtype_ind_model;
use subtype_ind_model;
with subtype_decl_model;
use subtype_decl_model;
with type_def_model;
use type_def_model;
with type_completion_model;
use type_completion_model;
with discrim_part_opt_model;
use discrim_part_opt_model;
with type_decl_model;
use type_decl_model;
with number_decl_model;
use number_decl_model;
with init_opt_model;
use init_opt_model;
with object_subtype_def_model;
use object_subtype_def_model;
with object_qualifier_opt_model;
use object_qualifier_opt_model;
with def_id_model;
use def_id_model;
with def_id_s_model;
use def_id_s_model;
with object_decl_model;
use object_decl_model;
with decl_model;
use decl_model;
with pragma_s_model;
use pragma_s_model;
with pragma_arg_model;
use pragma_arg_model;
with pragma_arg_s_model;
use pragma_arg_s_model;
with pragma_sym_model;
use pragma_sym_model;
with CHAR_STRING_model;
use CHAR_STRING_model;
with NE_model;
use NE_model;
with LT_EQ_model;
use LT_EQ_model;
with GE_model;
use GE_model;
with LT_LT_model;
use LT_LT_model;
with GT_GT_model;
use GT_GT_model;
with CHAR_LIT_model;
use CHAR_LIT_model;
with NUMERIC_LIT_model;
use NUMERIC_LIT_model;
package body ada05_Parser is
   package Language_YY2_Lexical_Analyzer renames ada05;
   use Language_YY2_Lexical_Analyzer;

   type code_stmt_Nonterminal_Ptr is access all
      code_stmt_model.code_stmt_Nonterminal'Class;
   type address_spec_Nonterminal_Ptr is access all
      address_spec_model.address_spec_Nonterminal'Class;
   type comp_loc_s_Nonterminal_Ptr is access all
      comp_loc_s_model.comp_loc_s_Nonterminal'Class;
   type align_opt_Nonterminal_Ptr is access all
      align_opt_model.align_opt_Nonterminal'Class;
   type record_type_spec_Nonterminal_Ptr is access all
      record_type_spec_model.record_type_spec_Nonterminal'Class;
   type attrib_def_Nonterminal_Ptr is access all
      attrib_def_model.attrib_def_Nonterminal'Class;
   type rep_spec_Nonterminal_Ptr is access all
      rep_spec_model.rep_spec_Nonterminal'Class;
   type generic_inst_Nonterminal_Ptr is access all
      generic_inst_model.generic_inst_Nonterminal'Class;
   type generic_pkg_inst_Nonterminal_Ptr is access all
      generic_pkg_inst_model.generic_pkg_inst_Nonterminal'Class;
   type generic_subp_inst_Nonterminal_Ptr is access all
      generic_subp_inst_model.generic_subp_inst_Nonterminal'Class;
   type generic_derived_type_Nonterminal_Ptr is access all
      generic_derived_type_model.generic_derived_type_Nonterminal'Class;
   type generic_type_def_Nonterminal_Ptr is access all
      generic_type_def_model.generic_type_def_Nonterminal'Class;
   type subp_default_Nonterminal_Ptr is access all
      subp_default_model.subp_default_Nonterminal'Class;
   type generic_discrim_part_opt_Nonterminal_Ptr is access all
      generic_discrim_part_opt_model.generic_discrim_part_opt_Nonterminal'Class;
   type generic_formal_Nonterminal_Ptr is access all
      generic_formal_model.generic_formal_Nonterminal'Class;
   type generic_formal_part_Nonterminal_Ptr is access all
      generic_formal_part_model.generic_formal_part_Nonterminal'Class;
   type generic_decl_Nonterminal_Ptr is access all
      generic_decl_model.generic_decl_Nonterminal'Class;
   type requeue_stmt_Nonterminal_Ptr is access all
      requeue_stmt_model.requeue_stmt_Nonterminal'Class;
   type raise_stmt_Nonterminal_Ptr is access all
      raise_stmt_model.raise_stmt_Nonterminal'Class;
   type except_choice_Nonterminal_Ptr is access all
      except_choice_model.except_choice_Nonterminal'Class;
   type except_choice_s_Nonterminal_Ptr is access all
      except_choice_s_model.except_choice_s_Nonterminal'Class;
   type exception_handler_Nonterminal_Ptr is access all
      exception_handler_model.exception_handler_Nonterminal'Class;
   type except_handler_part_Nonterminal_Ptr is access all
      except_handler_part_model.except_handler_part_Nonterminal'Class;
   type exception_decl_Nonterminal_Ptr is access all
      exception_decl_model.exception_decl_Nonterminal'Class;
   type body_stub_Nonterminal_Ptr is access all
      body_stub_model.body_stub_Nonterminal'Class;
   type subunit_body_Nonterminal_Ptr is access all
      subunit_body_model.subunit_body_Nonterminal'Class;
   type subunit_Nonterminal_Ptr is access all
      subunit_model.subunit_Nonterminal'Class;
   type unit_Nonterminal_Ptr is access all
      unit_model.unit_Nonterminal'Class;
   type use_clause_opt_Nonterminal_Ptr is access all
      use_clause_opt_model.use_clause_opt_Nonterminal'Class;
   type with_clause_Nonterminal_Ptr is access all
      with_clause_model.with_clause_Nonterminal'Class;
   type context_spec_Nonterminal_Ptr is access all
      context_spec_model.context_spec_Nonterminal'Class;
   type private_opt_Nonterminal_Ptr is access all
      private_opt_model.private_opt_Nonterminal'Class;
   type comp_unit_Nonterminal_Ptr is access all
      comp_unit_model.comp_unit_Nonterminal'Class;
   type compilation_Nonterminal_Ptr is access all
      compilation_model.compilation_Nonterminal'Class;
   type abort_stmt_Nonterminal_Ptr is access all
      abort_stmt_model.abort_stmt_Nonterminal'Class;
   type stmts_opt_Nonterminal_Ptr is access all
      stmts_opt_model.stmts_opt_Nonterminal'Class;
   type cond_entry_call_Nonterminal_Ptr is access all
      cond_entry_call_model.cond_entry_call_Nonterminal'Class;
   type timed_entry_call_Nonterminal_Ptr is access all
      timed_entry_call_model.timed_entry_call_Nonterminal'Class;
   type async_select_Nonterminal_Ptr is access all
      async_select_model.async_select_Nonterminal'Class;
   type delay_or_entry_alt_Nonterminal_Ptr is access all
      delay_or_entry_alt_model.delay_or_entry_alt_Nonterminal'Class;
   type select_alt_Nonterminal_Ptr is access all
      select_alt_model.select_alt_Nonterminal'Class;
   type or_select_Nonterminal_Ptr is access all
      or_select_model.or_select_Nonterminal'Class;
   type guarded_select_alt_Nonterminal_Ptr is access all
      guarded_select_alt_model.guarded_select_alt_Nonterminal'Class;
   type select_wait_Nonterminal_Ptr is access all
      select_wait_model.select_wait_Nonterminal'Class;
   type select_stmt_Nonterminal_Ptr is access all
      select_stmt_model.select_stmt_Nonterminal'Class;
   type delay_stmt_Nonterminal_Ptr is access all
      delay_stmt_model.delay_stmt_Nonterminal'Class;
   type entry_name_Nonterminal_Ptr is access all
      entry_name_model.entry_name_Nonterminal'Class;
   type accept_hdr_Nonterminal_Ptr is access all
      accept_hdr_model.accept_hdr_Nonterminal'Class;
   type accept_stmt_Nonterminal_Ptr is access all
      accept_stmt_model.accept_stmt_Nonterminal'Class;
   type entry_call_Nonterminal_Ptr is access all
      entry_call_model.entry_call_Nonterminal'Class;
   type rep_spec_s_Nonterminal_Ptr is access all
      rep_spec_s_model.rep_spec_s_Nonterminal'Class;
   type entry_body_part_Nonterminal_Ptr is access all
      entry_body_part_model.entry_body_part_Nonterminal'Class;
   type entry_body_Nonterminal_Ptr is access all
      entry_body_model.entry_body_Nonterminal'Class;
   type entry_decl_Nonterminal_Ptr is access all
      entry_decl_model.entry_decl_Nonterminal'Class;
   type entry_decl_s_Nonterminal_Ptr is access all
      entry_decl_s_model.entry_decl_s_Nonterminal'Class;
   type prot_op_body_Nonterminal_Ptr is access all
      prot_op_body_model.prot_op_body_Nonterminal'Class;
   type prot_op_body_s_Nonterminal_Ptr is access all
      prot_op_body_s_model.prot_op_body_s_Nonterminal'Class;
   type prot_body_Nonterminal_Ptr is access all
      prot_body_model.prot_body_Nonterminal'Class;
   type prot_elem_decl_Nonterminal_Ptr is access all
      prot_elem_decl_model.prot_elem_decl_Nonterminal'Class;
   type prot_elem_decl_s_Nonterminal_Ptr is access all
      prot_elem_decl_s_model.prot_elem_decl_s_Nonterminal'Class;
   type prot_op_decl_Nonterminal_Ptr is access all
      prot_op_decl_model.prot_op_decl_Nonterminal'Class;
   type prot_op_decl_s_Nonterminal_Ptr is access all
      prot_op_decl_s_model.prot_op_decl_s_Nonterminal'Class;
   type prot_private_opt_Nonterminal_Ptr is access all
      prot_private_opt_model.prot_private_opt_Nonterminal'Class;
   type prot_def_Nonterminal_Ptr is access all
      prot_def_model.prot_def_Nonterminal'Class;
   type prot_spec_Nonterminal_Ptr is access all
      prot_spec_model.prot_spec_Nonterminal'Class;
   type prot_decl_Nonterminal_Ptr is access all
      prot_decl_model.prot_decl_Nonterminal'Class;
   type task_body_Nonterminal_Ptr is access all
      task_body_model.task_body_Nonterminal'Class;
   type task_private_opt_Nonterminal_Ptr is access all
      task_private_opt_model.task_private_opt_Nonterminal'Class;
   type task_def_Nonterminal_Ptr is access all
      task_def_model.task_def_Nonterminal'Class;
   type opt_task_interfaces_Nonterminal_Ptr is access all
      opt_task_interfaces_model.opt_task_interfaces_Nonterminal'Class;
   type task_spec_Nonterminal_Ptr is access all
      task_spec_model.task_spec_Nonterminal'Class;
   type task_decl_Nonterminal_Ptr is access all
      task_decl_model.task_decl_Nonterminal'Class;
   type renaming_Nonterminal_Ptr is access all
      renaming_model.renaming_Nonterminal'Class;
   type rename_unit_Nonterminal_Ptr is access all
      rename_unit_model.rename_unit_Nonterminal'Class;
   type rename_decl_Nonterminal_Ptr is access all
      rename_decl_model.rename_decl_Nonterminal'Class;
   type name_s_Nonterminal_Ptr is access all
      name_s_model.name_s_Nonterminal'Class;
   type use_clause_Nonterminal_Ptr is access all
      use_clause_model.use_clause_Nonterminal'Class;
   type limited_opt_Nonterminal_Ptr is access all
      limited_opt_model.limited_opt_Nonterminal'Class;
   type private_type_Nonterminal_Ptr is access all
      private_type_model.private_type_Nonterminal'Class;
   type body_opt_Nonterminal_Ptr is access all
      body_opt_model.body_opt_Nonterminal'Class;
   type pkg_body_Nonterminal_Ptr is access all
      pkg_body_model.pkg_body_Nonterminal'Class;
   type c_id_opt_Nonterminal_Ptr is access all
      c_id_opt_model.c_id_opt_Nonterminal'Class;
   type private_part_Nonterminal_Ptr is access all
      private_part_model.private_part_Nonterminal'Class;
   type pkg_spec_Nonterminal_Ptr is access all
      pkg_spec_model.pkg_spec_Nonterminal'Class;
   type pkg_decl_Nonterminal_Ptr is access all
      pkg_decl_model.pkg_decl_Nonterminal'Class;
   type procedure_call_Nonterminal_Ptr is access all
      procedure_call_model.procedure_call_Nonterminal'Class;
   type subprog_body_Nonterminal_Ptr is access all
      subprog_body_model.subprog_body_Nonterminal'Class;
   type subprog_spec_is_push_Nonterminal_Ptr is access all
      subprog_spec_is_push_model.subprog_spec_is_push_Nonterminal'Class;
   type mode_Nonterminal_Ptr is access all
      mode_model.mode_Nonterminal'Class;
   type param_Nonterminal_Ptr is access all
      param_model.param_Nonterminal'Class;
   type param_s_Nonterminal_Ptr is access all
      param_s_model.param_s_Nonterminal'Class;
   type formal_part_Nonterminal_Ptr is access all
      formal_part_model.formal_part_Nonterminal'Class;
   type formal_part_opt_Nonterminal_Ptr is access all
      formal_part_opt_model.formal_part_opt_Nonterminal'Class;
   type designator_Nonterminal_Ptr is access all
      designator_model.designator_Nonterminal'Class;
   type subprog_spec_Nonterminal_Ptr is access all
      subprog_spec_model.subprog_spec_Nonterminal'Class;
   type subprog_decl_Nonterminal_Ptr is access all
      subprog_decl_model.subprog_decl_Nonterminal'Class;
   type goto_stmt_Nonterminal_Ptr is access all
      goto_stmt_model.goto_stmt_Nonterminal'Class;
   type return_stmt_Nonterminal_Ptr is access all
      return_stmt_model.return_stmt_Nonterminal'Class;
   type opt_do_block_Nonterminal_Ptr is access all
      opt_do_block_model.opt_do_block_Nonterminal'Class;
   type return_subtype_Nonterminal_Ptr is access all
      return_subtype_model.return_subtype_Nonterminal'Class;
   type opt_assign_Nonterminal_Ptr is access all
      opt_assign_model.opt_assign_Nonterminal'Class;
   type opt_aliased_Nonterminal_Ptr is access all
      opt_aliased_model.opt_aliased_Nonterminal'Class;
   type when_opt_Nonterminal_Ptr is access all
      when_opt_model.when_opt_Nonterminal'Class;
   type name_opt_Nonterminal_Ptr is access all
      name_opt_model.name_opt_Nonterminal'Class;
   type exit_stmt_Nonterminal_Ptr is access all
      exit_stmt_model.exit_stmt_Nonterminal'Class;
   type except_handler_part_opt_Nonterminal_Ptr is access all
      except_handler_part_opt_model.except_handler_part_opt_Nonterminal'Class;
   type handled_stmt_s_Nonterminal_Ptr is access all
      handled_stmt_s_model.handled_stmt_s_Nonterminal'Class;
   type block_body_Nonterminal_Ptr is access all
      block_body_model.block_body_Nonterminal'Class;
   type block_decl_Nonterminal_Ptr is access all
      block_decl_model.block_decl_Nonterminal'Class;
   type block_Nonterminal_Ptr is access all
      block_model.block_Nonterminal'Class;
   type id_opt_Nonterminal_Ptr is access all
      id_opt_model.id_opt_Nonterminal'Class;
   type basic_loop_Nonterminal_Ptr is access all
      basic_loop_model.basic_loop_Nonterminal'Class;
   type reverse_opt_Nonterminal_Ptr is access all
      reverse_opt_model.reverse_opt_Nonterminal'Class;
   type iter_part_Nonterminal_Ptr is access all
      iter_part_model.iter_part_Nonterminal'Class;
   type iteration_Nonterminal_Ptr is access all
      iteration_model.iteration_Nonterminal'Class;
   type label_opt_Nonterminal_Ptr is access all
      label_opt_model.label_opt_Nonterminal'Class;
   type loop_stmt_Nonterminal_Ptr is access all
      loop_stmt_model.loop_stmt_Nonterminal'Class;
   type alternative_Nonterminal_Ptr is access all
      alternative_model.alternative_Nonterminal'Class;
   type alternative_s_Nonterminal_Ptr is access all
      alternative_s_model.alternative_s_Nonterminal'Class;
   type case_hdr_Nonterminal_Ptr is access all
      case_hdr_model.case_hdr_Nonterminal'Class;
   type case_stmt_Nonterminal_Ptr is access all
      case_stmt_model.case_stmt_Nonterminal'Class;
   type else_opt_Nonterminal_Ptr is access all
      else_opt_model.else_opt_Nonterminal'Class;
   type condition_Nonterminal_Ptr is access all
      condition_model.condition_Nonterminal'Class;
   type cond_part_Nonterminal_Ptr is access all
      cond_part_model.cond_part_Nonterminal'Class;
   type cond_clause_Nonterminal_Ptr is access all
      cond_clause_model.cond_clause_Nonterminal'Class;
   type cond_clause_s_Nonterminal_Ptr is access all
      cond_clause_s_model.cond_clause_s_Nonterminal'Class;
   type if_stmt_Nonterminal_Ptr is access all
      if_stmt_model.if_stmt_Nonterminal'Class;
   type assign_stmt_Nonterminal_Ptr is access all
      assign_stmt_model.assign_stmt_Nonterminal'Class;
   type null_stmt_Nonterminal_Ptr is access all
      null_stmt_model.null_stmt_Nonterminal'Class;
   type label_Nonterminal_Ptr is access all
      label_model.label_Nonterminal'Class;
   type compound_stmt_Nonterminal_Ptr is access all
      compound_stmt_model.compound_stmt_Nonterminal'Class;
   type simple_stmt_Nonterminal_Ptr is access all
      simple_stmt_model.simple_stmt_Nonterminal'Class;
   type unlabeled_Nonterminal_Ptr is access all
      unlabeled_model.unlabeled_Nonterminal'Class;
   type statement_Nonterminal_Ptr is access all
      statement_model.statement_Nonterminal'Class;
   type statement_s_Nonterminal_Ptr is access all
      statement_s_model.statement_s_Nonterminal'Class;
   type allocator_Nonterminal_Ptr is access all
      allocator_model.allocator_Nonterminal'Class;
   type qualified_Nonterminal_Ptr is access all
      qualified_model.qualified_Nonterminal'Class;
   type parenthesized_primary_Nonterminal_Ptr is access all
      parenthesized_primary_model.parenthesized_primary_Nonterminal'Class;
   type primary_Nonterminal_Ptr is access all
      primary_model.primary_Nonterminal'Class;
   type factor_Nonterminal_Ptr is access all
      factor_model.factor_Nonterminal'Class;
   type multiplying_Nonterminal_Ptr is access all
      multiplying_model.multiplying_Nonterminal'Class;
   type term_Nonterminal_Ptr is access all
      term_model.term_Nonterminal'Class;
   type adding_Nonterminal_Ptr is access all
      adding_model.adding_Nonterminal'Class;
   type unary_Nonterminal_Ptr is access all
      unary_model.unary_Nonterminal'Class;
   type simple_expression_Nonterminal_Ptr is access all
      simple_expression_model.simple_expression_Nonterminal'Class;
   type membership_Nonterminal_Ptr is access all
      membership_model.membership_Nonterminal'Class;
   type relational_Nonterminal_Ptr is access all
      relational_model.relational_Nonterminal'Class;
   type relation_Nonterminal_Ptr is access all
      relation_model.relation_Nonterminal'Class;
   type logical_Nonterminal_Ptr is access all
      logical_model.logical_Nonterminal'Class;
   type expression_Nonterminal_Ptr is access all
      expression_model.expression_Nonterminal'Class;
   type comp_assoc_Nonterminal_Ptr is access all
      comp_assoc_model.comp_assoc_Nonterminal'Class;
   type value_s_2_Nonterminal_Ptr is access all
      value_s_2_model.value_s_2_Nonterminal'Class;
   type aggregate_Nonterminal_Ptr is access all
      aggregate_model.aggregate_Nonterminal'Class;
   type literal_Nonterminal_Ptr is access all
      literal_model.literal_Nonterminal'Class;
   type attribute_id_Nonterminal_Ptr is access all
      attribute_id_model.attribute_id_Nonterminal'Class;
   type attribute_Nonterminal_Ptr is access all
      attribute_model.attribute_Nonterminal'Class;
   type selected_comp_Nonterminal_Ptr is access all
      selected_comp_model.selected_comp_Nonterminal'Class;
   type value_Nonterminal_Ptr is access all
      value_model.value_Nonterminal'Class;
   type value_s_Nonterminal_Ptr is access all
      value_s_model.value_s_Nonterminal'Class;
   type indexed_comp_Nonterminal_Ptr is access all
      indexed_comp_model.indexed_comp_Nonterminal'Class;
   type operator_symbol_Nonterminal_Ptr is access all
      operator_symbol_model.operator_symbol_Nonterminal'Class;
   type used_char_Nonterminal_Ptr is access all
      used_char_model.used_char_Nonterminal'Class;
   type c_name_list_Nonterminal_Ptr is access all
      c_name_list_model.c_name_list_Nonterminal'Class;
   type compound_name_Nonterminal_Ptr is access all
      compound_name_model.compound_name_Nonterminal'Class;
   type simple_name_Nonterminal_Ptr is access all
      simple_name_model.simple_name_Nonterminal'Class;
   type mark_Nonterminal_Ptr is access all
      mark_model.mark_Nonterminal'Class;
   type name_Nonterminal_Ptr is access all
      name_model.name_Nonterminal'Class;
   type body_nt_Nonterminal_Ptr is access all
      body_nt_model.body_nt_Nonterminal'Class;
   type decl_item_or_body_Nonterminal_Ptr is access all
      decl_item_or_body_model.decl_item_or_body_Nonterminal'Class;
   type decl_item_or_body_s1_Nonterminal_Ptr is access all
      decl_item_or_body_s1_model.decl_item_or_body_s1_Nonterminal'Class;
   type decl_item_Nonterminal_Ptr is access all
      decl_item_model.decl_item_Nonterminal'Class;
   type decl_item_s1_Nonterminal_Ptr is access all
      decl_item_s1_model.decl_item_s1_Nonterminal'Class;
   type decl_item_s_Nonterminal_Ptr is access all
      decl_item_s_model.decl_item_s_Nonterminal'Class;
   type decl_part_Nonterminal_Ptr is access all
      decl_part_model.decl_part_Nonterminal'Class;
   type prot_opt_Nonterminal_Ptr is access all
      prot_opt_model.prot_opt_Nonterminal'Class;
   type access_type_Nonterminal_Ptr is access all
      access_type_model.access_type_Nonterminal'Class;
   type not_null_opt_access_Nonterminal_Ptr is access all
      not_null_opt_access_model.not_null_opt_access_Nonterminal'Class;
   type not_null_opt_Nonterminal_Ptr is access all
      not_null_opt_model.not_null_opt_Nonterminal'Class;
   type discrete_with_range_Nonterminal_Ptr is access all
      discrete_with_range_model.discrete_with_range_Nonterminal'Class;
   type choice_Nonterminal_Ptr is access all
      choice_model.choice_Nonterminal'Class;
   type choice_s_Nonterminal_Ptr is access all
      choice_s_model.choice_s_Nonterminal'Class;
   type variant_Nonterminal_Ptr is access all
      variant_model.variant_Nonterminal'Class;
   type variant_s_Nonterminal_Ptr is access all
      variant_s_model.variant_s_Nonterminal'Class;
   type variant_part_Nonterminal_Ptr is access all
      variant_part_model.variant_part_Nonterminal'Class;
   type access_opt_Nonterminal_Ptr is access all
      access_opt_model.access_opt_Nonterminal'Class;
   type discrim_spec_Nonterminal_Ptr is access all
      discrim_spec_model.discrim_spec_Nonterminal'Class;
   type discrim_spec_s_Nonterminal_Ptr is access all
      discrim_spec_s_model.discrim_spec_s_Nonterminal'Class;
   type discrim_part_Nonterminal_Ptr is access all
      discrim_part_model.discrim_part_Nonterminal'Class;
   type comp_decl_Nonterminal_Ptr is access all
      comp_decl_model.comp_decl_Nonterminal'Class;
   type variant_part_opt_Nonterminal_Ptr is access all
      variant_part_opt_model.variant_part_opt_Nonterminal'Class;
   type comp_decl_s_Nonterminal_Ptr is access all
      comp_decl_s_model.comp_decl_s_Nonterminal'Class;
   type comp_list_Nonterminal_Ptr is access all
      comp_list_model.comp_list_Nonterminal'Class;
   type tagged_opt_Nonterminal_Ptr is access all
      tagged_opt_model.tagged_opt_Nonterminal'Class;
   type record_def_Nonterminal_Ptr is access all
      record_def_model.record_def_Nonterminal'Class;
   type record_type_Nonterminal_Ptr is access all
      record_type_model.record_type_Nonterminal'Class;
   type range_constr_opt_Nonterminal_Ptr is access all
      range_constr_opt_model.range_constr_opt_Nonterminal'Class;
   type discrete_range_Nonterminal_Ptr is access all
      discrete_range_model.discrete_range_Nonterminal'Class;
   type iter_discrete_range_s_Nonterminal_Ptr is access all
      iter_discrete_range_s_model.iter_discrete_range_s_Nonterminal'Class;
   type iter_index_constraint_Nonterminal_Ptr is access all
      iter_index_constraint_model.iter_index_constraint_Nonterminal'Class;
   type index_Nonterminal_Ptr is access all
      index_model.index_Nonterminal'Class;
   type index_s_Nonterminal_Ptr is access all
      index_s_model.index_s_Nonterminal'Class;
   type aliased_opt_Nonterminal_Ptr is access all
      aliased_opt_model.aliased_opt_Nonterminal'Class;
   type component_subtype_def_Nonterminal_Ptr is access all
      component_subtype_def_model.component_subtype_def_Nonterminal'Class;
   type constr_array_type_Nonterminal_Ptr is access all
      constr_array_type_model.constr_array_type_Nonterminal'Class;
   type unconstr_array_type_Nonterminal_Ptr is access all
      unconstr_array_type_model.unconstr_array_type_Nonterminal'Class;
   type array_type_Nonterminal_Ptr is access all
      array_type_model.array_type_Nonterminal'Class;
   type fixed_type_Nonterminal_Ptr is access all
      fixed_type_model.fixed_type_Nonterminal'Class;
   type float_type_Nonterminal_Ptr is access all
      float_type_model.float_type_Nonterminal'Class;
   type real_type_Nonterminal_Ptr is access all
      real_type_model.real_type_Nonterminal'Class;
   type range_spec_opt_Nonterminal_Ptr is access all
      range_spec_opt_model.range_spec_opt_Nonterminal'Class;
   type range_spec_Nonterminal_Ptr is access all
      range_spec_model.range_spec_Nonterminal'Class;
   type integer_type_Nonterminal_Ptr is access all
      integer_type_model.integer_type_Nonterminal'Class;
   type interface_type_Nonterminal_Ptr is access all
      interface_type_model.interface_type_Nonterminal'Class;
   type enum_id_Nonterminal_Ptr is access all
      enum_id_model.enum_id_Nonterminal'Class;
   type enum_id_s_Nonterminal_Ptr is access all
      enum_id_s_model.enum_id_s_Nonterminal'Class;
   type enumeration_type_Nonterminal_Ptr is access all
      enumeration_type_model.enumeration_type_Nonterminal'Class;
   type range_sym_Nonterminal_Ptr is access all
      range_sym_model.range_sym_Nonterminal'Class;
   type range_constraint_Nonterminal_Ptr is access all
      range_constraint_model.range_constraint_Nonterminal'Class;
   type derived_type_Nonterminal_Ptr is access all
      derived_type_model.derived_type_Nonterminal'Class;
   type opt_interface_list_Nonterminal_Ptr is access all
      opt_interface_list_model.opt_interface_list_Nonterminal'Class;
   type decimal_digits_constraint_Nonterminal_Ptr is access all
      decimal_digits_constraint_model.decimal_digits_constraint_Nonterminal'Class;
   type constraint_Nonterminal_Ptr is access all
      constraint_model.constraint_Nonterminal'Class;
   type subtype_ind_Nonterminal_Ptr is access all
      subtype_ind_model.subtype_ind_Nonterminal'Class;
   type subtype_decl_Nonterminal_Ptr is access all
      subtype_decl_model.subtype_decl_Nonterminal'Class;
   type type_def_Nonterminal_Ptr is access all
      type_def_model.type_def_Nonterminal'Class;
   type type_completion_Nonterminal_Ptr is access all
      type_completion_model.type_completion_Nonterminal'Class;
   type discrim_part_opt_Nonterminal_Ptr is access all
      discrim_part_opt_model.discrim_part_opt_Nonterminal'Class;
   type type_decl_Nonterminal_Ptr is access all
      type_decl_model.type_decl_Nonterminal'Class;
   type number_decl_Nonterminal_Ptr is access all
      number_decl_model.number_decl_Nonterminal'Class;
   type init_opt_Nonterminal_Ptr is access all
      init_opt_model.init_opt_Nonterminal'Class;
   type object_subtype_def_Nonterminal_Ptr is access all
      object_subtype_def_model.object_subtype_def_Nonterminal'Class;
   type object_qualifier_opt_Nonterminal_Ptr is access all
      object_qualifier_opt_model.object_qualifier_opt_Nonterminal'Class;
   type def_id_Nonterminal_Ptr is access all
      def_id_model.def_id_Nonterminal'Class;
   type def_id_s_Nonterminal_Ptr is access all
      def_id_s_model.def_id_s_Nonterminal'Class;
   type object_decl_Nonterminal_Ptr is access all
      object_decl_model.object_decl_Nonterminal'Class;
   type decl_Nonterminal_Ptr is access all
      decl_model.decl_Nonterminal'Class;
   type pragma_s_Nonterminal_Ptr is access all
      pragma_s_model.pragma_s_Nonterminal'Class;
   type pragma_arg_Nonterminal_Ptr is access all
      pragma_arg_model.pragma_arg_Nonterminal'Class;
   type pragma_arg_s_Nonterminal_Ptr is access all
      pragma_arg_s_model.pragma_arg_s_Nonterminal'Class;
   type pragma_sym_Nonterminal_Ptr is access all
      pragma_sym_model.pragma_sym_Nonterminal'Class;
   type CHAR_STRING_Nonterminal_Ptr is access all
      CHAR_STRING_model.CHAR_STRING_Nonterminal'Class;
   type NE_Nonterminal_Ptr is access all
      NE_model.NE_Nonterminal'Class;
   type LT_EQ_Nonterminal_Ptr is access all
      LT_EQ_model.LT_EQ_Nonterminal'Class;
   type GE_Nonterminal_Ptr is access all
      GE_model.GE_Nonterminal'Class;
   type LT_LT_Nonterminal_Ptr is access all
      LT_LT_model.LT_LT_Nonterminal'Class;
   type GT_GT_Nonterminal_Ptr is access all
      GT_GT_model.GT_GT_Nonterminal'Class;
   type CHAR_LIT_Nonterminal_Ptr is access all
      CHAR_LIT_model.CHAR_LIT_Nonterminal'Class;
   type NUMERIC_LIT_Nonterminal_Ptr is access all
      NUMERIC_LIT_model.NUMERIC_LIT_Nonterminal'Class;
   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      Put_Line(S & " on line " &          integer'image(ada05.Get_Current_Line));
   end YYError;

##%procedure_parse

   procedure Run(Filename : in String) is
   begin
      ada05.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      ada05.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end ada05_Parser;
