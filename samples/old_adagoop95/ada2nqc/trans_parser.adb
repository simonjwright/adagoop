
with Text_IO;
use Text_IO;
with trans;
use trans;
with trans_Goto;
use trans_Goto;
with trans_Shift_Reduce;
use trans_Shift_Reduce;
with trans_Tokens;
use trans_Tokens;
package body trans_Parser is
   package Language_YY2_Lexical_Analyzer renames trans;
   use Language_YY2_Lexical_Analyzer;

   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      Put_Line("Syntax error on line " &          integer'image(trans.Get_Current_Line));
   end YYError;

procedure YYParse is

   -- Rename User Defined Packages to Internal Names.
    package yy_goto_tables         renames
      Trans_Goto;
    package yy_shift_reduce_tables renames
      Trans_Shift_Reduce;
    package yy_tokens              renames
      Trans_Tokens;

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
       accept_code       : constant := -3001;
       error_code        : constant := -3000;

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
--#line  122
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CHAR_LITERAL_token); 

when  2 =>
--#line  126
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_LITERAL_token); 

when  3 =>
--#line  130
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BASED_LITERAL_token); 

when  4 =>
--#line  134
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECIMAL_LITERAL_token); 

when  5 =>
--#line  138
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IDENTIFIER_token); 

when  6 =>
--#line  142
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TICK_token); 

when  7 =>
--#line  146
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BANG_token); 

when  8 =>
--#line  150
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PIPE_token); 

when  9 =>
--#line  154
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GT_token); 

when  10 =>
--#line  158
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EQ_token); 

when  11 =>
--#line  162
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LT_token); 

when  12 =>
--#line  166
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEMICOLON_token); 

when  13 =>
--#line  170
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COLON_token); 

when  14 =>
--#line  174
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SLASH_token); 

when  15 =>
--#line  178
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOT_token); 

when  16 =>
--#line  182
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MINUS_token); 

when  17 =>
--#line  186
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMA_token); 

when  18 =>
--#line  190
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PLUS_token); 

when  19 =>
--#line  194
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STAR_token); 

when  20 =>
--#line  198
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,R_PAREN_token); 

when  21 =>
--#line  202
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,L_PAREN_token); 

when  22 =>
--#line  206
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CONCAT_token); 

when  23 =>
--#line  210
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BOX_token); 

when  24 =>
--#line  214
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RIGHT_LABEL_BRACKET_token); 

when  25 =>
--#line  218
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LEFT_LABEL_BRACKET_token); 

when  26 =>
--#line  222
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LESS_THAN_OR_EQUAL_token); 

when  27 =>
--#line  226
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GREATER_THAN_OR_EQUAL_token); 

when  28 =>
--#line  230
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INEQUALITY_token); 

when  29 =>
--#line  234
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ASSIGNMENT_token); 

when  30 =>
--#line  238
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXPONENT_token); 

when  31 =>
--#line  242
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_DOT_token); 

when  32 =>
--#line  246
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARROW_token); 

when  33 =>
--#line  250
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,XOR_token); 

when  34 =>
--#line  254
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WITH_token); 

when  35 =>
--#line  258
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); 

when  36 =>
--#line  262
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHEN_token); 

when  37 =>
--#line  266
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,USE_token); 

when  38 =>
--#line  270
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,UNTIL_token); 

when  39 =>
--#line  274
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); 

when  40 =>
--#line  278
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); 

when  41 =>
--#line  282
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TERMINATE_token); 

when  42 =>
--#line  286
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TASK_token); 

when  43 =>
--#line  290
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TAGGED_token); 

when  44 =>
--#line  294
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SUBTYPE_token); 

when  45 =>
--#line  298
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEPARATE_token); 

when  46 =>
--#line  302
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SELECT_token); 

when  47 =>
--#line  306
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REVERSE_token); 

when  48 =>
--#line  310
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RETURN_token); 

when  49 =>
--#line  314
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REQUEUE_token); 

when  50 =>
--#line  318
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RENAMES_token); 

when  51 =>
--#line  322
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REM_token); 

when  52 =>
--#line  326
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RECORD_token); 

when  53 =>
--#line  330
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANGE_token); 

when  54 =>
--#line  334
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RAISE_token); 

when  55 =>
--#line  338
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROTECTED_token); 

when  56 =>
--#line  342
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); 

when  57 =>
--#line  346
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRIVATE_token); 

when  58 =>
--#line  350
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRAGMA_token); 

when  59 =>
--#line  354
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PACKAGE_token); 

when  60 =>
--#line  358
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OUT_token); 

when  61 =>
--#line  362
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OTHERS_token); 

when  62 =>
--#line  366
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); 

when  63 =>
--#line  370
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); 

when  64 =>
--#line  374
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NULL_token); 

when  65 =>
--#line  378
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); 

when  66 =>
--#line  382
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NEW_token); 

when  67 =>
--#line  386
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MOD_token); 

when  68 =>
--#line  390
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LOOP_token); 

when  69 =>
--#line  394
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LIMITED_token); 

when  70 =>
--#line  398
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IS_token); 

when  71 =>
--#line  402
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IN_token); 

when  72 =>
--#line  406
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); 

when  73 =>
--#line  410
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GOTO_token); 

when  74 =>
--#line  414
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GENERIC_token); 

when  75 =>
--#line  418
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FUNCTION_token); 

when  76 =>
--#line  422
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FOR_token); 

when  77 =>
--#line  426
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXIT_token); 

when  78 =>
--#line  430
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXCEPTION_token); 

when  79 =>
--#line  434
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ENTRY_token); 

when  80 =>
--#line  438
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); 

when  81 =>
--#line  442
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSIF_token); 

when  82 =>
--#line  446
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); 

when  83 =>
--#line  450
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DO_token); 

when  84 =>
--#line  454
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DIGITS_token); 

when  85 =>
--#line  458
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELTA_token); 

when  86 =>
--#line  462
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELAY_token); 

when  87 =>
--#line  466
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECLARE_token); 

when  88 =>
--#line  470
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CONSTANT_token); 

when  89 =>
--#line  474
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CASE_token); 

when  90 =>
--#line  478
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BODY_token); 

when  91 =>
--#line  482
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); 

when  92 =>
--#line  486
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AT_token); 

when  93 =>
--#line  490
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); 

when  94 =>
--#line  494
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); 

when  95 =>
--#line  498
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALL_token); 

when  96 =>
--#line  502
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALIASED_token); 

when  97 =>
--#line  506
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCESS_token); 

when  98 =>
--#line  510
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCEPT_token); 

when  99 =>
--#line  514
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABSTRACT_token); 

when  100 =>
--#line  518
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABS_token); 

when  101 =>
--#line  522
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABORT_token); 

when  102 =>
--#line  527
 Parse_Tree := 
yy.value_stack(yy.tos); 

