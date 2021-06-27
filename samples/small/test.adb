
with test_IO;
package body test is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      test_IO.Open_Input (Filename);
      test_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      test_IO.Close_Input;
      test_IO.Close_Output;
   end Close_Files;

function YYLex return Token is
subtype short is integer range -32768..32767;
    yy_act : integer;
    yy_c : short;

-- returned upon end-of-file
YY_END_TOK : constant integer := 0;
YY_END_OF_BUFFER : constant := 28;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
yy_accept : constant array(0..100) of short :=
    (   0,
        0,    0,   28,   27,   25,   26,   27,   27,   27,   27,
       27,   27,   27,   27,   27,   27,   27,   27,   27,   27,
       24,    0,    0,    0,    0,    0,    6,    0,    0,    0,
       10,    0,    0,   13,    0,   15,    0,    0,    0,    0,
        0,    0,   24,    1,    0,    0,    0,    0,    0,    8,
        0,    0,   12,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    7,    0,    0,   14,    0,
       17,   18,    0,   20,   21,    0,    0,    2,    3,    0,
        5,    0,    0,    0,    0,   22,   23,    0,    0,    0,
        0,   19,    4,    0,   11,    0,    9,    0,   16,    0

    ) ;

yy_ec : constant array(CHARACTER'FIRST..ASCII.DEL) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    2,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    4,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    5,    6,    7,    8,    9,   10,
       11,   12,   13,    1,    1,   14,    1,   15,   16,   17,
        1,   18,   19,   20,   21,    1,   22,    1,   23,    1,
        1,    1,    1,    1,    1,    1,    5,    6,    7,    8,

        9,   10,   11,   12,   13,    1,    1,   14,    1,   15,
       16,   17,    1,   18,   19,   20,   21,    1,   22,    1,
       23,    1,    1,    1,    1,    1,    1
    ) ;

yy_meta : constant array(0..23) of short :=
    (   0,
        1,    1,    2,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1
    ) ;

yy_base : constant array(0..101) of short :=
    (   0,
        0,    0,  103,  104,  104,  104,   98,    9,   16,   87,
       84,   14,   78,   16,   82,   20,   79,   87,   21,   22,
        0,   87,   76,   82,   76,   75,  104,   71,   81,   73,
      104,   67,   66,  104,   76,  104,   68,   34,   74,   65,
       68,   67,    0,  104,   74,   65,   63,   57,   66,  104,
       67,   64,  104,   57,   64,   28,   54,   54,   59,   53,
       46,   42,   49,   54,   53,  104,   41,   49,  104,   50,
      104,  104,   40,  104,  104,   48,   47,  104,  104,   50,
      104,   41,   44,   44,   43,  104,  104,   35,   33,   30,
       26,  104,  104,   31,  104,   27,  104,   34,  104,  104,

       34
    ) ;

yy_def : constant array(0..101) of short :=
    (   0,
      100,    1,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      101,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  101,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,    0,

      100
    ) ;

yy_nxt : constant array(0..127) of short :=
    (   0,
        4,    5,    6,    7,    8,    9,   10,   11,   12,   13,
        4,    4,   14,    4,   15,   16,   17,   18,    4,   19,
        4,   20,    4,   22,   24,   31,   23,   28,   29,   34,
       32,   25,   39,   41,   43,   71,   35,   36,   56,   42,
       57,   72,   99,   40,   98,   97,   96,   95,   94,   93,
       92,   91,   90,   89,   88,   87,   86,   85,   84,   83,
       82,   81,   80,   79,   78,   77,   76,   75,   74,   73,
       70,   69,   68,   67,   66,   65,   64,   63,   62,   61,
       60,   59,   58,   55,   54,   53,   52,   51,   50,   49,
       48,   47,   46,   45,   44,   38,   37,   33,   30,   27,

       26,   21,  100,    3,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100
    ) ;

yy_chk : constant array(0..127) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    8,    9,   14,    8,   12,   12,   16,
       14,    9,   19,   20,  101,   56,   16,   16,   38,   20,
       38,   56,   98,   19,   96,   94,   91,   90,   89,   88,
       85,   84,   83,   82,   80,   77,   76,   73,   70,   68,
       67,   65,   64,   63,   62,   61,   60,   59,   58,   57,
       55,   54,   52,   51,   49,   48,   47,   46,   45,   42,
       41,   40,   39,   37,   35,   33,   32,   30,   29,   28,
       26,   25,   24,   23,   22,   18,   17,   15,   13,   11,

       10,    7,    3,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100
    ) ;


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if (text_io.is_open(user_output_file)) then
     text_io.put( user_output_file, yytext );
   else
     text_io.put( yytext );
   end if;
