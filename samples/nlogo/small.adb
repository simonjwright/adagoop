
with small_IO;
package body small is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      small_IO.Open_Input (Filename);
      small_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      small_IO.Close_Input;
      small_IO.Close_Output;
   end Close_Files;

function YYLex return Token is
subtype short is integer range -32768..32767;
    yy_act : integer;
    yy_c : short;

-- returned upon end-of-file
YY_END_TOK : constant integer := 0;
YY_END_OF_BUFFER : constant := 35;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
yy_accept : constant array(0..127) of short :=
    (   0,
        0,    0,   35,   34,   32,   33,   34,   28,   29,   26,
       24,   27,   25,   21,   34,   34,   22,   22,   22,   22,
       22,   22,   22,   22,   22,   22,   22,   22,   22,   11,
       17,    0,   30,   21,    0,   31,    0,    0,   22,   22,
       22,   22,   22,   22,   22,   22,    8,    9,   22,   22,
       22,   22,   22,   22,   19,   22,   21,   31,    0,    1,
        2,   22,    4,   22,   22,   22,   22,   22,   22,   22,
       22,   18,   22,    0,   22,   22,   22,   22,   22,   22,
       22,   22,   22,   22,    0,   22,   22,   22,   22,   22,
       22,   13,   14,   22,   22,    0,    0,   22,   22,   22,

       22,   12,   15,   22,    0,   22,    5,    6,    7,    0,
        0,   20,    0,   22,   22,   22,   23,    3,   22,   22,
       22,   22,   22,   22,   10,   16,    0
    ) ;

yy_ec : constant array(CHARACTER'FIRST..ASCII.DEL) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    2,    1,    4,    5,    6,    1,    1,    1,    7,
        8,    9,   10,   11,   12,   13,    1,   14,   14,   14,
       14,   14,   14,   14,   14,   14,   14,    1,   15,    1,
        1,    1,    1,   16,   17,   18,   19,   20,   21,   22,
       23,   24,   25,   26,   27,   28,   29,   30,   31,   32,
       26,   33,   34,   35,   36,   26,   37,   38,   39,   26,
       40,    1,   41,    1,   42,    1,   17,   18,   19,   20,

       21,   22,   23,   24,   25,   26,   27,   28,   29,   30,
       31,   32,   26,   33,   34,   35,   36,   26,   37,   38,
       39,   26,    1,    1,    1,    1,    1
    ) ;

yy_meta : constant array(0..42) of short :=
    (   0,
        1,    1,    2,    1,    1,    1,    1,    1,    1,    1,
        1,    3,    1,    3,    1,    1,    3,    3,    3,    3,
        3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
        3,    3,    3,    3,    3,    3,    3,    3,    3,    1,
        1,    3
    ) ;

yy_base : constant array(0..130) of short :=
    (   0,
        0,    0,  321,  339,  339,  339,  316,  339,  339,  339,
      339,  339,  305,   30,  303,  312,   33,   34,   36,   35,
       37,   38,   39,   40,   57,   72,   41,   73,   61,  339,
      339,  310,  309,   41,  297,    0,  302,   44,   45,   76,
       47,   83,   86,   88,   89,   90,   93,   96,  101,  110,
       97,  100,  114,  105,  111,  112,  293,    0,  269,  115,
      117,  134,  121,  125,  137,  138,  136,  149,  152,  153,
      154,  148,  157,  155,  160,  158,  169,  173,  161,  170,
      175,  176,  192,  177,  129,  194,  195,  198,  201,  204,
      202,  208,  209,  212,  217,   66,  210,  213,  230,  233,

      218,  220,  235,  236,   66,  237,  241,  245,  246,  249,
      251,  254,   54,  256,  257,  264,  339,  255,  270,  273,
      259,  288,  268,  274,  282,  290,  339,  332,   58,  335
    ) ;

yy_def : constant array(0..130) of short :=
    (   0,
      127,    1,  127,  127,  127,  127,  128,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  129,  129,  129,  129,
      129,  129,  129,  129,  129,  129,  129,  129,  129,  127,
      127,  128,  128,  127,  127,  130,  127,  129,  129,  129,
      129,  129,  129,  129,  129,  129,  129,  129,  129,  129,
      129,  129,  129,  129,  129,  129,  127,  130,  127,  129,
      129,  129,  129,  129,  129,  129,  129,  129,  129,  129,
      129,  129,  129,  127,  129,  129,  129,  129,  129,  129,
      129,  129,  129,  129,  127,  129,  129,  129,  129,  129,
      129,  129,  129,  129,  129,  127,  129,  129,  129,  129,

      129,  129,  129,  129,  127,  129,  129,  129,  129,  129,
      129,  129,  127,  129,  129,  129,  127,  129,  129,  129,
      129,  129,  129,  129,  129,  129,    0,  127,  127,  127
    ) ;