when  103 =>
--#line  530

   
yyval := new NUMERIC_LIT_nonterminal1;
   NUMERIC_LIT_nonterminal1(
yyval.all).DECIMAL_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  104 =>
--#line  534

   
yyval := new NUMERIC_LIT_nonterminal2;
   NUMERIC_LIT_nonterminal2(
yyval.all).BASED_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  105 =>
--#line  540

   
yyval := new CHAR_LIT_nonterminal;
   CHAR_LIT_nonterminal(
yyval.all).CHAR_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  106 =>
--#line  546

   
yyval := new GT_GT_nonterminal;
   GT_GT_nonterminal(
yyval.all).RIGHT_LABEL_BRACKET_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  107 =>
--#line  552

   
yyval := new LT_LT_nonterminal;
   LT_LT_nonterminal(
yyval.all).LEFT_LABEL_BRACKET_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  108 =>
--#line  558

   
yyval := new GE_nonterminal;
   GE_nonterminal(
yyval.all).GREATER_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  109 =>
--#line  564

   
yyval := new LT_EQ_nonterminal;
   LT_EQ_nonterminal(
yyval.all).LESS_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  110 =>
--#line  570

   
yyval := new NE_nonterminal;
   NE_nonterminal(
yyval.all).INEQUALITY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  111 =>
--#line  576

   
yyval := new CHAR_STRING_nonterminal;
   CHAR_STRING_nonterminal(
yyval.all).STRING_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  112 =>
--#line  582

   
yyval := new pragma_sym_nonterminal1;
   pragma_sym_nonterminal1(
yyval.all).PRAGMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   pragma_sym_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_sym_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  113 =>
--#line  588

   
yyval := new pragma_sym_nonterminal2;
   pragma_sym_nonterminal2(
yyval.all).PRAGMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   pragma_sym_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   pragma_sym_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   pragma_sym_nonterminal2(
yyval.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_sym_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_sym_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  114 =>
--#line  599

   
yyval := new pragma_arg_s_nonterminal1;
   pragma_arg_s_nonterminal1(
yyval.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  115 =>
--#line  603

   
yyval := new pragma_arg_s_nonterminal2;
   pragma_arg_s_nonterminal2(
yyval.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_arg_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_arg_s_nonterminal2(
yyval.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  116 =>
--#line  611

   
yyval := new pragma_arg_nonterminal1;
   pragma_arg_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  117 =>
--#line  615

   
yyval := new pragma_arg_nonterminal2;
   pragma_arg_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_arg_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_arg_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  118 =>
--#line  623

   
yyval := new pragma_s_nonterminal1;
   

when  119 =>
--#line  626

   
yyval := new pragma_s_nonterminal2;
   pragma_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pragma_s_nonterminal2(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  120 =>
--#line  633

   
yyval := new decl_nonterminal1;
   decl_nonterminal1(
yyval.all).object_decl_part :=    object_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  121 =>
--#line  637

   
yyval := new decl_nonterminal2;
   decl_nonterminal2(
yyval.all).number_decl_part :=    number_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  122 =>
--#line  641

   
yyval := new decl_nonterminal3;
   decl_nonterminal3(
yyval.all).type_decl_part :=    type_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  123 =>
--#line  645

   
yyval := new decl_nonterminal4;
   decl_nonterminal4(
yyval.all).subtype_decl_part :=    subtype_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  124 =>
--#line  649

   
yyval := new decl_nonterminal5;
   decl_nonterminal5(
yyval.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  125 =>
--#line  653

   
yyval := new decl_nonterminal6;
   decl_nonterminal6(
yyval.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  126 =>
--#line  657

   
yyval := new decl_nonterminal7;
   decl_nonterminal7(
yyval.all).task_decl_part :=    task_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  127 =>
--#line  661

   
yyval := new decl_nonterminal8;
   decl_nonterminal8(
yyval.all).prot_decl_part :=    prot_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  128 =>
--#line  665

   
yyval := new decl_nonterminal9;
   decl_nonterminal9(
yyval.all).exception_decl_part :=    exception_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  129 =>
--#line  669

   
yyval := new decl_nonterminal10;
   decl_nonterminal10(
yyval.all).rename_decl_part :=    rename_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  130 =>
--#line  673

   
yyval := new decl_nonterminal11;
   decl_nonterminal11(
yyval.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  131 =>
--#line  677

   
yyval := new decl_nonterminal12;
   decl_nonterminal12(
yyval.all).body_stub_part :=    body_stub_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  132 =>
--#line  683

   
yyval := new object_decl_nonterminal;
   object_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   object_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   object_decl_nonterminal(
yyval.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   object_decl_nonterminal(
yyval.all).object_subtype_def_part :=    object_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   object_decl_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   object_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  133 =>
--#line  694

   
yyval := new def_id_s_nonterminal1;
   def_id_s_nonterminal1(
yyval.all).def_id_part :=    def_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  134 =>
--#line  698

   
yyval := new def_id_s_nonterminal2;
   def_id_s_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   def_id_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   def_id_s_nonterminal2(
yyval.all).def_id_part :=    def_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  135 =>
--#line  706

   
yyval := new def_id_nonterminal;
   def_id_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  136 =>
--#line  712

   
yyval := new object_qualifier_opt_nonterminal1;
   

when  137 =>
--#line  715

   
yyval := new object_qualifier_opt_nonterminal2;
   object_qualifier_opt_nonterminal2(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  138 =>
--#line  719

   
yyval := new object_qualifier_opt_nonterminal3;
   object_qualifier_opt_nonterminal3(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  139 =>
--#line  723

   
yyval := new object_qualifier_opt_nonterminal4;
   object_qualifier_opt_nonterminal4(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   object_qualifier_opt_nonterminal4(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  140 =>
--#line  730

   
yyval := new object_subtype_def_nonterminal1;
   object_subtype_def_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  141 =>
--#line  734

   
yyval := new object_subtype_def_nonterminal2;
   object_subtype_def_nonterminal2(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  142 =>
--#line  740

   
yyval := new init_opt_nonterminal1;
   

when  143 =>
--#line  743

   
yyval := new init_opt_nonterminal2;
   init_opt_nonterminal2(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   init_opt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  144 =>
--#line  750

   
yyval := new number_decl_nonterminal;
   number_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   number_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   number_decl_nonterminal(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   number_decl_nonterminal(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   number_decl_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   number_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  145 =>
--#line  761

   
yyval := new type_decl_nonterminal;
   type_decl_nonterminal(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   type_decl_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   type_decl_nonterminal(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   type_decl_nonterminal(
yyval.all).type_completion_part :=    type_completion_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   type_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  146 =>
--#line  771

   
yyval := new discrim_part_opt_nonterminal1;
   

when  147 =>
--#line  774

   
yyval := new discrim_part_opt_nonterminal2;
   discrim_part_opt_nonterminal2(
yyval.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  148 =>
--#line  778

   
yyval := new discrim_part_opt_nonterminal3;
   discrim_part_opt_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_part_opt_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   discrim_part_opt_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  149 =>
--#line  786

   
yyval := new type_completion_nonterminal1;
   

when  150 =>
--#line  789

   
yyval := new type_completion_nonterminal2;
   type_completion_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   type_completion_nonterminal2(
yyval.all).type_def_part :=    type_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  151 =>
--#line  796

   
yyval := new type_def_nonterminal1;
   type_def_nonterminal1(
yyval.all).enumeration_type_part :=    enumeration_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  152 =>
--#line  800

   
yyval := new type_def_nonterminal2;
   type_def_nonterminal2(
yyval.all).integer_type_part :=    integer_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  153 =>
--#line  804

   
yyval := new type_def_nonterminal3;
   type_def_nonterminal3(
yyval.all).real_type_part :=    real_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  154 =>
--#line  808

   
yyval := new type_def_nonterminal4;
   type_def_nonterminal4(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  155 =>
--#line  812

   
yyval := new type_def_nonterminal5;
   type_def_nonterminal5(
yyval.all).record_type_part :=    record_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  156 =>
--#line  816

   
yyval := new type_def_nonterminal6;
   type_def_nonterminal6(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  157 =>
--#line  820

   
yyval := new type_def_nonterminal7;
   type_def_nonterminal7(
yyval.all).derived_type_part :=    derived_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  158 =>
--#line  824

   
yyval := new type_def_nonterminal8;
   type_def_nonterminal8(
yyval.all).private_type_part :=    private_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  159 =>
--#line  830

   
yyval := new subtype_decl_nonterminal;
   subtype_decl_nonterminal(
yyval.all).SUBTYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subtype_decl_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subtype_decl_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subtype_decl_nonterminal(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subtype_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  160 =>
--#line  840

   
yyval := new subtype_ind_nonterminal1;
   subtype_ind_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subtype_ind_nonterminal1(
yyval.all).constraint_part :=    constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  161 =>
--#line  845

   
yyval := new subtype_ind_nonterminal2;
   subtype_ind_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  162 =>
--#line  851

   
yyval := new constraint_nonterminal1;
   constraint_nonterminal1(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  163 =>
--#line  855

   
yyval := new constraint_nonterminal2;
   constraint_nonterminal2(
yyval.all).decimal_digits_constraint_part :=    decimal_digits_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  164 =>
--#line  861

   
yyval := new decimal_digits_constraint_nonterminal;
   decimal_digits_constraint_nonterminal(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   decimal_digits_constraint_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decimal_digits_constraint_nonterminal(
yyval.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  165 =>
--#line  869

   
yyval := new derived_type_nonterminal1;
   derived_type_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  166 =>
--#line  874

   
yyval := new derived_type_nonterminal2;
   derived_type_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  167 =>
--#line  881

   
yyval := new derived_type_nonterminal3;
   derived_type_nonterminal3(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal3(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  168 =>
--#line  888

   
yyval := new derived_type_nonterminal4;
   derived_type_nonterminal4(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal4(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal4(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal4(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  169 =>
--#line  896

   
yyval := new derived_type_nonterminal5;
   derived_type_nonterminal5(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal5(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal5(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal5(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal5(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  170 =>
--#line  906

   
yyval := new range_constraint_nonterminal;
   range_constraint_nonterminal(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_constraint_nonterminal(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  171 =>
--#line  913

   
yyval := new range_sym_nonterminal1;
   range_sym_nonterminal1(
yyval.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal1(
yyval.all).DOUBLE_DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal1(
yyval.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  172 =>
--#line  919

   
yyval := new range_sym_nonterminal2;
   range_sym_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal2(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  173 =>
--#line  925

   
yyval := new range_sym_nonterminal3;
   range_sym_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   range_sym_nonterminal3(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   range_sym_nonterminal3(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   range_sym_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal3(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  174 =>
--#line  936

   
yyval := new enumeration_type_nonterminal;
   enumeration_type_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   enumeration_type_nonterminal(
yyval.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   enumeration_type_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  175 =>
--#line  944

   
yyval := new enum_id_s_nonterminal1;
   enum_id_s_nonterminal1(
yyval.all).enum_id_part :=    enum_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  176 =>
--#line  948

   
yyval := new enum_id_s_nonterminal2;
   enum_id_s_nonterminal2(
yyval.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   enum_id_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   enum_id_s_nonterminal2(
yyval.all).enum_id_part :=    enum_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  177 =>
--#line  956

   
yyval := new enum_id_nonterminal1;
   enum_id_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  178 =>
--#line  960

   
yyval := new enum_id_nonterminal2;
   enum_id_nonterminal2(
yyval.all).char_lit_part :=    char_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  179 =>
--#line  966

   
yyval := new integer_type_nonterminal1;
   integer_type_nonterminal1(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  180 =>
--#line  970

   
yyval := new integer_type_nonterminal2;
   integer_type_nonterminal2(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   integer_type_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  181 =>
--#line  977

   
yyval := new range_spec_nonterminal;
   range_spec_nonterminal(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  182 =>
--#line  983

   
yyval := new range_spec_opt_nonterminal1;
   

when  183 =>
--#line  986

   
yyval := new range_spec_opt_nonterminal2;
   range_spec_opt_nonterminal2(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  184 =>
--#line  992

   
yyval := new real_type_nonterminal1;
   real_type_nonterminal1(
yyval.all).float_type_part :=    float_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  185 =>
--#line  996

   
yyval := new real_type_nonterminal2;
   real_type_nonterminal2(
yyval.all).fixed_type_part :=    fixed_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  186 =>
--#line  1002

   
yyval := new float_type_nonterminal;
   float_type_nonterminal(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   float_type_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   float_type_nonterminal(
yyval.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  187 =>
--#line  1010

   
yyval := new fixed_type_nonterminal1;
   fixed_type_nonterminal1(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   fixed_type_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   fixed_type_nonterminal1(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  188 =>
--#line  1016

   
yyval := new fixed_type_nonterminal2;
   fixed_type_nonterminal2(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   fixed_type_nonterminal2(
yyval.all).expression_part1 :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   fixed_type_nonterminal2(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   fixed_type_nonterminal2(
yyval.all).expression_part2 :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   fixed_type_nonterminal2(
yyval.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  189 =>
--#line  1026

   
yyval := new array_type_nonterminal1;
   array_type_nonterminal1(
yyval.all).unconstr_array_type_part :=    unconstr_array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  190 =>
--#line  1030

   
yyval := new array_type_nonterminal2;
   array_type_nonterminal2(
yyval.all).constr_array_type_part :=    constr_array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  191 =>
--#line  1036

   
yyval := new unconstr_array_type_nonterminal;
   unconstr_array_type_nonterminal(
yyval.all).ARRAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   unconstr_array_type_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   unconstr_array_type_nonterminal(
yyval.all).index_s_part :=    index_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   unconstr_array_type_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   unconstr_array_type_nonterminal(
yyval.all).OF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   unconstr_array_type_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  192 =>
--#line  1047

   
yyval := new constr_array_type_nonterminal;
   constr_array_type_nonterminal(
yyval.all).ARRAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   constr_array_type_nonterminal(
yyval.all).iter_index_constraint_part :=    iter_index_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   constr_array_type_nonterminal(
yyval.all).OF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   constr_array_type_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  193 =>
--#line  1056

   
yyval := new component_subtype_def_nonterminal;
   component_subtype_def_nonterminal(
yyval.all).aliased_opt_part :=    aliased_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   component_subtype_def_nonterminal(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  194 =>
--#line  1063

   
yyval := new aliased_opt_nonterminal1;
   

when  195 =>
--#line  1066

   
yyval := new aliased_opt_nonterminal2;
   aliased_opt_nonterminal2(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  196 =>
--#line  1072

   
yyval := new index_s_nonterminal1;
   index_s_nonterminal1(
yyval.all).index_part :=    index_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  197 =>
--#line  1076

   
yyval := new index_s_nonterminal2;
   index_s_nonterminal2(
yyval.all).index_s_part :=    index_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   index_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   index_s_nonterminal2(
yyval.all).index_part :=    index_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  198 =>
--#line  1084

   
yyval := new index_nonterminal;
   index_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   index_nonterminal(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   index_nonterminal(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  199 =>
--#line  1092

   
yyval := new iter_index_constraint_nonterminal;
   iter_index_constraint_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   iter_index_constraint_nonterminal(
yyval.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   iter_index_constraint_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  200 =>
--#line  1100

   
yyval := new iter_discrete_range_s_nonterminal1;
   iter_discrete_range_s_nonterminal1(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  201 =>
--#line  1104

   
yyval := new iter_discrete_range_s_nonterminal2;
   iter_discrete_range_s_nonterminal2(
yyval.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   iter_discrete_range_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iter_discrete_range_s_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  202 =>
--#line  1112

   
yyval := new discrete_range_nonterminal1;
   discrete_range_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrete_range_nonterminal1(
yyval.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  203 =>
--#line  1117

   
yyval := new discrete_range_nonterminal2;
   discrete_range_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  204 =>
--#line  1123

   
yyval := new range_constr_opt_nonterminal1;
   

when  205 =>
--#line  1126

   
yyval := new range_constr_opt_nonterminal2;
   range_constr_opt_nonterminal2(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  206 =>
--#line  1132

   
yyval := new record_type_nonterminal;
   record_type_nonterminal(
yyval.all).tagged_opt_part :=    tagged_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   record_type_nonterminal(
yyval.all).limited_opt_part :=    limited_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   record_type_nonterminal(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  207 =>
--#line  1140

   
yyval := new record_def_nonterminal1;
   record_def_nonterminal1(
yyval.all).RECORD_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   record_def_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   record_def_nonterminal1(
yyval.all).comp_list_part :=    comp_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   record_def_nonterminal1(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_def_nonterminal1(
yyval.all).RECORD_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  208 =>
--#line  1148

   
yyval := new record_def_nonterminal2;
   record_def_nonterminal2(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_def_nonterminal2(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  209 =>
--#line  1155

   
yyval := new tagged_opt_nonterminal1;
   

when  210 =>
--#line  1158

   
yyval := new tagged_opt_nonterminal2;
   tagged_opt_nonterminal2(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  211 =>
--#line  1162

   
yyval := new tagged_opt_nonterminal3;
   tagged_opt_nonterminal3(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   tagged_opt_nonterminal3(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  212 =>
--#line  1169

   
yyval := new comp_list_nonterminal1;
   comp_list_nonterminal1(
yyval.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal1(
yyval.all).variant_part_opt_part :=    variant_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  213 =>
--#line  1174

   
yyval := new comp_list_nonterminal2;
   comp_list_nonterminal2(
yyval.all).variant_part_part :=    variant_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  214 =>
--#line  1179

   
yyval := new comp_list_nonterminal3;
   comp_list_nonterminal3(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   comp_list_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal3(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  215 =>
--#line  1187

   
yyval := new comp_decl_s_nonterminal1;
   comp_decl_s_nonterminal1(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  216 =>
--#line  1191

   
yyval := new comp_decl_s_nonterminal2;
   comp_decl_s_nonterminal2(
yyval.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_decl_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_decl_s_nonterminal2(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  217 =>
--#line  1199

   
yyval := new variant_part_opt_nonterminal1;
   variant_part_opt_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  218 =>
--#line  1203

   
yyval := new variant_part_opt_nonterminal2;
   variant_part_opt_nonterminal2(
yyval.all).pragma_s_part1 :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   variant_part_opt_nonterminal2(
yyval.all).variant_part_part :=    variant_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_part_opt_nonterminal2(
yyval.all).pragma_s_part2 :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  219 =>
--#line  1211

   
yyval := new comp_decl_nonterminal;
   comp_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   comp_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   comp_decl_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_decl_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  220 =>
--#line  1221

   
yyval := new discrim_part_nonterminal;
   discrim_part_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_part_nonterminal(
yyval.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_part_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  221 =>
--#line  1229

   
yyval := new discrim_spec_s_nonterminal1;
   discrim_spec_s_nonterminal1(
yyval.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  222 =>
--#line  1233

   
yyval := new discrim_spec_s_nonterminal2;
   discrim_spec_s_nonterminal2(
yyval.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_s_nonterminal2(
yyval.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  223 =>
--#line  1241

   
yyval := new discrim_spec_nonterminal;
   discrim_spec_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   discrim_spec_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   discrim_spec_nonterminal(
yyval.all).access_opt_part :=    access_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  224 =>
--#line  1251

   
yyval := new access_opt_nonterminal1;
   

when  225 =>
--#line  1254

   
yyval := new access_opt_nonterminal2;
   access_opt_nonterminal2(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  226 =>
--#line  1260

   
yyval := new variant_part_nonterminal;
   variant_part_nonterminal(
yyval.all).CASE_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   variant_part_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   variant_part_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   variant_part_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   variant_part_nonterminal(
yyval.all).variant_s_part :=    variant_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   variant_part_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   variant_part_nonterminal(
yyval.all).CASE_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   variant_part_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  227 =>
--#line  1273

   
yyval := new variant_s_nonterminal1;
   variant_s_nonterminal1(
yyval.all).variant_part :=    variant_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  228 =>
--#line  1277

   
yyval := new variant_s_nonterminal2;
   variant_s_nonterminal2(
yyval.all).variant_s_part :=    variant_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_s_nonterminal2(
yyval.all).variant_part :=    variant_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  229 =>
--#line  1284

   
yyval := new variant_nonterminal;
   variant_nonterminal(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   variant_nonterminal(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   variant_nonterminal(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   variant_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_nonterminal(
yyval.all).comp_list_part :=    comp_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  230 =>
--#line  1294

   
yyval := new choice_s_nonterminal1;
   choice_s_nonterminal1(
yyval.all).choice_part :=    choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  231 =>
--#line  1298

   
yyval := new choice_s_nonterminal2;
   choice_s_nonterminal2(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   choice_s_nonterminal2(
yyval.all).PIPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   choice_s_nonterminal2(
yyval.all).choice_part :=    choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  232 =>
--#line  1306

   
yyval := new choice_nonterminal1;
   choice_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  233 =>
--#line  1310

   
yyval := new choice_nonterminal2;
   choice_nonterminal2(
yyval.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  234 =>
--#line  1314

   
yyval := new choice_nonterminal3;
   choice_nonterminal3(
yyval.all).OTHERS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  235 =>
--#line  1320

   
yyval := new discrete_with_range_nonterminal1;
   discrete_with_range_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrete_with_range_nonterminal1(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  236 =>
--#line  1325

   
yyval := new discrete_with_range_nonterminal2;
   discrete_with_range_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  237 =>
--#line  1331

   
yyval := new access_type_nonterminal1;
   access_type_nonterminal1(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  238 =>
--#line  1336

   
yyval := new access_type_nonterminal2;
   access_type_nonterminal2(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal2(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  239 =>
--#line  1342

   
yyval := new access_type_nonterminal3;
   access_type_nonterminal3(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal3(
yyval.all).all_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  240 =>
--#line  1348

   
yyval := new access_type_nonterminal4;
   access_type_nonterminal4(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   access_type_nonterminal4(
yyval.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal4(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  241 =>
--#line  1355

   
yyval := new access_type_nonterminal5;
   access_type_nonterminal5(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   access_type_nonterminal5(
yyval.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   access_type_nonterminal5(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   access_type_nonterminal5(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal5(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal5(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  242 =>
--#line  1366

   
yyval := new prot_opt_nonterminal1;
   

when  243 =>
--#line  1369

   
yyval := new prot_opt_nonterminal2;
   prot_opt_nonterminal2(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  244 =>
--#line  1375

   
yyval := new decl_part_nonterminal1;
   

when  245 =>
--#line  1378

   
yyval := new decl_part_nonterminal2;
   decl_part_nonterminal2(
yyval.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  246 =>
--#line  1384

   
yyval := new decl_item_s_nonterminal1;
   

when  247 =>
--#line  1387

   
yyval := new decl_item_s_nonterminal2;
   decl_item_s_nonterminal2(
yyval.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  248 =>
--#line  1393

   
yyval := new decl_item_s1_nonterminal1;
   decl_item_s1_nonterminal1(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  249 =>
--#line  1397

   
yyval := new decl_item_s1_nonterminal2;
   decl_item_s1_nonterminal2(
yyval.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decl_item_s1_nonterminal2(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  250 =>
--#line  1404

   
yyval := new decl_item_nonterminal1;
   decl_item_nonterminal1(
yyval.all).decl_part :=    decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  251 =>
--#line  1408

   
yyval := new decl_item_nonterminal2;
   decl_item_nonterminal2(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  252 =>
--#line  1412

   
yyval := new decl_item_nonterminal3;
   decl_item_nonterminal3(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  253 =>
--#line  1416

   
yyval := new decl_item_nonterminal4;
   decl_item_nonterminal4(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  254 =>
--#line  1422

   
yyval := new decl_item_or_body_s1_nonterminal1;
   decl_item_or_body_s1_nonterminal1(
yyval.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  255 =>
--#line  1426

   
yyval := new decl_item_or_body_s1_nonterminal2;
   decl_item_or_body_s1_nonterminal2(
yyval.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decl_item_or_body_s1_nonterminal2(
yyval.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  256 =>
--#line  1433

   
yyval := new decl_item_or_body_nonterminal1;
   decl_item_or_body_nonterminal1(
yyval.all).body_nt_part :=    body_nt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  257 =>
--#line  1437

   
yyval := new decl_item_or_body_nonterminal2;
   decl_item_or_body_nonterminal2(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  258 =>
--#line  1443

   
yyval := new body_nt_nonterminal1;
   body_nt_nonterminal1(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  259 =>
--#line  1447

   
yyval := new body_nt_nonterminal2;
   body_nt_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  260 =>
--#line  1451

   
yyval := new body_nt_nonterminal3;
   body_nt_nonterminal3(
yyval.all).task_body_part :=    task_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  261 =>
--#line  1455

   
yyval := new body_nt_nonterminal4;
   body_nt_nonterminal4(
yyval.all).prot_body_part :=    prot_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  262 =>
--#line  1461

   
yyval := new name_nonterminal1;
   name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  263 =>
--#line  1465

   
yyval := new name_nonterminal2;
   name_nonterminal2(
yyval.all).indexed_comp_part :=    indexed_comp_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  264 =>
--#line  1469

   
yyval := new name_nonterminal3;
   name_nonterminal3(
yyval.all).selected_comp_part :=    selected_comp_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  265 =>
--#line  1473

   
yyval := new name_nonterminal4;
   name_nonterminal4(
yyval.all).attribute_part :=    attribute_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  266 =>
--#line  1477

   
yyval := new name_nonterminal5;
   name_nonterminal5(
yyval.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  267 =>
--#line  1483

   
yyval := new mark_nonterminal1;
   mark_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  268 =>
--#line  1487

   
yyval := new mark_nonterminal2;
   mark_nonterminal2(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   mark_nonterminal2(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mark_nonterminal2(
yyval.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  269 =>
--#line  1493

   
yyval := new mark_nonterminal3;
   mark_nonterminal3(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   mark_nonterminal3(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mark_nonterminal3(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  270 =>
--#line  1501

   
yyval := new simple_name_nonterminal;
   simple_name_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  271 =>
--#line  1507

   
yyval := new compound_name_nonterminal1;
   compound_name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  272 =>
--#line  1511

   
yyval := new compound_name_nonterminal2;
   compound_name_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   compound_name_nonterminal2(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   compound_name_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  273 =>
--#line  1519

   
yyval := new c_name_list_nonterminal1;
   c_name_list_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  274 =>
--#line  1523

   
yyval := new c_name_list_nonterminal2;
   c_name_list_nonterminal2(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   c_name_list_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   c_name_list_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  275 =>
--#line  1531

   
yyval := new used_char_nonterminal;
   used_char_nonterminal(
yyval.all).char_lit_part :=    char_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  276 =>
--#line  1537

   
yyval := new operator_symbol_nonterminal;
   operator_symbol_nonterminal(
yyval.all).char_string_part :=    char_string_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  277 =>
--#line  1543

   
yyval := new indexed_comp_nonterminal;
   indexed_comp_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   indexed_comp_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   indexed_comp_nonterminal(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   indexed_comp_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  278 =>
--#line  1552

   
yyval := new value_s_nonterminal1;
   value_s_nonterminal1(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  279 =>
--#line  1556

   
yyval := new value_s_nonterminal2;
   value_s_nonterminal2(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_nonterminal2(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  280 =>
--#line  1564

   
yyval := new value_nonterminal1;
   value_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  281 =>
--#line  1568

   
yyval := new value_nonterminal2;
   value_nonterminal2(
yyval.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  282 =>
--#line  1572

   
yyval := new value_nonterminal3;
   value_nonterminal3(
yyval.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  283 =>
--#line  1578

   
yyval := new selected_comp_nonterminal1;
   selected_comp_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal1(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  284 =>
--#line  1584

   
yyval := new selected_comp_nonterminal2;
   selected_comp_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal2(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal2(
yyval.all).used_char_part :=    used_char_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  285 =>
--#line  1590

   
yyval := new selected_comp_nonterminal3;
   selected_comp_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal3(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal3(
yyval.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  286 =>
--#line  1596

   
yyval := new selected_comp_nonterminal4;
   selected_comp_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal4(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal4(
yyval.all).all_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  287 =>
--#line  1604

   
yyval := new attribute_nonterminal;
   attribute_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   attribute_nonterminal(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   attribute_nonterminal(
yyval.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  288 =>
--#line  1612

   
yyval := new attribute_id_nonterminal1;
   attribute_id_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  289 =>
--#line  1616

   
yyval := new attribute_id_nonterminal2;
   attribute_id_nonterminal2(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  290 =>
--#line  1620

   
yyval := new attribute_id_nonterminal3;
   attribute_id_nonterminal3(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  291 =>
--#line  1624

   
yyval := new attribute_id_nonterminal4;
   attribute_id_nonterminal4(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  292 =>
--#line  1630

   
yyval := new literal_nonterminal1;
   literal_nonterminal1(
yyval.all).numeric_lit_part :=    numeric_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  293 =>
--#line  1634

   
yyval := new literal_nonterminal2;
   literal_nonterminal2(
yyval.all).used_char_part :=    used_char_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  294 =>
--#line  1638

   
yyval := new literal_nonterminal3;
   literal_nonterminal3(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  295 =>
--#line  1644

   
yyval := new aggregate_nonterminal1;
   aggregate_nonterminal1(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal1(
yyval.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal1(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  296 =>
--#line  1650

   
yyval := new aggregate_nonterminal2;
   aggregate_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal2(
yyval.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  297 =>
--#line  1656

   
yyval := new aggregate_nonterminal3;
   aggregate_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   aggregate_nonterminal3(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal3(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  298 =>
--#line  1664

   
yyval := new aggregate_nonterminal4;
   aggregate_nonterminal4(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   aggregate_nonterminal4(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   aggregate_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal4(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal4(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal4(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  299 =>
--#line  1673

   
yyval := new aggregate_nonterminal5;
   aggregate_nonterminal5(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal5(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal5(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal5(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  300 =>
--#line  1682

   
yyval := new value_s_2_nonterminal1;
   value_s_2_nonterminal1(
yyval.all).value_part1 :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_2_nonterminal1(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_2_nonterminal1(
yyval.all).value_part2 :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  301 =>
--#line  1688

   
yyval := new value_s_2_nonterminal2;
   value_s_2_nonterminal2(
yyval.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_2_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_2_nonterminal2(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  302 =>
--#line  1696

   
yyval := new comp_assoc_nonterminal;
   comp_assoc_nonterminal(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_assoc_nonterminal(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   comp_assoc_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  303 =>
--#line  1704

   
yyval := new expression_nonterminal1;
   expression_nonterminal1(
yyval.all).relation_part :=    relation_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  304 =>
--#line  1708

   
yyval := new expression_nonterminal2;
   expression_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   expression_nonterminal2(
yyval.all).logical_part :=    logical_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   expression_nonterminal2(
yyval.all).relation_part :=    relation_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  305 =>
--#line  1714

   
yyval := new expression_nonterminal3;
   expression_nonterminal3(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   expression_nonterminal3(
yyval.all).short_circuit_part :=    short_circuit_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   expression_nonterminal3(
yyval.all).relation_part :=    relation_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  306 =>
--#line  1722

   
yyval := new logical_nonterminal1;
   logical_nonterminal1(
yyval.all).and_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  307 =>
--#line  1726

   
yyval := new logical_nonterminal2;
   logical_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  308 =>
--#line  1730

   
yyval := new logical_nonterminal3;
   logical_nonterminal3(
yyval.all).XOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  309 =>
--#line  1736

   
yyval := new short_circuit_nonterminal1;
   short_circuit_nonterminal1(
yyval.all).and_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   short_circuit_nonterminal1(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  310 =>
--#line  1741

   
yyval := new short_circuit_nonterminal2;
   short_circuit_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   short_circuit_nonterminal2(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  311 =>
--#line  1748

   
yyval := new relation_nonterminal1;
   relation_nonterminal1(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  312 =>
--#line  1752

   
yyval := new relation_nonterminal2;
   relation_nonterminal2(
yyval.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal2(
yyval.all).relational_part :=    relational_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal2(
yyval.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  313 =>
--#line  1758

   
yyval := new relation_nonterminal3;
   relation_nonterminal3(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal3(
yyval.all).membership_part :=    membership_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal3(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  314 =>
--#line  1764

   
yyval := new relation_nonterminal4;
   relation_nonterminal4(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal4(
yyval.all).membership_part :=    membership_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  315 =>
--#line  1772

   
yyval := new relational_nonterminal1;
   relational_nonterminal1(
yyval.all).EQ_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  316 =>
--#line  1776

   
yyval := new relational_nonterminal2;
   relational_nonterminal2(
yyval.all).NE_part :=    NE_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  317 =>
--#line  1780

   
yyval := new relational_nonterminal3;
   relational_nonterminal3(
yyval.all).LT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  318 =>
--#line  1784

   
yyval := new relational_nonterminal4;
   relational_nonterminal4(
yyval.all).LT_EQ_part :=    LT_EQ_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  319 =>
--#line  1788

   
yyval := new relational_nonterminal5;
   relational_nonterminal5(
yyval.all).GT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  320 =>
--#line  1792

   
yyval := new relational_nonterminal6;
   relational_nonterminal6(
yyval.all).GE_part :=    GE_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  321 =>
--#line  1798

   
yyval := new membership_nonterminal1;
   membership_nonterminal1(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  322 =>
--#line  1802

   
yyval := new membership_nonterminal2;
   membership_nonterminal2(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   membership_nonterminal2(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  323 =>
--#line  1809

   
yyval := new simple_expression_nonterminal1;
   simple_expression_nonterminal1(
yyval.all).unary_part :=    unary_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   simple_expression_nonterminal1(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  324 =>
--#line  1814

   
yyval := new simple_expression_nonterminal2;
   simple_expression_nonterminal2(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  325 =>
--#line  1818

   
yyval := new simple_expression_nonterminal3;
   simple_expression_nonterminal3(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   simple_expression_nonterminal3(
yyval.all).adding_part :=    adding_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   simple_expression_nonterminal3(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  326 =>
--#line  1826

   
yyval := new unary_nonterminal1;
   unary_nonterminal1(
yyval.all).PLUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  327 =>
--#line  1830

   
yyval := new unary_nonterminal2;
   unary_nonterminal2(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  328 =>
--#line  1836

   
yyval := new adding_nonterminal1;
   adding_nonterminal1(
yyval.all).PLUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  329 =>
--#line  1840

   
yyval := new adding_nonterminal2;
   adding_nonterminal2(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  330 =>
--#line  1844

   
yyval := new adding_nonterminal3;
   adding_nonterminal3(
yyval.all).CONCAT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  331 =>
--#line  1850

   
yyval := new term_nonterminal1;
   term_nonterminal1(
yyval.all).factor_part :=    factor_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  332 =>
--#line  1854

   
yyval := new term_nonterminal2;
   term_nonterminal2(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   term_nonterminal2(
yyval.all).multiplying_part :=    multiplying_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   term_nonterminal2(
yyval.all).factor_part :=    factor_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  333 =>
--#line  1862

   
yyval := new multiplying_nonterminal1;
   multiplying_nonterminal1(
yyval.all).star_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  334 =>
--#line  1866

   
yyval := new multiplying_nonterminal2;
   multiplying_nonterminal2(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  335 =>
--#line  1870

   
yyval := new multiplying_nonterminal3;
   multiplying_nonterminal3(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  336 =>
--#line  1874

   
yyval := new multiplying_nonterminal4;
   multiplying_nonterminal4(
yyval.all).REM_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  337 =>
--#line  1880

   
yyval := new factor_nonterminal1;
   factor_nonterminal1(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  338 =>
--#line  1884

   
yyval := new factor_nonterminal2;
   factor_nonterminal2(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal2(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  339 =>
--#line  1889

   
yyval := new factor_nonterminal3;
   factor_nonterminal3(
yyval.all).abs_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal3(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  340 =>
--#line  1894

   
yyval := new factor_nonterminal4;
   factor_nonterminal4(
yyval.all).primary_part1 :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   factor_nonterminal4(
yyval.all).EXPONENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal4(
yyval.all).primary_part2 :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  341 =>
--#line  1902

   
yyval := new primary_nonterminal1;
   primary_nonterminal1(
yyval.all).literal_part :=    literal_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  342 =>
--#line  1906

   
yyval := new primary_nonterminal2;
   primary_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  343 =>
--#line  1910

   
yyval := new primary_nonterminal3;
   primary_nonterminal3(
yyval.all).allocator_part :=    allocator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  344 =>
--#line  1914

   
yyval := new primary_nonterminal4;
   primary_nonterminal4(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  345 =>
--#line  1918

   
yyval := new primary_nonterminal5;
   primary_nonterminal5(
yyval.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  346 =>
--#line  1924

   
yyval := new parenthesized_primary_nonterminal1;
   parenthesized_primary_nonterminal1(
yyval.all).aggregate_part :=    aggregate_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  347 =>
--#line  1928

   
yyval := new parenthesized_primary_nonterminal2;
   parenthesized_primary_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   parenthesized_primary_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   parenthesized_primary_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  348 =>
--#line  1936

   
yyval := new qualified_nonterminal;
   qualified_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   qualified_nonterminal(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   qualified_nonterminal(
yyval.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  349 =>
--#line  1944

   
yyval := new allocator_nonterminal1;
   allocator_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   allocator_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  350 =>
--#line  1949

   
yyval := new allocator_nonterminal2;
   allocator_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   allocator_nonterminal2(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  351 =>
--#line  1956

   
yyval := new statement_s_nonterminal1;
   statement_s_nonterminal1(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  352 =>
--#line  1960

   
yyval := new statement_s_nonterminal2;
   statement_s_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   statement_s_nonterminal2(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  353 =>
--#line  1967

   
yyval := new statement_nonterminal1;
   statement_nonterminal1(
yyval.all).unlabeled_part :=    unlabeled_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  354 =>
--#line  1971

   
yyval := new statement_nonterminal2;
   statement_nonterminal2(
yyval.all).label_part :=    label_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   statement_nonterminal2(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  355 =>
--#line  1978

   
yyval := new unlabeled_nonterminal1;
   unlabeled_nonterminal1(
yyval.all).simple_stmt_part :=    simple_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  356 =>
--#line  1982

   
yyval := new unlabeled_nonterminal2;
   unlabeled_nonterminal2(
yyval.all).compound_stmt_part :=    compound_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  357 =>
--#line  1986

   
yyval := new unlabeled_nonterminal3;
   unlabeled_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  358 =>
--#line  1992

   
yyval := new simple_stmt_nonterminal1;
   simple_stmt_nonterminal1(
yyval.all).null_stmt_part :=    null_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  359 =>
--#line  1996

   
yyval := new simple_stmt_nonterminal2;
   simple_stmt_nonterminal2(
yyval.all).assign_stmt_part :=    assign_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  360 =>
--#line  2000

   
yyval := new simple_stmt_nonterminal3;
   simple_stmt_nonterminal3(
yyval.all).exit_stmt_part :=    exit_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  361 =>
--#line  2004

   
yyval := new simple_stmt_nonterminal4;
   simple_stmt_nonterminal4(
yyval.all).return_stmt_part :=    return_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  362 =>
--#line  2008

   
yyval := new simple_stmt_nonterminal5;
   simple_stmt_nonterminal5(
yyval.all).goto_stmt_part :=    goto_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  363 =>
--#line  2012

   
yyval := new simple_stmt_nonterminal6;
   simple_stmt_nonterminal6(
yyval.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  364 =>
--#line  2016

   
yyval := new simple_stmt_nonterminal7;
   simple_stmt_nonterminal7(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  365 =>
--#line  2020

   
yyval := new simple_stmt_nonterminal8;
   simple_stmt_nonterminal8(
yyval.all).abort_stmt_part :=    abort_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  366 =>
--#line  2024

   
yyval := new simple_stmt_nonterminal9;
   simple_stmt_nonterminal9(
yyval.all).raise_stmt_part :=    raise_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  367 =>
--#line  2028

   
yyval := new simple_stmt_nonterminal10;
   simple_stmt_nonterminal10(
yyval.all).code_stmt_part :=    code_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  368 =>
--#line  2032

   
yyval := new simple_stmt_nonterminal11;
   simple_stmt_nonterminal11(
yyval.all).requeue_stmt_part :=    requeue_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  369 =>
--#line  2038

   
yyval := new compound_stmt_nonterminal1;
   compound_stmt_nonterminal1(
yyval.all).if_stmt_part :=    if_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  370 =>
--#line  2042

   
yyval := new compound_stmt_nonterminal2;
   compound_stmt_nonterminal2(
yyval.all).case_stmt_part :=    case_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  371 =>
--#line  2046

   
yyval := new compound_stmt_nonterminal3;
   compound_stmt_nonterminal3(
yyval.all).loop_stmt_part :=    loop_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  372 =>
--#line  2050

   
yyval := new compound_stmt_nonterminal4;
   compound_stmt_nonterminal4(
yyval.all).block_part :=    block_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  373 =>
--#line  2054

   
yyval := new compound_stmt_nonterminal5;
   compound_stmt_nonterminal5(
yyval.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  374 =>
--#line  2058

   
yyval := new compound_stmt_nonterminal6;
   compound_stmt_nonterminal6(
yyval.all).select_stmt_part :=    select_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  375 =>
--#line  2064

   
yyval := new label_nonterminal;
   label_nonterminal(
yyval.all).LT_LT_part :=    LT_LT_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   label_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   label_nonterminal(
yyval.all).GT_GT_part :=    GT_GT_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  376 =>
--#line  2072

   
yyval := new null_stmt_nonterminal;
   null_stmt_nonterminal(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   null_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  377 =>
--#line  2079

   
yyval := new assign_stmt_nonterminal;
   assign_stmt_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   assign_stmt_nonterminal(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   assign_stmt_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   assign_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  378 =>
--#line  2088

   
yyval := new if_stmt_nonterminal;
   if_stmt_nonterminal(
yyval.all).IF_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   if_stmt_nonterminal(
yyval.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   if_stmt_nonterminal(
yyval.all).else_opt_part :=    else_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   if_stmt_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   if_stmt_nonterminal(
yyval.all).IF_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   if_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  379 =>
--#line  2099

   
yyval := new cond_clause_s_nonterminal1;
   cond_clause_s_nonterminal1(
yyval.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  380 =>
--#line  2103

   
yyval := new cond_clause_s_nonterminal2;
   cond_clause_s_nonterminal2(
yyval.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   cond_clause_s_nonterminal2(
yyval.all).ELSIF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   cond_clause_s_nonterminal2(
yyval.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  381 =>
--#line  2111

   
yyval := new cond_clause_nonterminal;
   cond_clause_nonterminal(
yyval.all).cond_part_part :=    cond_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   cond_clause_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  382 =>
--#line  2118

   
yyval := new cond_part_nonterminal;
   cond_part_nonterminal(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   cond_part_nonterminal(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  383 =>
--#line  2125

   
yyval := new condition_nonterminal;
   condition_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  384 =>
--#line  2131

   
yyval := new else_opt_nonterminal1;
   

when  385 =>
--#line  2134

   
yyval := new else_opt_nonterminal2;
   else_opt_nonterminal2(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   else_opt_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  386 =>
--#line  2141

   
yyval := new case_stmt_nonterminal;
   case_stmt_nonterminal(
yyval.all).case_hdr_part :=    case_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   case_stmt_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   case_stmt_nonterminal(
yyval.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   case_stmt_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   case_stmt_nonterminal(
yyval.all).CASE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   case_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  387 =>
--#line  2152

   
yyval := new case_hdr_nonterminal;
   case_hdr_nonterminal(
yyval.all).CASE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   case_hdr_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   case_hdr_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  388 =>
--#line  2160

   
yyval := new alternative_s_nonterminal1;
   

when  389 =>
--#line  2163

   
yyval := new alternative_s_nonterminal2;
   alternative_s_nonterminal2(
yyval.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   alternative_s_nonterminal2(
yyval.all).alternative_part :=    alternative_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  390 =>
--#line  2170

   
yyval := new alternative_nonterminal;
   alternative_nonterminal(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   alternative_nonterminal(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   alternative_nonterminal(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   alternative_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  391 =>
--#line  2179

   
yyval := new loop_stmt_nonterminal;
   loop_stmt_nonterminal(
yyval.all).label_opt_part :=    label_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   loop_stmt_nonterminal(
yyval.all).iteration_part :=    iteration_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   loop_stmt_nonterminal(
yyval.all).basic_loop_part :=    basic_loop_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   loop_stmt_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   loop_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  392 =>
--#line  2189

   
yyval := new label_opt_nonterminal1;
   

when  393 =>
--#line  2192

   
yyval := new label_opt_nonterminal2;
   label_opt_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   label_opt_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  394 =>
--#line  2199

   
yyval := new iteration_nonterminal1;
   

when  395 =>
--#line  2202

   
yyval := new iteration_nonterminal2;
   iteration_nonterminal2(
yyval.all).WHILE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iteration_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  396 =>
--#line  2207

   
yyval := new iteration_nonterminal3;
   iteration_nonterminal3(
yyval.all).iter_part_part :=    iter_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   iteration_nonterminal3(
yyval.all).reverse_opt_part :=    reverse_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   iteration_nonterminal3(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  397 =>
--#line  2215

   
yyval := new iter_part_nonterminal;
   iter_part_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   iter_part_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iter_part_nonterminal(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  398 =>
--#line  2223

   
yyval := new reverse_opt_nonterminal1;
   

when  399 =>
--#line  2226

   
yyval := new reverse_opt_nonterminal2;
   reverse_opt_nonterminal2(
yyval.all).REVERSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  400 =>
--#line  2232

   
yyval := new basic_loop_nonterminal;
   basic_loop_nonterminal(
yyval.all).LOOP_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   basic_loop_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   basic_loop_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   basic_loop_nonterminal(
yyval.all).LOOP_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  401 =>
--#line  2241

   
yyval := new id_opt_nonterminal1;
   

when  402 =>
--#line  2244

   
yyval := new id_opt_nonterminal2;
   id_opt_nonterminal2(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  403 =>
--#line  2250

   
yyval := new block_nonterminal;
   block_nonterminal(
yyval.all).label_opt_part :=    label_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   block_nonterminal(
yyval.all).block_decl_part :=    block_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   block_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   block_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   block_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   block_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  404 =>
--#line  2261

   
yyval := new block_decl_nonterminal1;
   

when  405 =>
--#line  2264

   
yyval := new block_decl_nonterminal2;
   block_decl_nonterminal2(
yyval.all).DECLARE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   block_decl_nonterminal2(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  406 =>
--#line  2271

   
yyval := new block_body_nonterminal;
   block_body_nonterminal(
yyval.all).BEGIN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   block_body_nonterminal(
yyval.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  407 =>
--#line  2278

   
yyval := new handled_stmt_s_nonterminal;
   handled_stmt_s_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   handled_stmt_s_nonterminal(
yyval.all).except_handler_part_opt_part :=    except_handler_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  408 =>
--#line  2285

   
yyval := new except_handler_part_opt_nonterminal1;
   

when  409 =>
--#line  2288

   
yyval := new except_handler_part_opt_nonterminal2;
   except_handler_part_opt_nonterminal2(
yyval.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  410 =>
--#line  2294

   
yyval := new exit_stmt_nonterminal;
   exit_stmt_nonterminal(
yyval.all).EXIT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exit_stmt_nonterminal(
yyval.all).name_opt_part :=    name_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exit_stmt_nonterminal(
yyval.all).when_opt_part :=    when_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   exit_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  411 =>
--#line  2303

   
yyval := new name_opt_nonterminal1;
   

when  412 =>
--#line  2306

   
yyval := new name_opt_nonterminal2;
   name_opt_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  413 =>
--#line  2312

   
yyval := new when_opt_nonterminal1;
   

when  414 =>
--#line  2315

   
yyval := new when_opt_nonterminal2;
   when_opt_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   when_opt_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  415 =>
--#line  2322

   
yyval := new return_stmt_nonterminal1;
   return_stmt_nonterminal1(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   return_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  416 =>
--#line  2327

   
yyval := new return_stmt_nonterminal2;
   return_stmt_nonterminal2(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   return_stmt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   return_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  417 =>
--#line  2335

   
yyval := new goto_stmt_nonterminal;
   goto_stmt_nonterminal(
yyval.all).GOTO_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   goto_stmt_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   goto_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  418 =>
--#line  2343

   
yyval := new subprog_decl_nonterminal1;
   subprog_decl_nonterminal1(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  419 =>
--#line  2348

   
yyval := new subprog_decl_nonterminal2;
   subprog_decl_nonterminal2(
yyval.all).generic_subp_inst_part :=    generic_subp_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  420 =>
--#line  2353

   
yyval := new subprog_decl_nonterminal3;
   subprog_decl_nonterminal3(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal3(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  421 =>
--#line  2361

   
yyval := new subprog_spec_nonterminal1;
   subprog_spec_nonterminal1(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  422 =>
--#line  2367

   
yyval := new subprog_spec_nonterminal2;
   subprog_spec_nonterminal2(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subprog_spec_nonterminal2(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   subprog_spec_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal2(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  423 =>
--#line  2375

   
yyval := new subprog_spec_nonterminal3;
   subprog_spec_nonterminal3(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal3(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  424 =>
--#line  2382

   
yyval := new designator_nonterminal1;
   designator_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  425 =>
--#line  2386

   
yyval := new designator_nonterminal2;
   designator_nonterminal2(
yyval.all).char_string_part :=    char_string_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  426 =>
--#line  2392

   
yyval := new formal_part_opt_nonterminal1;
   

when  427 =>
--#line  2395

   
yyval := new formal_part_opt_nonterminal2;
   formal_part_opt_nonterminal2(
yyval.all).formal_part_part :=    formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  428 =>
--#line  2401

   
yyval := new formal_part_nonterminal;
   formal_part_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   formal_part_nonterminal(
yyval.all).param_s_part :=    param_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   formal_part_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  429 =>
--#line  2409

   
yyval := new param_s_nonterminal1;
   param_s_nonterminal1(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  430 =>
--#line  2413

   
yyval := new param_s_nonterminal2;
   param_s_nonterminal2(
yyval.all).param_s_part :=    param_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   param_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   param_s_nonterminal2(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  431 =>
--#line  2421

   
yyval := new param_nonterminal;
   param_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   param_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   param_nonterminal(
yyval.all).mode_part :=    mode_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   param_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   param_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  432 =>
--#line  2431

   
yyval := new mode_nonterminal1;
   

when  433 =>
--#line  2434

   
yyval := new mode_nonterminal2;
   mode_nonterminal2(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  434 =>
--#line  2438

   
yyval := new mode_nonterminal3;
   mode_nonterminal3(
yyval.all).OUT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  435 =>
--#line  2442

   
yyval := new mode_nonterminal4;
   mode_nonterminal4(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mode_nonterminal4(
yyval.all).OUT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  436 =>
--#line  2447

   
yyval := new mode_nonterminal5;
   mode_nonterminal5(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  437 =>
--#line  2453

   
yyval := new subprog_spec_is_push_nonterminal;
   subprog_spec_is_push_nonterminal(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_is_push_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  438 =>
--#line  2460

   
yyval := new subprog_body_nonterminal;
   subprog_body_nonterminal(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   subprog_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   subprog_body_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   subprog_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  439 =>
--#line  2471

   
yyval := new procedure_call_nonterminal;
   procedure_call_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   procedure_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  440 =>
--#line  2478

   
yyval := new pkg_decl_nonterminal1;
   pkg_decl_nonterminal1(
yyval.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  441 =>
--#line  2483

   
yyval := new pkg_decl_nonterminal2;
   pkg_decl_nonterminal2(
yyval.all).generic_pkg_inst_part :=    generic_pkg_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  442 =>
--#line  2490

   
yyval := new pkg_spec_nonterminal;
   pkg_spec_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   pkg_spec_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   pkg_spec_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   pkg_spec_nonterminal(
yyval.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   pkg_spec_nonterminal(
yyval.all).private_part_part :=    private_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pkg_spec_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pkg_spec_nonterminal(
yyval.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  443 =>
--#line  2502

   
yyval := new private_part_nonterminal1;
   

when  444 =>
--#line  2505

   
yyval := new private_part_nonterminal2;
   private_part_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   private_part_nonterminal2(
yyval.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  445 =>
--#line  2512

   
yyval := new c_id_opt_nonterminal1;
   

when  446 =>
--#line  2515

   
yyval := new c_id_opt_nonterminal2;
   c_id_opt_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  447 =>
--#line  2521

   
yyval := new pkg_body_nonterminal;
   pkg_body_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   pkg_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   pkg_body_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   pkg_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   pkg_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   pkg_body_nonterminal(
yyval.all).body_opt_part :=    body_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   pkg_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   pkg_body_nonterminal(
yyval.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  448 =>
--#line  2535

   
yyval := new body_opt_nonterminal1;
   

when  449 =>
--#line  2538

   
yyval := new body_opt_nonterminal2;
   body_opt_nonterminal2(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  450 =>
--#line  2544

   
yyval := new private_type_nonterminal;
   private_type_nonterminal(
yyval.all).tagged_opt_part :=    tagged_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   private_type_nonterminal(
yyval.all).limited_opt_part :=    limited_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   private_type_nonterminal(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  451 =>
--#line  2552

   
yyval := new limited_opt_nonterminal1;
   

when  452 =>
--#line  2555

   
yyval := new limited_opt_nonterminal2;
   limited_opt_nonterminal2(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  453 =>
--#line  2561

   
yyval := new use_clause_nonterminal1;
   use_clause_nonterminal1(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   use_clause_nonterminal1(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  454 =>
--#line  2567

   
yyval := new use_clause_nonterminal2;
   use_clause_nonterminal2(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   use_clause_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   use_clause_nonterminal2(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  455 =>
--#line  2576

   
yyval := new name_s_nonterminal1;
   name_s_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  456 =>
--#line  2580

   
yyval := new name_s_nonterminal2;
   name_s_nonterminal2(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   name_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   name_s_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  457 =>
--#line  2588

   
yyval := new rename_decl_nonterminal1;
   rename_decl_nonterminal1(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   rename_decl_nonterminal1(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   rename_decl_nonterminal1(
yyval.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   rename_decl_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_decl_nonterminal1(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  458 =>
--#line  2597

   
yyval := new rename_decl_nonterminal2;
   rename_decl_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   rename_decl_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_decl_nonterminal2(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   rename_decl_nonterminal2(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  459 =>
--#line  2605

   
yyval := new rename_decl_nonterminal3;
   rename_decl_nonterminal3(
yyval.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  460 =>
--#line  2611

   
yyval := new rename_unit_nonterminal1;
   rename_unit_nonterminal1(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal1(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  461 =>
--#line  2618

   
yyval := new rename_unit_nonterminal2;
   rename_unit_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal2(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  462 =>
--#line  2624

   
yyval := new rename_unit_nonterminal3;
   rename_unit_nonterminal3(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   rename_unit_nonterminal3(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal3(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal3(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  463 =>
--#line  2632

   
yyval := new rename_unit_nonterminal4;
   rename_unit_nonterminal4(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal4(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal4(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  464 =>
--#line  2641

   
yyval := new renaming_nonterminal;
   renaming_nonterminal(
yyval.all).RENAMES_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   renaming_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  465 =>
--#line  2648

   
yyval := new task_decl_nonterminal;
   task_decl_nonterminal(
yyval.all).task_spec_part :=    task_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  466 =>
--#line  2655

   
yyval := new task_spec_nonterminal1;
   task_spec_nonterminal1(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_spec_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_spec_nonterminal1(
yyval.all).task_def_part :=    task_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  467 =>
--#line  2661

   
yyval := new task_spec_nonterminal2;
   task_spec_nonterminal2(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   task_spec_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   task_spec_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   task_spec_nonterminal2(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_spec_nonterminal2(
yyval.all).task_def_part :=    task_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  468 =>
--#line  2671

   
yyval := new task_def_nonterminal1;
   

when  469 =>
--#line  2674

   
yyval := new task_def_nonterminal2;
   task_def_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   task_def_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   task_def_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   task_def_nonterminal2(
yyval.all).task_private_opt_part :=    task_private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   task_def_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   task_def_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  470 =>
--#line  2685

   
yyval := new task_private_opt_nonterminal1;
   

when  471 =>
--#line  2688

   
yyval := new task_private_opt_nonterminal2;
   task_private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_private_opt_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_private_opt_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  472 =>
--#line  2696

   
yyval := new task_body_nonterminal;
   task_body_nonterminal(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   task_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   task_body_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   task_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   task_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   task_body_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   task_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  473 =>
--#line  2710

   
yyval := new prot_decl_nonterminal;
   prot_decl_nonterminal(
yyval.all).prot_spec_part :=    prot_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  474 =>
--#line  2717

   
yyval := new prot_spec_nonterminal1;
   prot_spec_nonterminal1(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   prot_spec_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_spec_nonterminal1(
yyval.all).prot_def_part :=    prot_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  475 =>
--#line  2723

   
yyval := new prot_spec_nonterminal2;
   prot_spec_nonterminal2(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   prot_spec_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   prot_spec_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_spec_nonterminal2(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_spec_nonterminal2(
yyval.all).prot_def_part :=    prot_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  476 =>
--#line  2733

   
yyval := new prot_def_nonterminal;
   prot_def_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   prot_def_nonterminal(
yyval.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   prot_def_nonterminal(
yyval.all).prot_private_opt_part :=    prot_private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_def_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_def_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  477 =>
--#line  2743

   
yyval := new prot_private_opt_nonterminal1;
   

when  478 =>
--#line  2746

   
yyval := new prot_private_opt_nonterminal2;
   prot_private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_private_opt_nonterminal2(
yyval.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  479 =>
--#line  2753

   
yyval := new prot_op_decl_s_nonterminal1;
   

when  480 =>
--#line  2756

   
yyval := new prot_op_decl_s_nonterminal2;
   prot_op_decl_s_nonterminal2(
yyval.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_decl_s_nonterminal2(
yyval.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  481 =>
--#line  2763

   
yyval := new prot_op_decl_nonterminal1;
   prot_op_decl_nonterminal1(
yyval.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  482 =>
--#line  2767

   
yyval := new prot_op_decl_nonterminal2;
   prot_op_decl_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  483 =>
--#line  2772

   
yyval := new prot_op_decl_nonterminal3;
   prot_op_decl_nonterminal3(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  484 =>
--#line  2776

   
yyval := new prot_op_decl_nonterminal4;
   prot_op_decl_nonterminal4(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  485 =>
--#line  2782

   
yyval := new prot_elem_decl_s_nonterminal1;
   

when  486 =>
--#line  2785

   
yyval := new prot_elem_decl_s_nonterminal2;
   prot_elem_decl_s_nonterminal2(
yyval.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_elem_decl_s_nonterminal2(
yyval.all).prot_elem_decl_part :=    prot_elem_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  487 =>
--#line  2792

   
yyval := new prot_elem_decl_nonterminal1;
   prot_elem_decl_nonterminal1(
yyval.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  488 =>
--#line  2796

   
yyval := new prot_elem_decl_nonterminal2;
   prot_elem_decl_nonterminal2(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  489 =>
--#line  2802

   
yyval := new prot_body_nonterminal;
   prot_body_nonterminal(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   prot_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   prot_body_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   prot_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   prot_body_nonterminal(
yyval.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   prot_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   prot_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  490 =>
--#line  2815

   
yyval := new prot_op_body_s_nonterminal1;
   prot_op_body_s_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  491 =>
--#line  2819

   
yyval := new prot_op_body_s_nonterminal2;
   prot_op_body_s_nonterminal2(
yyval.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_op_body_s_nonterminal2(
yyval.all).prot_op_body_part :=    prot_op_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_body_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  492 =>
--#line  2827

   
yyval := new prot_op_body_nonterminal1;
   prot_op_body_nonterminal1(
yyval.all).entry_body_part :=    entry_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  493 =>
--#line  2831

   
yyval := new prot_op_body_nonterminal2;
   prot_op_body_nonterminal2(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  494 =>
--#line  2835

   
yyval := new prot_op_body_nonterminal3;
   prot_op_body_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_body_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  495 =>
--#line  2842

   
yyval := new entry_decl_s_nonterminal1;
   entry_decl_s_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  496 =>
--#line  2846

   
yyval := new entry_decl_s_nonterminal2;
   entry_decl_s_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_s_nonterminal2(
yyval.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  497 =>
--#line  2854

   
yyval := new entry_decl_nonterminal1;
   entry_decl_nonterminal1(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  498 =>
--#line  2861

   
yyval := new entry_decl_nonterminal2;
   entry_decl_nonterminal2(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   entry_decl_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_decl_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  499 =>
--#line  2873

   
yyval := new entry_body_nonterminal1;
   entry_body_nonterminal1(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_nonterminal1(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_nonterminal1(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_nonterminal1(
yyval.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  500 =>
--#line  2882

   
yyval := new entry_body_nonterminal2;
   entry_body_nonterminal2(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-9));
   entry_body_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   entry_body_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   entry_body_nonterminal2(
yyval.all).iter_part_part :=    iter_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   entry_body_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_nonterminal2(
yyval.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  501 =>
--#line  2897

   
yyval := new entry_body_part_nonterminal1;
   entry_body_part_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  502 =>
--#line  2901

   
yyval := new entry_body_part_nonterminal2;
   entry_body_part_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_part_nonterminal2(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_part_nonterminal2(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_part_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_part_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_part_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  503 =>
--#line  2912

   
yyval := new rep_spec_s_nonterminal1;
   

when  504 =>
--#line  2915

   
yyval := new rep_spec_s_nonterminal2;
   rep_spec_s_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rep_spec_s_nonterminal2(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rep_spec_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  505 =>
--#line  2923

   
yyval := new entry_call_nonterminal;
   entry_call_nonterminal(
yyval.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  506 =>
--#line  2929

   
yyval := new accept_stmt_nonterminal1;
   accept_stmt_nonterminal1(
yyval.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  507 =>
--#line  2934

   
yyval := new accept_stmt_nonterminal2;
   accept_stmt_nonterminal2(
yyval.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   accept_stmt_nonterminal2(
yyval.all).DO_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   accept_stmt_nonterminal2(
yyval.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   accept_stmt_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   accept_stmt_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  508 =>
--#line  2945

   
yyval := new accept_hdr_nonterminal;
   accept_hdr_nonterminal(
yyval.all).accept_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   accept_hdr_nonterminal(
yyval.all).entry_name_part :=    entry_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_hdr_nonterminal(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  509 =>
--#line  2953

   
yyval := new entry_name_nonterminal1;
   entry_name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  510 =>
--#line  2957

   
yyval := new entry_name_nonterminal2;
   entry_name_nonterminal2(
yyval.all).entry_name_part :=    entry_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_name_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_name_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_name_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  511 =>
--#line  2966

   
yyval := new delay_stmt_nonterminal1;
   delay_stmt_nonterminal1(
yyval.all).DELAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   delay_stmt_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  512 =>
--#line  2972

   
yyval := new delay_stmt_nonterminal2;
   delay_stmt_nonterminal2(
yyval.all).DELAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   delay_stmt_nonterminal2(
yyval.all).UNTIL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   delay_stmt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  513 =>
--#line  2981

   
yyval := new select_stmt_nonterminal1;
   select_stmt_nonterminal1(
yyval.all).select_wait_part :=    select_wait_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  514 =>
--#line  2985

   
yyval := new select_stmt_nonterminal2;
   select_stmt_nonterminal2(
yyval.all).async_select_part :=    async_select_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  515 =>
--#line  2989

   
yyval := new select_stmt_nonterminal3;
   select_stmt_nonterminal3(
yyval.all).timed_entry_call_part :=    timed_entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  516 =>
--#line  2993

   
yyval := new select_stmt_nonterminal4;
   select_stmt_nonterminal4(
yyval.all).cond_entry_call_part :=    cond_entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  517 =>
--#line  2999

   
yyval := new select_wait_nonterminal;
   select_wait_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   select_wait_nonterminal(
yyval.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   select_wait_nonterminal(
yyval.all).or_select_part :=    or_select_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   select_wait_nonterminal(
yyval.all).else_opt_part :=    else_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   select_wait_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   select_wait_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   select_wait_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  518 =>
--#line  3011

   
yyval := new guarded_select_alt_nonterminal1;
   guarded_select_alt_nonterminal1(
yyval.all).select_alt_part :=    select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  519 =>
--#line  3015

   
yyval := new guarded_select_alt_nonterminal2;
   guarded_select_alt_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   guarded_select_alt_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   guarded_select_alt_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   guarded_select_alt_nonterminal2(
yyval.all).select_alt_part :=    select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  520 =>
--#line  3024

   
yyval := new or_select_nonterminal1;
   

when  521 =>
--#line  3027

   
yyval := new or_select_nonterminal2;
   or_select_nonterminal2(
yyval.all).or_select_part :=    or_select_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   or_select_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   or_select_nonterminal2(
yyval.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  522 =>
--#line  3035

   
yyval := new select_alt_nonterminal1;
   select_alt_nonterminal1(
yyval.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal1(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  523 =>
--#line  3040

   
yyval := new select_alt_nonterminal2;
   select_alt_nonterminal2(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal2(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  524 =>
--#line  3045

   
yyval := new select_alt_nonterminal3;
   select_alt_nonterminal3(
yyval.all).TERMINATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  525 =>
--#line  3052

   
yyval := new delay_or_entry_alt_nonterminal1;
   delay_or_entry_alt_nonterminal1(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_or_entry_alt_nonterminal1(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  526 =>
--#line  3057

   
yyval := new delay_or_entry_alt_nonterminal2;
   delay_or_entry_alt_nonterminal2(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_or_entry_alt_nonterminal2(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  527 =>
--#line  3064

   
yyval := new async_select_nonterminal;
   async_select_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   async_select_nonterminal(
yyval.all).delay_or_entry_alt_part :=    delay_or_entry_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   async_select_nonterminal(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   async_select_nonterminal(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   async_select_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   async_select_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   async_select_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   async_select_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  528 =>
--#line  3077

   
yyval := new timed_entry_call_nonterminal;
   timed_entry_call_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   timed_entry_call_nonterminal(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   timed_entry_call_nonterminal(
yyval.all).stmts_opt_part1 :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   timed_entry_call_nonterminal(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   timed_entry_call_nonterminal(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   timed_entry_call_nonterminal(
yyval.all).stmts_opt_part2 :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   timed_entry_call_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   timed_entry_call_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   timed_entry_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  529 =>
--#line  3091

   
yyval := new cond_entry_call_nonterminal;
   cond_entry_call_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   cond_entry_call_nonterminal(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   cond_entry_call_nonterminal(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   cond_entry_call_nonterminal(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   cond_entry_call_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   cond_entry_call_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   cond_entry_call_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   cond_entry_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  530 =>
--#line  3104

   
yyval := new stmts_opt_nonterminal1;
   

when  531 =>
--#line  3107

   
yyval := new stmts_opt_nonterminal2;
   stmts_opt_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  532 =>
--#line  3113

   
yyval := new abort_stmt_nonterminal;
   abort_stmt_nonterminal(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   abort_stmt_nonterminal(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   abort_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  533 =>
--#line  3121

   
yyval := new compilation_nonterminal1;
   

when  534 =>
--#line  3124

   
yyval := new compilation_nonterminal2;
   compilation_nonterminal2(
yyval.all).compilation_part :=    compilation_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   compilation_nonterminal2(
yyval.all).comp_unit_part :=    comp_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  535 =>
--#line  3129

   
yyval := new compilation_nonterminal3;
   compilation_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   compilation_nonterminal3(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  536 =>
--#line  3136

   
yyval := new comp_unit_nonterminal1;
   comp_unit_nonterminal1(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   comp_unit_nonterminal1(
yyval.all).private_opt_part :=    private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_unit_nonterminal1(
yyval.all).unit_part :=    unit_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_unit_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  537 =>
--#line  3143

   
yyval := new comp_unit_nonterminal2;
   comp_unit_nonterminal2(
yyval.all).private_opt_part :=    private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_unit_nonterminal2(
yyval.all).unit_part :=    unit_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_unit_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  538 =>
--#line  3151

   
yyval := new private_opt_nonterminal1;
   

when  539 =>
--#line  3154

   
yyval := new private_opt_nonterminal2;
   private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  540 =>
--#line  3160

   
yyval := new context_spec_nonterminal1;
   context_spec_nonterminal1(
yyval.all).with_clause_part :=    with_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal1(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  541 =>
--#line  3165

   
yyval := new context_spec_nonterminal2;
   context_spec_nonterminal2(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   context_spec_nonterminal2(
yyval.all).with_clause_part :=    with_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal2(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  542 =>
--#line  3171

   
yyval := new context_spec_nonterminal3;
   context_spec_nonterminal3(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  543 =>
--#line  3178

   
yyval := new with_clause_nonterminal;
   with_clause_nonterminal(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   with_clause_nonterminal(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   with_clause_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  544 =>
--#line  3186

   
yyval := new use_clause_opt_nonterminal1;
   

when  545 =>
--#line  3189

   
yyval := new use_clause_opt_nonterminal2;
   use_clause_opt_nonterminal2(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_opt_nonterminal2(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  546 =>
--#line  3196

   
yyval := new unit_nonterminal1;
   unit_nonterminal1(
yyval.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  547 =>
--#line  3200

   
yyval := new unit_nonterminal2;
   unit_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  548 =>
--#line  3204

   
yyval := new unit_nonterminal3;
   unit_nonterminal3(
yyval.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  549 =>
--#line  3208

   
yyval := new unit_nonterminal4;
   unit_nonterminal4(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  550 =>
--#line  3212

   
yyval := new unit_nonterminal5;
   unit_nonterminal5(
yyval.all).subunit_part :=    subunit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  551 =>
--#line  3216

   
yyval := new unit_nonterminal6;
   unit_nonterminal6(
yyval.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  552 =>
--#line  3220

   
yyval := new unit_nonterminal7;
   unit_nonterminal7(
yyval.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  553 =>
--#line  3226

   
yyval := new subunit_nonterminal;
   subunit_nonterminal(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subunit_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subunit_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subunit_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subunit_nonterminal(
yyval.all).subunit_body_part :=    subunit_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  554 =>
--#line  3236

   
yyval := new subunit_body_nonterminal1;
   subunit_body_nonterminal1(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  555 =>
--#line  3240

   
yyval := new subunit_body_nonterminal2;
   subunit_body_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  556 =>
--#line  3244

   
yyval := new subunit_body_nonterminal3;
   subunit_body_nonterminal3(
yyval.all).task_body_part :=    task_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  557 =>
--#line  3248

   
yyval := new subunit_body_nonterminal4;
   subunit_body_nonterminal4(
yyval.all).prot_body_part :=    prot_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  558 =>
--#line  3254

   
yyval := new body_stub_nonterminal1;
   body_stub_nonterminal1(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal1(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal1(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal1(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  559 =>
--#line  3263

   
yyval := new body_stub_nonterminal2;
   body_stub_nonterminal2(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal2(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal2(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  560 =>
--#line  3272

   
yyval := new body_stub_nonterminal3;
   body_stub_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal3(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  561 =>
--#line  3279

   
yyval := new body_stub_nonterminal4;
   body_stub_nonterminal4(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal4(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal4(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal4(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal4(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  562 =>
--#line  3290

   
yyval := new exception_decl_nonterminal;
   exception_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   exception_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   exception_decl_nonterminal(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  563 =>
--#line  3299

   
yyval := new except_handler_part_nonterminal1;
   except_handler_part_nonterminal1(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   except_handler_part_nonterminal1(
yyval.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  564 =>
--#line  3304

   
yyval := new except_handler_part_nonterminal2;
   except_handler_part_nonterminal2(
yyval.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   except_handler_part_nonterminal2(
yyval.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  565 =>
--#line  3311

   
yyval := new exception_handler_nonterminal1;
   exception_handler_nonterminal1(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exception_handler_nonterminal1(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exception_handler_nonterminal1(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_handler_nonterminal1(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  566 =>
--#line  3318

   
yyval := new exception_handler_nonterminal2;
   exception_handler_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   exception_handler_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   exception_handler_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exception_handler_nonterminal2(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exception_handler_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_handler_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  567 =>
--#line  3329

   
yyval := new except_choice_s_nonterminal1;
   except_choice_s_nonterminal1(
yyval.all).except_choice_part :=    except_choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  568 =>
--#line  3333

   
yyval := new except_choice_s_nonterminal2;
   except_choice_s_nonterminal2(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   except_choice_s_nonterminal2(
yyval.all).PIPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   except_choice_s_nonterminal2(
yyval.all).except_choice_part :=    except_choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  569 =>
--#line  3341

   
yyval := new except_choice_nonterminal1;
   except_choice_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  570 =>
--#line  3345

   
yyval := new except_choice_nonterminal2;
   except_choice_nonterminal2(
yyval.all).OTHERS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  571 =>
--#line  3351

   
yyval := new raise_stmt_nonterminal;
   raise_stmt_nonterminal(
yyval.all).RAISE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   raise_stmt_nonterminal(
yyval.all).name_opt_part :=    name_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   raise_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  572 =>
--#line  3359

   
yyval := new requeue_stmt_nonterminal1;
   requeue_stmt_nonterminal1(
yyval.all).REQUEUE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   requeue_stmt_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   requeue_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  573 =>
--#line  3365

   
yyval := new requeue_stmt_nonterminal2;
   requeue_stmt_nonterminal2(
yyval.all).REQUEUE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   requeue_stmt_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   requeue_stmt_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   requeue_stmt_nonterminal2(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   requeue_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  574 =>
--#line  3375

   
yyval := new generic_decl_nonterminal1;
   generic_decl_nonterminal1(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_decl_nonterminal1(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  575 =>
--#line  3381

   
yyval := new generic_decl_nonterminal2;
   generic_decl_nonterminal2(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_decl_nonterminal2(
yyval.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  576 =>
--#line  3389

   
yyval := new generic_formal_part_nonterminal1;
   generic_formal_part_nonterminal1(
yyval.all).GENERIC_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  577 =>
--#line  3393

   
yyval := new generic_formal_part_nonterminal2;
   generic_formal_part_nonterminal2(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_part_nonterminal2(
yyval.all).generic_formal_part :=    generic_formal_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  578 =>
--#line  3400

   
yyval := new generic_formal_nonterminal1;
   generic_formal_nonterminal1(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  579 =>
--#line  3405

   
yyval := new generic_formal_nonterminal2;
   generic_formal_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal2(
yyval.all).generic_discrim_part_opt_part :=    generic_discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal2(
yyval.all).generic_type_def_part :=    generic_type_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  580 =>
--#line  3414

   
yyval := new generic_formal_nonterminal3;
   generic_formal_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal3(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal3(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal3(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal3(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  581 =>
--#line  3423

   
yyval := new generic_formal_nonterminal4;
   generic_formal_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal4(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal4(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal4(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal4(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  582 =>
--#line  3434

   
yyval := new generic_formal_nonterminal5;
   generic_formal_nonterminal5(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-9));
   generic_formal_nonterminal5(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   generic_formal_nonterminal5(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal5(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal5(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal5(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal5(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal5(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal5(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal5(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  583 =>
--#line  3447

   
yyval := new generic_formal_nonterminal6;
   generic_formal_nonterminal6(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal6(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal6(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal6(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal6(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal6(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal6(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  584 =>
--#line  3457

   
yyval := new generic_formal_nonterminal7;
   generic_formal_nonterminal7(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  585 =>
--#line  3463

   
yyval := new generic_discrim_part_opt_nonterminal1;
   

when  586 =>
--#line  3466

   
yyval := new generic_discrim_part_opt_nonterminal2;
   generic_discrim_part_opt_nonterminal2(
yyval.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  587 =>
--#line  3470

   
yyval := new generic_discrim_part_opt_nonterminal3;
   generic_discrim_part_opt_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_discrim_part_opt_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_discrim_part_opt_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  588 =>
--#line  3478

   
yyval := new subp_default_nonterminal1;
   

when  589 =>
--#line  3481

   
yyval := new subp_default_nonterminal2;
   subp_default_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subp_default_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  590 =>
--#line  3486

   
yyval := new subp_default_nonterminal3;
   subp_default_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subp_default_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  591 =>
--#line  3493

   
yyval := new generic_type_def_nonterminal1;
   generic_type_def_nonterminal1(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_type_def_nonterminal1(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal1(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  592 =>
--#line  3499

   
yyval := new generic_type_def_nonterminal2;
   generic_type_def_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal2(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  593 =>
--#line  3504

   
yyval := new generic_type_def_nonterminal3;
   generic_type_def_nonterminal3(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  594 =>
--#line  3509

   
yyval := new generic_type_def_nonterminal4;
   generic_type_def_nonterminal4(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal4(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  595 =>
--#line  3514

   
yyval := new generic_type_def_nonterminal5;
   generic_type_def_nonterminal5(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_type_def_nonterminal5(
yyval.all).BOX_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_type_def_nonterminal5(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal5(
yyval.all).BOX_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  596 =>
--#line  3521

   
yyval := new generic_type_def_nonterminal6;
   generic_type_def_nonterminal6(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal6(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  597 =>
--#line  3526

   
yyval := new generic_type_def_nonterminal7;
   generic_type_def_nonterminal7(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  598 =>
--#line  3530

   
yyval := new generic_type_def_nonterminal8;
   generic_type_def_nonterminal8(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  599 =>
--#line  3534

   
yyval := new generic_type_def_nonterminal9;
   generic_type_def_nonterminal9(
yyval.all).private_type_part :=    private_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  600 =>
--#line  3538

   
yyval := new generic_type_def_nonterminal10;
   generic_type_def_nonterminal10(
yyval.all).generic_derived_type_part :=    generic_derived_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  601 =>
--#line  3544

   
yyval := new generic_derived_type_nonterminal1;
   generic_derived_type_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  602 =>
--#line  3549

   
yyval := new generic_derived_type_nonterminal2;
   generic_derived_type_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_derived_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_derived_type_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  603 =>
--#line  3556

   
yyval := new generic_derived_type_nonterminal3;
   generic_derived_type_nonterminal3(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_derived_type_nonterminal3(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_derived_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_derived_type_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal3(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  604 =>
--#line  3566

   
yyval := new generic_subp_inst_nonterminal;
   generic_subp_inst_nonterminal(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_subp_inst_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_subp_inst_nonterminal(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  605 =>
--#line  3574

   
yyval := new generic_pkg_inst_nonterminal;
   generic_pkg_inst_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_pkg_inst_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_pkg_inst_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_pkg_inst_nonterminal(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  606 =>
--#line  3583

   
yyval := new generic_inst_nonterminal;
   generic_inst_nonterminal(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_inst_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  607 =>
--#line  3590

   
yyval := new rep_spec_nonterminal1;
   rep_spec_nonterminal1(
yyval.all).attrib_def_part :=    attrib_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  608 =>
--#line  3594

   
yyval := new rep_spec_nonterminal2;
   rep_spec_nonterminal2(
yyval.all).record_type_spec_part :=    record_type_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  609 =>
--#line  3598

   
yyval := new rep_spec_nonterminal3;
   rep_spec_nonterminal3(
yyval.all).address_spec_part :=    address_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  610 =>
--#line  3604

   
yyval := new attrib_def_nonterminal;
   attrib_def_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   attrib_def_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   attrib_def_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   attrib_def_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   attrib_def_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  611 =>
--#line  3614

   
yyval := new record_type_spec_nonterminal;
   record_type_spec_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   record_type_spec_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   record_type_spec_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   record_type_spec_nonterminal(
yyval.all).RECORD_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   record_type_spec_nonterminal(
yyval.all).align_opt_part :=    align_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   record_type_spec_nonterminal(
yyval.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   record_type_spec_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   record_type_spec_nonterminal(
yyval.all).RECORD_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_type_spec_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  612 =>
--#line  3628

   
yyval := new align_opt_nonterminal1;
   

when  613 =>
--#line  3631

   
yyval := new align_opt_nonterminal2;
   align_opt_nonterminal2(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   align_opt_nonterminal2(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   align_opt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   align_opt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  614 =>
--#line  3640

   
yyval := new comp_loc_s_nonterminal1;
   

when  615 =>
--#line  3643

   
yyval := new comp_loc_s_nonterminal2;
   comp_loc_s_nonterminal2(
yyval.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   comp_loc_s_nonterminal2(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   comp_loc_s_nonterminal2(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   comp_loc_s_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   comp_loc_s_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   comp_loc_s_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_loc_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  616 =>
--#line  3655

   
yyval := new address_spec_nonterminal;
   address_spec_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   address_spec_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   address_spec_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   address_spec_nonterminal(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   address_spec_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   address_spec_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  617 =>
--#line  3666

   
yyval := new code_stmt_nonterminal;
   code_stmt_nonterminal(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   code_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
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
      trans.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character =>
            raise;
         when others => null;
      end;
      trans.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end trans_Parser;
