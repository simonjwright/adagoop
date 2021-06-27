----------------------------------------------------------------------------
--                  written for use with aflex
----------------------------------------------------------------------------
--/*------------------------------------------------------------------------*/
--/* Lexical input for AFLEX for LALR(1) Grammar for ANSI Ada95             */
--/*                                                                        */
--/*               Dean R. Runzel                                           */
--/*      Monmouth College, West Long Branch, NJ                            */
--/*               February 16, 1995                                        */
--/*                                                                        */
--/* Accompanies Public Domain AYACC format Ada95 grammar                   */
--/*                                                                        */
--/* This work is based upon previous work performed by:                    */
--/*                                                                        */
--/* Herman Fischer  Litton Data Systems  1984                              */
--/* C. Schaefer                          1991                              */
--/* C. Howell                            1991                              */
--/* Richard Conn    Mitre, Inc.          1993                              */
--/*                 Intermetrics, Inc.   1994                              */
--/*                                                                        */
--/* This work is copyrighted by the author.                                */
--/*                                                                        */
--/* Please see the Parse95 reader for the complete text of all copyrights  */
--/* and acknowledgements.                                                  */
--/*                                                                        */
--/*------------------------------------------------------------------------*/

token_macros
DIGIT            [0-9]
EXTENDED_DIGIT   [0-9a-fA-F]
INTEGER          ({DIGIT}(_?{DIGIT})*)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}(\.?{INTEGER})?{EXPONENT}?
BASE             {INTEGER}
BASED_INTEGER    {EXTENDED_DIGIT}(_?{EXTENDED_DIGIT})*
BASED_LITERAL    {BASE}#{BASED_INTEGER}(\.{BASED_INTEGER})?#{EXPONENT}?
IDENTIFIER       [a-zA-Z]("_"?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

tokens
-- Reserved Words
ABORT   [aA][bB][oO][rR][tT]                
ABS   [aA][bB][sS]                        
ABSTRACT   [aA][bB][sS][tT][rR][aA][cC][tT]
ACCEPT   [aA][cC][cC][eE][pP][tT]            
ACCESS   [aA][cC][cC][eE][sS][sS]            
ALIASED   [aA][lL][iI][aA][sS][eE][dD]        
ALL   [aA][lL][lL]                        
AND   [aA][nN][dD]                        
ARRAY   [aA][rR][rR][aA][yY]                
AT   [aA][tT]                            

BEGIN   [bB][eE][gG][iI][nN]                
BODY   [bB][oO][dD][yY]                    
CASE   [cC][aA][sS][eE]                    
CONSTANT   [cC][oO][nN][sS][tT][aA][nN][tT]    

DECLARE   [dD][eE][cC][lL][aA][rR][eE]        
DELAY   [dD][eE][lL][aA][yY]                
DELTA   [dD][eE][lL][tT][aA]                
DIGITS   [dD][iI][gG][iI][tT][sS]           
DO   [dD][oO]                            

ELSE   [eE][lL][sS][eE]                    
ELSIF   [eE][lL][sS][iI][fF]                
END   [eE][nN][dD]                        
ENTRY   [eE][nN][tT][rR][yY]                
EXCEPTION   [eE][xX][cC][eE][pP][tT][iI][oO][nN] 
EXIT   [eE][xX][iI][tT]                    
FOR   [fF][oO][rR]                        
FUNCTION   [fF][uU][nN][cC][tT][iI][oO][nN]    

GENERIC   [gG][eE][nN][eE][rR][iI][cC]        
GOTO   [gG][oO][tT][oO]                    

IF   [iI][fF]                            
IN   [iI][nN]                            
IS   [iI][sS]                            

LIMITED   [lL][iI][mM][iI][tT][eE][dD]        
LOOP   [lL][oO][oO][pP]                    

MOD   [mM][oO][dD]                        

NEW   [nN][eE][wW]                        
NOT   [nN][oO][tT]                        
NULL   [nN][uU][lL][lL]                    

OF   [oO][fF]                            
OR   [oO][rR]                            
OTHERS   [oO][tT][hH][eE][rR][sS]            
OUT   [oO][uU][tT]                        

PACKAGE   [pP][aA][cC][kK][aA][gG][eE]        
PRAGMA   [pP][rR][aA][gG][mM][aA]            
PRIVATE   [pP][rR][iI][vV][aA][tT][eE]        
PROCEDURE   [pP][rR][oO][cC][eE][dD][uU][rR][eE] 
PROTECTED   [pP][rR][oO][tT][eE][cC][tT][eE][dD] 

RAISE   [rR][aA][iI][sS][eE]                
RANGE   [rR][aA][nN][gG][eE]                
RECORD   [rR][eE][cC][oO][rR][dD]           
REM   [rR][eE][mM]                       
RENAMES   [rR][eE][nN][aA][mM][eE][sS]        
REQUEUE   [rR][eE][qQ][uU][eE][uU][eE]       
RETURN   [rR][eE][tT][uU][rR][nN]            
REVERSE   [rR][eE][vV][eE][rR][sS][eE]       

SELECT   [sS][eE][lL][eE][cC][tT]            
SEPARATE   [sS][eE][pP][aA][rR][aA][tT][eE]    
SUBTYPE   [sS][uU][bB][tT][yY][pP][eE]        

TAGGED   [tT][aA][gG][gG][eE][dD]           
TASK   [tT][aA][sS][kK]                    
TERMINATE   [tT][eE][rR][mM][iI][nN][aA][tT][eE] 
THEN   [tT][hH][eE][nN]                    
TYPE   [tT][yY][pP][eE]                   

UNTIL   [uU][nN][tT][iI][lL]                
USE   [uU][sS][eE]                        

WHEN   [wW][hH][eE][nN]                    
WHILE   [wW][hH][iI][lL][eE]                
WITH   [wW][iI][tT][hH]                    

XOR   [xX][oO][rR]                       

-- Delimiters
ARROW   "=>"    
DOUBLE_DOT  ".."    
EXPONENT   "**"    
ASSIGNMENT   ":="    
INEQUALITY "/="    
GREATER_THAN_OR_EQUAL   ">="   
LESS_THAN_OR_EQUAL   "<="   
LEFT_LABEL_BRACKET  "<<"   
RIGHT_LABEL_BRACKET   ">>"    
BOX  "<>"    
CONCAT  "&"    
L_PAREN   "("     
R_PAREN   ")"     
STAR   "*"    
PLUS   "+"     
COMMA   ","     
MINUS   "-"     
DOT   "."     
SLASH   "/"     
COLON   ":"     
SEMICOLON   ";"     
LT   "<"     
EQ   "="     
GT   ">"     
PIPE   "|"     
BANG   "!"     
TICK   "'"     

-- Literals
IDENTIFIER       {IDENTIFIER}         
DECIMAL_LITERAL  {DECIMAL_LITERAL}     
BASED_LITERAL    {BASED_LITERAL}      
STRING_LITERAL   {STRING_LITERAL}      
CHAR_LITERAL     {CHAR_LITERAL}       
--Some code removed here related to dealing with situations like x'a'b that make
--dealing with one character literals a little harder

-- Whitespace and Comments
--Must be "ignore", special connotations for ADAGoop
--all directives must be lower case!
ignore   "--".*        

global_methods
Print
Translate

--Ada95 grammar goes here
grammar
%start compilation


NUMERIC_LIT : DECIMAL_LITERAL
            | BASED_LITERAL
            ;

CHAR_LIT : CHAR_LITERAL
            ;

GT_GT : RIGHT_LABEL_BRACKET
      ;

LT_LT : LEFT_LABEL_BRACKET
      ;

GE : GREATER_THAN_OR_EQUAL
   ;

LT_EQ : LESS_THAN_OR_EQUAL
      ;

NE : INEQUALITY
   ;

CHAR_STRING : STRING_LITERAL
   ;

pragma_sym  : PRAGMA identifier SEMICOLON
	| PRAGMA simple_name L_PAREN pragma_arg_s R_PAREN SEMICOLON
	;

pragma_arg_s : pragma_arg
	| pragma_arg_s COMMA pragma_arg
	;

pragma_arg : expression
	| simple_name ARROW expression
	;

pragma_s :
	| pragma_s pragma_sym
	;

decl    : object_decl
	| number_decl
	| type_decl
	| subtype_decl
	| subprog_decl
	| pkg_decl
	| task_decl
	| prot_decl
	| exception_decl
	| rename_decl
	| generic_decl
	| body_stub
	;

object_decl : def_id_s COLON object_qualifier_opt object_subtype_def init_opt SEMICOLON
	;

def_id_s : def_id
	| def_id_s COMMA def_id
	;

def_id  : identifier
	;

object_qualifier_opt :
	| aliased
	| CONSTANT
	| aliased CONSTANT
	;

object_subtype_def : subtype_ind
	| array_type
	;

init_opt :
	| ASSIGNMENT expression
	;

number_decl : def_id_s COLON CONSTANT ASSIGNMENT expression SEMICOLON
	;

type_decl : TYPE identifier discrim_part_opt type_completion SEMICOLON
	;

discrim_part_opt :
	| discrim_part
	| L_PAREN BOX R_PAREN
	;

type_completion :
	| IS type_def
	;

type_def : enumeration_type 
	| integer_type
	| real_type
	| array_type
	| record_type
	| access_type
	| derived_type
	| private_type
	;

subtype_decl : SUBTYPE identifier IS subtype_ind SEMICOLON
	;

subtype_ind : name constraint
	| name
	;

constraint : range_constraint
	| decimal_digits_constraint
	;

decimal_digits_constraint : DIGITS expression range_constr_opt
	;

derived_type : NEW subtype_ind
	| NEW subtype_ind WITH PRIVATE
	| NEW subtype_ind WITH record_def
	| abstract NEW subtype_ind WITH PRIVATE
	| abstract NEW subtype_ind WITH record_def
	;

range_constraint : RANGE range_sym
	;

range_sym : simple_expression DOUBLE_DOT simple_expression
	| name TICK RANGE
	| name TICK RANGE L_PAREN expression R_PAREN
	;

enumeration_type : L_PAREN enum_id_s R_PAREN
        ;

enum_id_s : enum_id
	| enum_id_s COMMA enum_id
	;

enum_id : identifier
	| char_lit
	;

integer_type : range_spec
	| MOD expression
	;
	

range_spec : range_constraint
	;

range_spec_opt :
	| range_spec
	;

real_type : float_type
	| fixed_type
	;

float_type : DIGITS expression range_spec_opt
	;

fixed_type : DELTA expression range_spec
	| DELTA expression DIGITS expression range_spec_opt
	;

array_type : unconstr_array_type
	| constr_array_type
	;

unconstr_array_type : ARRAY L_PAREN index_s R_PAREN OF component_subtype_def
	;

constr_array_type : ARRAY iter_index_constraint OF component_subtype_def
	;

component_subtype_def : aliased_opt subtype_ind
	;

aliased_opt : 
	| aliased
	;

index_s : index
	| index_s COMMA index
	;

index : name RANGE BOX
	;

iter_index_constraint : L_PAREN iter_discrete_range_s R_PAREN
	;

iter_discrete_range_s : discrete_range
	| iter_discrete_range_s COMMA discrete_range
	;

discrete_range : name range_constr_opt
	| range_sym
	;

range_constr_opt :
	| range_constraint
	;

record_type : tagged_opt limited_opt record_def
	;

record_def : RECORD pragma_s comp_list END RECORD
	| NULL RECORD
	;

tagged_opt :
	| TAGGED
	| abstract TAGGED
	;

comp_list : comp_decl_s variant_part_opt
	| variant_part pragma_s
	| NULL SEMICOLON pragma_s
	;

comp_decl_s : comp_decl
	| comp_decl_s pragma_s comp_decl
	;

variant_part_opt : pragma_s
	| pragma_s variant_part pragma_s
	;

comp_decl : def_id_s COLON component_subtype_def init_opt SEMICOLON
	;

discrim_part : L_PAREN discrim_spec_s R_PAREN
	;

discrim_spec_s : discrim_spec
	| discrim_spec_s SEMICOLON discrim_spec
	;

discrim_spec : def_id_s COLON access_opt mark init_opt
	;

access_opt :
	| ACCESS
	;

variant_part : CASE simple_name IS pragma_s variant_s END CASE SEMICOLON
	;

variant_s : variant
	| variant_s variant
	;

variant : WHEN choice_s ARROW pragma_s comp_list
	;

choice_s : choice
	| choice_s PIPE choice
	;

choice : expression
	| discrete_with_range
	| OTHERS
	;

discrete_with_range : name range_constraint
	| range_sym
	;

access_type : ACCESS subtype_ind
	| ACCESS CONSTANT subtype_ind
	| ACCESS all subtype_ind
	| ACCESS prot_opt PROCEDURE formal_part_opt
	| ACCESS prot_opt FUNCTION formal_part_opt RETURN mark
	;

prot_opt :
	| PROTECTED
	;

decl_part :
	| decl_item_or_body_s1
	;

decl_item_s : 
	| decl_item_s1
	;

decl_item_s1 : decl_item
	| decl_item_s1 decl_item
	;

decl_item : decl
	| use_clause
	| rep_spec
	| pragma_sym
	;

decl_item_or_body_s1 : decl_item_or_body
	| decl_item_or_body_s1 decl_item_or_body
	;

decl_item_or_body : body_nt
	| decl_item
	;

body_nt : subprog_body
	| pkg_body
	| task_body
	| prot_body
	;

name : simple_name
	| indexed_comp
	| selected_comp
	| attribute
	| operator_symbol
	;

mark : simple_name
	| mark TICK attribute_id
	| mark DOT simple_name
	;

simple_name : identifier 
	;

compound_name : simple_name
	| compound_name DOT simple_name
	;

c_name_list : compound_name
	 | c_name_list COMMA compound_name
	;

used_char : char_lit
	;

operator_symbol : char_string
	;

indexed_comp : name L_PAREN value_s R_PAREN
	;

value_s : value
	| value_s COMMA value
	;

value : expression
	| comp_assoc
	| discrete_with_range
	;

selected_comp : name DOT simple_name
	| name DOT used_char
	| name DOT operator_symbol
	| name DOT all
	;

attribute : name TICK attribute_id
	;

attribute_id : identifier
	| DIGITS
	| DELTA
	| ACCESS
	;

literal : numeric_lit
	| used_char
	| NULL
	;

aggregate : L_PAREN comp_assoc R_PAREN
	| L_PAREN value_s_2 R_PAREN
	| L_PAREN expression WITH value_s R_PAREN
	| L_PAREN expression WITH NULL RECORD R_PAREN
	| L_PAREN NULL RECORD R_PAREN
	;

value_s_2 : value COMMA value
	| value_s_2 COMMA value
	;

comp_assoc : choice_s ARROW expression 
	;

expression : relation
	| expression logical relation
	| expression short_circuit relation
	;

logical : and
	| OR
	| XOR
	;

short_circuit : and THEN
	| OR ELSE
	;

relation : simple_expression
	| simple_expression relational simple_expression
	| simple_expression membership range_sym
	| simple_expression membership name
	;

relational : EQ
	| NE
	| LT
	| LT_EQ
	| GT
	| GE
	;

membership : IN
	| NOT IN
	;

simple_expression : unary term
	| term
	| simple_expression adding term
	;

unary   : PLUS
	| MINUS
	;

adding  : PLUS
	| MINUS
	| CONCAT
	;

term    : factor
	| term multiplying factor
	;

multiplying : star
	| SLASH
	| MOD
	| REM
	;

factor : primary
	| NOT primary
	| abs primary
	| primary EXPONENT primary
	;

primary : literal
	| name
	| allocator
	| qualified
	| parenthesized_primary
	;

parenthesized_primary : aggregate
	| L_PAREN expression R_PAREN
	;

qualified : name TICK parenthesized_primary
	;

allocator : NEW name
	| NEW qualified
	;

statement_s : statement
	| statement_s statement
	;

statement : unlabeled
	| label statement
	;

unlabeled : simple_stmt
	| compound_stmt
	| pragma_sym
	;

simple_stmt : null_stmt
	| assign_stmt
	| exit_stmt
	| return_stmt
	| goto_stmt
	| procedure_call
	| delay_stmt
	| abort_stmt
	| raise_stmt
	| code_stmt
	| requeue_stmt
	;

compound_stmt : if_stmt
	| case_stmt
	| loop_stmt
	| block
	| accept_stmt
	| select_stmt
	;

label : LT_LT identifier GT_GT
	;

null_stmt : NULL SEMICOLON
	;

assign_stmt : name ASSIGNMENT  expression SEMICOLON
	;

if_stmt : IF cond_clause_s else_opt END IF SEMICOLON
	;

cond_clause_s : cond_clause
	| cond_clause_s ELSIF cond_clause
	;

cond_clause : cond_part statement_s
	;

cond_part : condition THEN
	;

condition : expression
	;

else_opt :
	| ELSE statement_s
	;

case_stmt : case_hdr pragma_s alternative_s END CASE SEMICOLON
	;

case_hdr : CASE expression IS
	;

alternative_s :
	| alternative_s alternative
	;

alternative : WHEN choice_s ARROW statement_s
	;

loop_stmt : label_opt iteration basic_loop id_opt SEMICOLON
	;

label_opt :
	| identifier COLON
	;

iteration :
	| WHILE condition
	| iter_part reverse_opt discrete_range
	;

iter_part : FOR identifier IN
	;

reverse_opt :
	| REVERSE
	;

basic_loop : LOOP statement_s END LOOP
	;

id_opt :
	| designator
	;

block : label_opt block_decl block_body END id_opt SEMICOLON
	;

block_decl :
	| DECLARE decl_part
	;

block_body : BEGIN handled_stmt_s
	;

handled_stmt_s : statement_s except_handler_part_opt 
	; 

except_handler_part_opt :
	| except_handler_part
	;

exit_stmt : EXIT name_opt when_opt SEMICOLON
	;

name_opt :
	| name
	;

when_opt :
	| WHEN condition
	;

return_stmt : RETURN SEMICOLON
	| RETURN expression SEMICOLON
	;

goto_stmt : GOTO name SEMICOLON
	;

subprog_decl : subprog_spec SEMICOLON
	| generic_subp_inst SEMICOLON
	| subprog_spec_is_push abstract SEMICOLON
	;

subprog_spec : PROCEDURE compound_name formal_part_opt
	| FUNCTION designator formal_part_opt RETURN name
--  for generic inst and generic rename 
	| FUNCTION designator 

	;

designator : compound_name
	| char_string
	;

formal_part_opt : 
	| formal_part
	;

formal_part : L_PAREN param_s R_PAREN
	;

param_s : param
	| param_s SEMICOLON param
	;

param : def_id_s COLON mode mark init_opt
	;

mode :
	| IN
	| OUT
	| IN OUT
	| ACCESS
	;

subprog_spec_is_push : subprog_spec IS
	;

subprog_body : subprog_spec_is_push
	       decl_part block_body END id_opt SEMICOLON
	;

procedure_call : name SEMICOLON
	;

pkg_decl : pkg_spec SEMICOLON
	| generic_pkg_inst SEMICOLON
	;

pkg_spec : PACKAGE compound_name IS 
	     decl_item_s private_part END c_id_opt
       ;
private_part :
	| PRIVATE decl_item_s
	;

c_id_opt : 
	| compound_name
	;

pkg_body : PACKAGE BODY compound_name IS
	       decl_part body_opt END c_id_opt SEMICOLON
	;

body_opt :
	| block_body
	;

private_type : tagged_opt limited_opt PRIVATE
	;

limited_opt :
	| LIMITED
	;

use_clause : USE name_s SEMICOLON
	| USE TYPE name_s SEMICOLON
	;

name_s : name
	| name_s COMMA name
	;

rename_decl : def_id_s COLON object_qualifier_opt subtype_ind renaming SEMICOLON
        | def_id_s COLON EXCEPTION renaming SEMICOLON
	| rename_unit
	;

rename_unit : PACKAGE compound_name renaming SEMICOLON
        | subprog_spec renaming SEMICOLON
        | generic_formal_part PACKAGE compound_name renaming SEMICOLON
        | generic_formal_part subprog_spec renaming SEMICOLON
	;

renaming : RENAMES name
	;

task_decl : task_spec SEMICOLON
	;

task_spec : TASK simple_name task_def
	| TASK TYPE simple_name discrim_part_opt task_def
	;

task_def :
	| IS entry_decl_s rep_spec_s task_private_opt END id_opt
	;

task_private_opt :
	| PRIVATE entry_decl_s rep_spec_s
	;

task_body : TASK BODY simple_name IS
	       decl_part block_body END id_opt SEMICOLON
	;

prot_decl : prot_spec SEMICOLON
	;

prot_spec : PROTECTED identifier prot_def
	| PROTECTED TYPE simple_name discrim_part_opt prot_def
	;

prot_def : IS prot_op_decl_s prot_private_opt END id_opt
	;

prot_private_opt :
	| PRIVATE prot_elem_decl_s 
        ;
     
prot_op_decl_s : 
	| prot_op_decl_s prot_op_decl
	;

prot_op_decl : entry_decl
	| subprog_spec SEMICOLON
	| rep_spec
	| pragma_sym
	;

prot_elem_decl_s : 
	| prot_elem_decl_s prot_elem_decl
	;

prot_elem_decl : prot_op_decl | comp_decl ;

prot_body : PROTECTED BODY simple_name IS
	       prot_op_body_s END id_opt SEMICOLON
	;

prot_op_body_s : pragma_s
	| prot_op_body_s prot_op_body pragma_s
	;

prot_op_body : entry_body
	| subprog_body
	| subprog_spec SEMICOLON
	;

entry_decl_s : pragma_s
	| entry_decl_s entry_decl pragma_s
	;

entry_decl : ENTRY identifier formal_part_opt SEMICOLON
	| ENTRY identifier L_PAREN discrete_range R_PAREN formal_part_opt SEMICOLON
	;

entry_body : ENTRY identifier formal_part_opt WHEN 
                condition entry_body_part
	| ENTRY identifier L_PAREN iter_part discrete_range R_PAREN 
		formal_part_opt WHEN condition entry_body_part
	;

entry_body_part : SEMICOLON
	| IS decl_part block_body END id_opt SEMICOLON
	;

rep_spec_s :
	| rep_spec_s rep_spec pragma_s
	;

entry_call : procedure_call
	;

accept_stmt : accept_hdr SEMICOLON
	| accept_hdr DO handled_stmt_s END id_opt SEMICOLON
	;

accept_hdr : accept entry_name formal_part_opt
	;

entry_name : simple_name
	| entry_name L_PAREN expression R_PAREN
	;

delay_stmt : DELAY expression SEMICOLON
	| DELAY UNTIL expression SEMICOLON
	;

select_stmt : select_wait
	| async_select
	| timed_entry_call
	| cond_entry_call
	;

select_wait : SELECT guarded_select_alt or_select else_opt
	      END SELECT SEMICOLON
	;

guarded_select_alt : select_alt
	| WHEN condition ARROW select_alt
	;

or_select :
	| or_select OR guarded_select_alt
	;

select_alt : accept_stmt stmts_opt
	| delay_stmt stmts_opt
	| TERMINATE SEMICOLON
	;

delay_or_entry_alt : delay_stmt stmts_opt
	| entry_call stmts_opt
        ;

async_select : SELECT delay_or_entry_alt
	       THEN abort statement_s
	       END SELECT SEMICOLON
	;

timed_entry_call : SELECT entry_call stmts_opt 
		   OR delay_stmt stmts_opt
	           END SELECT SEMICOLON
	;

cond_entry_call : SELECT entry_call stmts_opt 
		  ELSE statement_s
	          END SELECT SEMICOLON
	;

stmts_opt :
	| statement_s
	;

abort_stmt : abort name_s SEMICOLON
	;

compilation :
	| compilation comp_unit
	| pragma_sym pragma_s
	;

comp_unit : context_spec private_opt unit pragma_s
	| private_opt unit pragma_s
	;

private_opt :
	| PRIVATE
	;

context_spec : with_clause use_clause_opt
	| context_spec with_clause use_clause_opt
	| context_spec pragma_sym
	;

with_clause : WITH c_name_list SEMICOLON
	;

use_clause_opt :
	| use_clause_opt use_clause
	;

unit : pkg_decl
	| pkg_body
	| subprog_decl
	| subprog_body
	| subunit
	| generic_decl
	| rename_unit
	;

subunit : SEPARATE L_PAREN compound_name R_PAREN
	      subunit_body
	;

subunit_body : subprog_body
	| pkg_body
	| task_body
	| prot_body
	;

body_stub : TASK BODY simple_name IS SEPARATE SEMICOLON
	| PACKAGE BODY compound_name IS SEPARATE SEMICOLON
	| subprog_spec IS SEPARATE SEMICOLON
	| PROTECTED BODY simple_name IS SEPARATE SEMICOLON
	;

exception_decl : def_id_s COLON EXCEPTION SEMICOLON
	;

except_handler_part : EXCEPTION exception_handler
	| except_handler_part exception_handler
	;

exception_handler : WHEN except_choice_s ARROW statement_s
	| WHEN identifier COLON except_choice_s ARROW statement_s
	;

except_choice_s : except_choice
	| except_choice_s PIPE except_choice
	;

except_choice : name
	| OTHERS
	;

raise_stmt : RAISE name_opt SEMICOLON
	;

requeue_stmt : REQUEUE name SEMICOLON
	| REQUEUE name WITH abort SEMICOLON
	;

generic_decl : generic_formal_part subprog_spec SEMICOLON
	| generic_formal_part pkg_spec SEMICOLON
	;

generic_formal_part : GENERIC
	| generic_formal_part generic_formal
	;

generic_formal : param SEMICOLON
	| TYPE simple_name generic_discrim_part_opt IS 
             generic_type_def SEMICOLON
	| WITH PROCEDURE simple_name 
	    formal_part_opt subp_default SEMICOLON
	| WITH FUNCTION designator 
	    formal_part_opt RETURN name subp_default SEMICOLON
	| WITH PACKAGE simple_name IS NEW 
            name L_PAREN BOX R_PAREN SEMICOLON
	| WITH PACKAGE simple_name IS NEW name SEMICOLON
	| use_clause
	;

generic_discrim_part_opt :
	| discrim_part
	| L_PAREN BOX R_PAREN
	;

subp_default :
	| IS name
	| IS BOX
	;

generic_type_def : L_PAREN BOX R_PAREN
	| RANGE BOX
	| MOD BOX
	| DELTA BOX
	| DELTA BOX DIGITS BOX
	| DIGITS BOX
	| array_type
	| access_type
	| private_type
	| generic_derived_type
	;

generic_derived_type : NEW subtype_ind
	| NEW subtype_ind WITH PRIVATE
	| abstract NEW subtype_ind WITH PRIVATE
	;

generic_subp_inst : subprog_spec IS generic_inst
	;

generic_pkg_inst : PACKAGE compound_name IS generic_inst
	;

generic_inst : NEW name
	;

rep_spec : attrib_def
	| record_type_spec
	| address_spec
	;

attrib_def : FOR mark USE expression SEMICOLON
	;

record_type_spec : FOR mark USE RECORD
                     align_opt comp_loc_s END RECORD SEMICOLON
	;

align_opt :
	| AT MOD expression SEMICOLON
	;

comp_loc_s :
	| comp_loc_s mark AT expression RANGE range_sym SEMICOLON
	;

address_spec : FOR mark USE AT expression SEMICOLON
	;

code_stmt : qualified SEMICOLON
	;
 