yy_nxt : constant array(0..381) of short :=
    (   0,
        4,    5,    6,    7,    4,    4,    8,    9,   10,   11,
       12,   13,    4,   14,   15,   16,   17,   18,   19,   18,
       20,   21,   22,   23,   24,   18,   18,   18,   18,   18,
       25,   26,   27,   28,   29,   18,   18,   18,   18,   30,
       31,    4,   35,   34,   38,   38,   38,   38,   38,   38,
       38,   38,   38,   35,   34,  127,   38,   53,   38,   46,
       39,   47,   40,   42,   43,   45,   41,   44,   38,  117,
      113,  105,   38,   61,   38,   38,   38,   38,   38,   38,
       38,   38,   38,   38,   38,  127,   38,   38,   38,   48,
       50,   55,   49,   54,   38,   60,   56,   38,   38,   38,

       38,   38,   38,   62,   38,   63,   66,   38,   38,   51,
       52,   38,   38,   38,   38,   69,   38,   38,   70,   65,
       64,   38,   38,   38,   38,   38,   38,   38,   38,   38,
       38,   38,   38,   96,   38,   67,   38,   38,   38,   72,
       68,   38,   38,   71,   73,   38,   38,   38,   38,   38,
       75,   38,   38,   38,   77,   38,   38,   78,   38,   38,
       38,   76,   38,   38,   38,   38,   38,   79,   38,   38,
       85,   38,   38,   83,   87,   38,   80,   38,   38,   38,
       38,   38,   81,   82,   38,   88,   38,   38,   38,   38,
       38,   84,   86,   38,   38,   38,   90,   89,   38,   38,

       91,   38,   38,   38,   95,   97,   38,   92,   93,   38,
       38,   38,   38,   38,   38,   38,   38,   38,   38,   38,
       38,  127,   94,   38,   38,   99,  106,   98,   38,  110,
      100,   38,  107,   38,  102,   38,   38,  104,  101,   38,
      103,   38,   38,   38,   38,   38,  111,   38,   38,   38,
       38,  127,   38,   38,   38,  109,   38,   38,   38,   38,
      127,   38,  127,  108,  114,   38,   38,   38,   38,  112,
       38,   38,  116,   74,   38,   38,   38,   38,   38,   38,
      115,   38,   38,  118,   38,   38,   38,   38,  123,  119,
      127,  120,  127,   38,  121,   38,   38,   38,   38,   38,

       38,   38,  125,  122,  124,   38,   57,   59,  126,   38,
       57,   38,   33,   33,   38,   38,   37,   36,   34,   33,
      127,  127,  127,   38,  127,  127,  127,  127,  127,   38,
      127,   38,   32,  127,   32,   58,  127,   58,    3,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127
    ) ;

yy_chk : constant array(0..381) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,   14,   14,   17,   18,   20,   19,   21,   22,
       23,   24,   27,   34,   34,   38,   39,   27,   41,   23,
      129,   24,   17,   19,   20,   22,   17,   21,   25,  113,
      105,   96,   29,   41,   17,   18,   20,   19,   21,   22,
       23,   24,   27,   26,   28,   38,   39,   40,   41,   25,
       26,   29,   25,   28,   42,   40,   29,   43,   25,   44,

       45,   46,   29,   42,   47,   43,   46,   48,   51,   26,
       26,   52,   49,   26,   28,   51,   54,   40,   52,   45,
       44,   50,   55,   56,   42,   53,   60,   43,   61,   44,
       45,   46,   63,   85,   47,   49,   64,   48,   51,   54,
       50,   52,   49,   53,   56,   62,   54,   67,   65,   66,
       62,   50,   55,   56,   65,   53,   60,   66,   61,   72,
       68,   64,   63,   69,   70,   71,   64,   67,   73,   76,
       74,   75,   79,   71,   76,   62,   68,   67,   65,   66,
       77,   80,   69,   70,   78,   77,   81,   82,   84,   72,
       68,   73,   75,   69,   70,   71,   79,   78,   73,   76,

       80,   75,   79,   83,   84,   86,   87,   81,   82,   88,
       77,   80,   89,   91,   78,   90,   81,   82,   84,   92,
       93,   97,   83,   94,   98,   88,   97,   87,   95,  101,
       89,  102,   98,   83,   91,   86,   87,   95,   90,   88,
       94,   99,   89,   91,  100,   90,  103,  104,  106,   92,
       93,   97,  107,   94,   98,  100,  108,  109,   95,  101,
      110,  102,  111,   99,  106,  112,  118,  114,  115,  104,
      121,   99,  111,   59,  100,  116,  103,  104,  106,  123,
      110,  119,  107,  114,  120,  124,  108,  109,  121,  115,
      110,  116,  111,  125,  119,  112,  118,  114,  115,  122,

      121,  126,  123,  120,  122,  116,   57,   37,  124,  123,
       35,  119,   33,   32,  120,  124,   16,   15,   13,    7,
        3,    0,    0,  125,    0,    0,    0,    0,    0,  122,
        0,  126,  128,    0,  128,  130,    0,  130,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127,  127,  127,  127,  127,  127,  127,  127,  127,  127,
      127
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
	    if ( yy_current_state >= 128 ) then
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
		    if ( yy_current_state >= 128 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 127 ) then
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
--# line 13 "small.l"
Current_Column := Current_Column + YYText'Length; return (AND_token);