end ECHO;

-- enter a start condition.
-- Using procedure requires a () after the ENTER, but makes everything
-- much neater.

procedure ENTER( state : integer ) is
begin
     yy_start := 1 + 2 * state;
end ENTER;

-- action number for EOF rule of a given start state
function YY_STATE_EOF(state : integer) return integer is
begin
     return YY_END_OF_BUFFER + state + 1;
end YY_STATE_EOF;

-- return all but the first 'n' matched characters back to the input stream
procedure yyless(n : integer) is
begin
        yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
        yy_cp := yy_bp + n;
        yy_c_buf_p := yy_cp;
        YY_DO_BEFORE_ACTION; -- set up yytext again
end yyless;

-- redefine this if you have something you want each time.
procedure YY_USER_ACTION is
begin
        null;
end;

-- yy_get_previous_state - get the state just before the EOB char was reached

function yy_get_previous_state return yy_state_type is
    yy_current_state : yy_state_type;
    yy_c : short;
begin
    yy_current_state := yy_start;

    for yy_cp in yytext_ptr..yy_c_buf_p - 1 loop
	yy_c := yy_ec(yy_ch_buf(yy_cp));
	if ( yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 101 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
    end loop;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : file_type ) is
begin
   open_input(text_io.name(input_file));
end yyrestart;

begin -- of YYLex
<<new_file>>
        -- this is where we enter upon encountering an end-of-file and
        -- yywrap() indicating that we should continue processing

    if ( yy_init ) then
        if ( yy_start = 0 ) then
            yy_start := 1;      -- first start state
        end if;

        -- we put in the '\n' and start reading from [1] so that an
        -- initial match-at-newline will be true.

        yy_ch_buf(0) := ASCII.LF;
        yy_n_chars := 1;

        -- we always need two end-of-buffer characters.  The first causes
        -- a transition to the end-of-buffer state.  The second causes
        -- a jam in that state.

        yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;
        yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

        yy_eof_has_been_seen := false;

        yytext_ptr := 1;
        yy_c_buf_p := yytext_ptr;
        yy_hold_char := yy_ch_buf(yy_c_buf_p);
        yy_init := false;
    end if; -- yy_init

    loop                -- loops until end-of-file is reached
        yy_cp := yy_c_buf_p;

        -- support of yytext
        yy_ch_buf(yy_cp) := yy_hold_char;

        -- yy_bp points to the position in yy_ch_buf of the start of the
        -- current run.
	yy_bp := yy_cp;
	yy_current_state := yy_start;
	loop
		yy_c := yy_ec(yy_ch_buf(yy_cp));
		if ( yy_accept(yy_current_state) /= 0 ) then
		    yy_last_accepting_state := yy_current_state;
		    yy_last_accepting_cpos := yy_cp;
		end if;
		while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
		    yy_current_state := yy_def(yy_current_state);
		    if ( yy_current_state >= 101 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 100 ) then
    exit;
end if;
	end loop;
	yy_cp := yy_last_accepting_cpos;
	yy_current_state := yy_last_accepting_state;

