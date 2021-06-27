
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

procedure YYParse is

   -- Rename User Defined Packages to Internal Names.
    package yy_goto_tables         renames
      Test_Goto;
    package yy_shift_reduce_tables renames
      Test_Shift_Reduce;
    package yy_tokens              renames
      Test_Tokens;

   package yy2_tokens renames Language_YY2_Lexical_Analyzer;
   use yy2_tokens;
   use yy_tokens, yy_goto_tables, yy_shift_reduce_tables;

   procedure yyerrok;
   procedure yyclearin;


   package yy is

       -- the size of the value and state stacks
       stack_size : constant Natural := 300;

       -- subtype rule         is natural;
       subtype parse_state  is natural;
       -- subtype nonterminal  is integer;

       -- encryption constants
       default           : constant := -1;
       first_shift_entry : constant :=  0;
       accept_code       : constant := -6001;
       error_code        : constant := -6000;

       -- stack data used by the parser
       tos                : natural := 0;
       value_stack        : array(0..stack_size) of yy_tokens.yystype;
       state_stack        : array(0..stack_size) of parse_state;

       -- current input symbol and action the parser is on
       action             : integer;
       rule_id            : rule;
       input_symbol       : yy2_tokens.token;


       -- error recovery flag
       error_flag : natural := 0;
          -- indicates  3 - (number of valid shifts after an error occurs)

       look_ahead : boolean := true;
       index      : integer;

       -- Is Debugging option on or off
        DEBUG : constant boolean := FALSE;

    end yy;


    function goto_state
      (state : yy.parse_state;
       sym   : nonterminal) return yy.parse_state;

    function parse_action
      (state : yy.parse_state;
       t     : yy2_tokens.token) return integer;

    pragma inline(goto_state, parse_action);


    function goto_state(state : yy.parse_state;
                        sym   : nonterminal) return yy.parse_state is
        index : integer;
    begin
        index := goto_offset(state);
        while  integer(goto_matrix(index).nonterm) /= sym loop
            index := index + 1;
        end loop;
        return integer(goto_matrix(index).newstate);
    end goto_state;


    function parse_action(state : yy.parse_state;
                          t     : yy2_tokens.token) return integer is
        index      : integer;
        tok_pos    : integer;
        default    : constant integer := -1;
    begin
        tok_pos := yy2_tokens.token'pos(t);
        index   := shift_reduce_offset(state);
        while integer(shift_reduce_matrix(index).t) /= tok_pos and then
              integer(shift_reduce_matrix(index).t) /= default
        loop
            index := index + 1;
        end loop;
        return integer(shift_reduce_matrix(index).act);
    end parse_action;