when 2 => 
--# line 14 "small.l"
Current_Column := Current_Column + YYText'Length; return (ASK_token);

when 3 => 
--# line 15 "small.l"
Current_Column := Current_Column + YYText'Length; return (CLEARALL_token);

when 4 => 
--# line 16 "small.l"
Current_Column := Current_Column + YYText'Length; return (END_token);

when 5 => 
--# line 17 "small.l"
Current_Column := Current_Column + YYText'Length; return (FORWARD_token);

when 6 => 
--# line 18 "small.l"
Current_Column := Current_Column + YYText'Length; return (GLOBALS_token);

when 7 => 
--# line 19 "small.l"
Current_Column := Current_Column + YYText'Length; return (HEADING_token);

when 8 => 
--# line 20 "small.l"
Current_Column := Current_Column + YYText'Length; return (IF_token);

when 9 => 
--# line 21 "small.l"
Current_Column := Current_Column + YYText'Length; return (OR_token);

when 10 => 
--# line 22 "small.l"
Current_Column := Current_Column + YYText'Length; return (OUTPUTPRINT_token);

when 11 => 
--# line 23 "small.l"
Current_Column := Current_Column + YYText'Length; return (LBRACK_token);

when 12 => 
--# line 24 "small.l"
Current_Column := Current_Column + YYText'Length; return (PCOLOR_token);

when 13 => 
--# line 25 "small.l"
Current_Column := Current_Column + YYText'Length; return (PXCOR_token);

when 14 => 
--# line 26 "small.l"
Current_Column := Current_Column + YYText'Length; return (PYCOR_token);

when 15 => 
--# line 27 "small.l"
Current_Column := Current_Column + YYText'Length; return (RANDOM_token);

when 16 => 
--# line 28 "small.l"
Current_Column := Current_Column + YYText'Length; return (RANDOMFLT_token);

when 17 => 
--# line 29 "small.l"
Current_Column := Current_Column + YYText'Length; return (RBRACK_token);

when 18 => 
--# line 30 "small.l"
Current_Column := Current_Column + YYText'Length; return (SET_token);

when 19 => 
--# line 31 "small.l"
Current_Column := Current_Column + YYText'Length; return (TO_token);

when 20 => 
--# line 32 "small.l"
Current_Column := Current_Column + YYText'Length; return (TURTLES_token);

when 21 => 
--# line 33 "small.l"
Current_Column := Current_Column + YYText'Length; return (NUMBER_token);

when 22 => 
--# line 34 "small.l"
Current_Column := Current_Column + YYText'Length; return (ID_token);

when 23 => 
--# line 35 "small.l"
Current_Column := Current_Column + YYText'Length; return (DONE_token);

when 24 => 
--# line 36 "small.l"
Current_Column := Current_Column + YYText'Length; return (PLUS_token);

when 25 => 
--# line 37 "small.l"
Current_Column := Current_Column + YYText'Length; return (MINUS_token);

when 26 => 
--# line 38 "small.l"
Current_Column := Current_Column + YYText'Length; return (TIMES_token);

when 27 => 
--# line 39 "small.l"
Current_Column := Current_Column + YYText'Length; return (COMMA_token);

when 28 => 
--# line 40 "small.l"
Current_Column := Current_Column + YYText'Length; return (LPAREN_token);

when 29 => 
--# line 41 "small.l"
Current_Column := Current_Column + YYText'Length; return (RPAREN_token);

when 30 => 
--# line 42 "small.l"
Current_Column := Current_Column + YYText'Length; return (STRING_token);

when 31 => 
--# line 43 "small.l"
Current_Column := Current_Column + YYText'Length;

when 32 => 
--# line 44 "small.l"
Current_Column := Current_Column + 1;

when 33 => 
--# line 45 "small.l"
Current_Line := Current_Line + 1; Current_Column := 1;

when 34 => 
--# line 46 "small.l"
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
--# line 46 "small.l"

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

end small;