<<next_action>>
	    yy_act := yy_accept(yy_current_state);
            YY_DO_BEFORE_ACTION;
            YY_USER_ACTION;

        if aflex_debug then  -- output acceptance info. for (-d) debug mode
            text_io.put("--accepting rule #" );
            text_io.put(INTEGER'IMAGE(yy_act) );
            text_io.put_line("(""" & yytext & """)");
        end if;

<<do_action>>   -- this label is used only to access EOF actions
            case yy_act is
		when 0 => -- must backtrack
		-- undo the effects of YY_DO_BEFORE_ACTION
		yy_ch_buf(yy_cp) := yy_hold_char;
		yy_cp := yy_last_accepting_cpos;
		yy_current_state := yy_last_accepting_state;
		goto next_action;


when 1 => 
--# line 13 "test.l"
Current_Column := Current_Column + YYText'Length; return (AND_token);

when 2 => 
--# line 14 "test.l"
Current_Column := Current_Column + YYText'Length; return (ARRAY_token);

when 3 => 
--# line 15 "test.l"
Current_Column := Current_Column + YYText'Length; return (BEGIN_token);

when 4 => 
--# line 16 "test.l"
Current_Column := Current_Column + YYText'Length; return (BOOLEAN_token);

when 5 => 
--# line 17 "test.l"
Current_Column := Current_Column + YYText'Length; return (CLOSE_token);

when 6 => 
--# line 18 "test.l"
Current_Column := Current_Column + YYText'Length; return (DO_token);

when 7 => 
--# line 19 "test.l"
Current_Column := Current_Column + YYText'Length; return (ELSE_token);

when 8 => 
--# line 20 "test.l"
Current_Column := Current_Column + YYText'Length; return (END_token);

when 9 => 
--# line 21 "test.l"
Current_Column := Current_Column + YYText'Length; return (FUNCTION_token);

when 10 => 
--# line 22 "test.l"
Current_Column := Current_Column + YYText'Length; return (IF_token);

when 11 => 
--# line 23 "test.l"
Current_Column := Current_Column + YYText'Length; return (INTEGER_token);

when 12 => 
--# line 24 "test.l"
Current_Column := Current_Column + YYText'Length; return (NOT_token);

when 13 => 
--# line 25 "test.l"
Current_Column := Current_Column + YYText'Length; return (OF_token);

when 14 => 
--# line 26 "test.l"
Current_Column := Current_Column + YYText'Length; return (OPEN_token);

when 15 => 
--# line 27 "test.l"
Current_Column := Current_Column + YYText'Length; return (OR_token);

when 16 => 
--# line 28 "test.l"
Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);

when 17 => 
--# line 29 "test.l"
Current_Column := Current_Column + YYText'Length; return (READ_token);

when 18 => 
--# line 30 "test.l"
Current_Column := Current_Column + YYText'Length; return (REAL_token);

when 19 => 
--# line 31 "test.l"
Current_Column := Current_Column + YYText'Length; return (RECORD_token);

when 20 => 
--# line 32 "test.l"
Current_Column := Current_Column + YYText'Length; return (THEN_token);

when 21 => 
--# line 33 "test.l"
Current_Column := Current_Column + YYText'Length; return (TYPE_token);

when 22 => 
--# line 34 "test.l"
Current_Column := Current_Column + YYText'Length; return (WHILE_token);

when 23 => 
--# line 35 "test.l"
Current_Column := Current_Column + YYText'Length; return (WRITE_token);

when 24 => 
--# line 36 "test.l"
Current_Column := Current_Column + YYText'Length;

when 25 => 
--# line 37 "test.l"
Current_Column := Current_Column + 1;

when 26 => 
--# line 38 "test.l"
Current_Line := Current_Line + 1; Current_Column := 1;

when 27 => 
--# line 39 "test.l"
ECHO;
when YY_END_OF_BUFFER + INITIAL + 1 => 
    return End_Of_Input;
                when YY_END_OF_BUFFER =>
                    -- undo the effects of YY_DO_BEFORE_ACTION
                    yy_ch_buf(yy_cp) := yy_hold_char;

                    yytext_ptr := yy_bp;

                    case yy_get_next_buffer is
                        when EOB_ACT_END_OF_FILE =>
                            begin
                            if ( yywrap ) then
                                -- note: because we've taken care in
                                -- yy_get_next_buffer() to have set up yytext,
                                -- we can now set up yy_c_buf_p so that if some
                                -- total hoser (like aflex itself) wants
                                -- to call the scanner after we return the
                                -- End_Of_Input, it'll still work - another
                                -- End_Of_Input will get returned.

                                yy_c_buf_p := yytext_ptr;

                                yy_act := YY_STATE_EOF((yy_start - 1) / 2);

                                goto do_action;
                            else
                                --  start processing a new file
                                yy_init := true;
                                goto new_file;
                            end if;
                            end;
                        when EOB_ACT_RESTART_SCAN =>
                            yy_c_buf_p := yytext_ptr;
                            yy_hold_char := yy_ch_buf(yy_c_buf_p);
                        when EOB_ACT_LAST_MATCH =>
                            yy_c_buf_p := yy_n_chars;
                            yy_current_state := yy_get_previous_state;

                            yy_cp := yy_c_buf_p;
                            yy_bp := yytext_ptr;
                            goto next_action;
                        when others => null;
                        end case; -- case yy_get_next_buffer()
                when others =>
                    text_io.put( "action # " );
                    text_io.put( INTEGER'IMAGE(yy_act) );
                    text_io.new_line;
                    raise AFLEX_INTERNAL_ERROR;
            end case; -- case (yy_act)
        end loop; -- end of loop waiting for end of file
end YYLex;
--# line 39 "test.l"

   function Get_Token return Token is
   begin
      return YYLex;
   exception when Constraint_Error =>
      raise Invalid_Character;
   end Get_Token;

   function Get_Token_String return String is
   begin
      return YYText;
   end Get_Token_String;

   function Get_Current_Line return Natural is
   begin
      return Current_Line;
   end Get_Current_Line;

   function Get_Current_Column return Natural is
   begin
      return Current_Column;
   end Get_Current_Column;

end test;