-- error recovery stuff

    procedure handle_error is
      temp_action : integer;
    begin

      if yy.error_flag = 3 then -- no shift yet, clobber input.
      if yy.debug then
          text_io.put_line("Ayacc.YYParse: Error Recovery Clobbers " &
                   yy2_tokens.token'image(yy.input_symbol));
      end if;
        if yy.input_symbol = yy2_tokens.end_of_input then  -- don't discard,
        if yy.debug then
            text_io.put_line("Ayacc.YYParse: Can't discard END_OF_INPUT, quiting...");
        end if;
        raise yy_tokens.syntax_error;
        end if;

            yy.look_ahead := true;   -- get next token
        return;                  -- and try again...
    end if;

    if yy.error_flag = 0 then -- brand new error
        yyerror("Syntax Error");
    end if;

    yy.error_flag := 3;

    -- find state on stack where error is a valid shift --

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Looking for state with error as valid shift");
    end if;

    loop
        if yy.debug then
          text_io.put_line("Ayacc.YYParse: Examining State " &
               yy.parse_state'image(yy.state_stack(yy.tos)));
        end if;
        temp_action := parse_action(yy.state_stack(yy.tos), error);

            if temp_action >= yy.first_shift_entry then
                if yy.tos = yy.stack_size then
                    text_io.put_line(" Stack size exceeded on state_stack");
                    raise yy_Tokens.syntax_error;
                end if;
                yy.tos := yy.tos + 1;
                yy.state_stack(yy.tos) := temp_action;
                exit;
            end if;

        Decrement_Stack_Pointer :
        begin
          yy.tos := yy.tos - 1;
        exception
          when Constraint_Error =>
            yy.tos := 0;
        end Decrement_Stack_Pointer;

        if yy.tos = 0 then
          if yy.debug then
            text_io.put_line("Ayacc.YYParse: Error recovery popped entire stack, aborting...");
          end if;
          raise yy_tokens.syntax_error;
        end if;
    end loop;

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Shifted error token in state " &
              yy.parse_state'image(yy.state_stack(yy.tos)));
    end if;

    end handle_error;

   -- print debugging information for a shift operation
   procedure shift_debug(state_id: yy.parse_state; lexeme: yy2_tokens.token) is
   begin
       text_io.put_line("Ayacc.YYParse: Shift "& yy.parse_state'image(state_id)&" on input symbol "&
               yy2_tokens.token'image(lexeme) );
   end;

   -- print debugging information for a reduce operation
   procedure reduce_debug(rule_id: rule; state_id: yy.parse_state) is
   begin
       text_io.put_line("Ayacc.YYParse: Reduce by rule "&rule'image(rule_id)&" goto state "&
               yy.parse_state'image(state_id));
   end;

   -- make the parser believe that 3 valid shifts have occured.
   -- used for error recovery.
   procedure yyerrok is
   begin
       yy.error_flag := 0;
   end yyerrok;

   -- called to clear input symbol that caused an error.
   procedure yyclearin is
   begin
       -- yy.input_symbol := Get_Token;
       yy.look_ahead := true;
   end yyclearin;


begin
    -- initialize by pushing state 0 and getting the first input symbol
    yy.state_stack(yy.tos) := 0;


    loop

        yy.index := shift_reduce_offset(yy.state_stack(yy.tos));
        if integer(shift_reduce_matrix(yy.index).t) = yy.default then
            yy.action := integer(shift_reduce_matrix(yy.index).act);
        else
            if yy.look_ahead then
                yy.look_ahead   := false;

                yy.input_symbol := Get_Token;
            end if;
            yy.action :=
             parse_action(yy.state_stack(yy.tos), yy.input_symbol);
        end if;


        if yy.action >= yy.first_shift_entry then  -- SHIFT

            if yy.debug then
                shift_debug(yy.action, yy.input_symbol);
            end if;

            -- Enter new state
            if yy.tos = yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.tos := yy.tos + 1;
            yy.state_stack(yy.tos) := yy.action;
              yy.value_stack(yy.tos) := yylval;

        if yy.error_flag > 0 then  -- indicate a valid shift
            yy.error_flag := yy.error_flag - 1;
        end if;

            -- Advance lookahead
            yy.look_ahead := true;

        elsif yy.action = yy.error_code then       -- ERROR

            handle_error;

        elsif yy.action = yy.accept_code then
            if yy.debug then
                text_io.put_line("Ayacc.YYParse: Accepting Grammar...");
            end if;
            exit;

        else -- Reduce Action

            -- Convert action into a rule
            yy.rule_id  := -1 * yy.action;

            -- Execute User Action
            -- user_action(yy.rule_id);


                case yy.rule_id is

when  1 =>
--#line  44
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WRITE_token); 

when  2 =>
--#line  48
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); 

when  3 =>
--#line  52
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); 

when  4 =>
--#line  56
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); 

when  5 =>
--#line  60
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RECORD_token); 

when  6 =>
--#line  64
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REAL_token); 

when  7 =>
--#line  68
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,READ_token); 

when  8 =>
--#line  72
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); 

when  9 =>
--#line  76
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); 

when  10 =>
--#line  80
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OPEN_token); 

when  11 =>
--#line  84
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); 

when  12 =>
--#line  88
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); 

when  13 =>
--#line  92
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTEGER_token); 

when  14 =>
--#line  96
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); 

when  15 =>
--#line  100
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FUNCTION_token); 

when  16 =>
--#line  104
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); 

when  17 =>
--#line  108
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); 

when  18 =>
--#line  112
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DO_token); 

when  19 =>
--#line  116
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CLOSE_token); 

when  20 =>
--#line  120
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BOOLEAN_token); 

when  21 =>
--#line  124
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); 

when  22 =>
--#line  128
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); 

when  23 =>
--#line  132
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); 

when  24 =>
--#line  137
 Parse_Tree := 
yy.value_stack(yy.tos); 

when  25 =>
--#line  140

   
yyval := new A_nonterminal1;
   A_nonterminal1(
yyval.all).A_part :=    A_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   A_nonterminal1(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   A_nonterminal1(
yyval.all).B_part :=    B_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  26 =>
--#line  146

   
yyval := new A_nonterminal2;
   A_nonterminal2(
yyval.all).B_part :=    B_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  27 =>
--#line  152

   
yyval := new B_nonterminal1;
   B_nonterminal1(
yyval.all).B_part :=    B_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   B_nonterminal1(
yyval.all).OPEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   B_nonterminal1(
yyval.all).C_part :=    C_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  28 =>
--#line  158

   
yyval := new B_nonterminal2;
   B_nonterminal2(
yyval.all).C_part :=    C_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  29 =>
--#line  164

   
yyval := new C_nonterminal;
   C_nonterminal(
yyval.all).WRITE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

                    when others => null;
                end case;


            -- Pop RHS states and goto next state
            yy.tos      := yy.tos - rule_length(yy.rule_id) + 1;
            if yy.tos > yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.state_stack(yy.tos) := goto_state(yy.state_stack(yy.tos-1) ,
                                 get_lhs_rule(yy.rule_id));

              yy.value_stack(yy.tos) := yyval;

            if yy.debug then
                reduce_debug(yy.rule_id,
                    goto_state(yy.state_stack(yy.tos - 1),
                               get_lhs_rule(yy.rule_id)));
            end if;

        end if;


    end loop;


end yyparse;

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
