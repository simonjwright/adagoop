-- Copyright (c) 1990 Regents of the University of California.
-- All rights reserved.
--
-- This software was developed by John Self of the Arcadia project
-- at the University of California, Irvine.
--
-- Redistribution and use in source and binary forms are permitted
-- provided that the above copyright notice and this paragraph are
-- duplicated in all such forms and that any documentation,
-- advertising materials, and other materials related to such
-- distribution and use acknowledge that the software was developed
-- by the University of California, Irvine.  The name of the
-- University may not be used to endorse or promote products derived
-- from this software without specific prior written permission.
-- THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
-- IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
-- WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

-- TITLE template manager
-- AUTHOR: John Self (UCI)
-- DESCRIPTION supports output of internalized templates for the IO and DFA
--             packages.
-- NOTES This package is quite a memory hog, and is really only useful on
--       virtual memory systems.  It could use an external file to store the
--       templates like the skeleton manager.  This would save memory at the
--       cost of a slight reduction in speed and the necessity of keeping
--       copies of the template files in a known place.
-- $Header: /dc/uc/self/arcadia/aflex/ada/src/RCS/template_managerB.a,v 1.21 1992/12/29 22:46:15 self Exp self $

with FILE_STRING, MISC_DEFS, TEXT_IO, EXTERNAL_FILE_MANAGER, MISC, TSTRING;
use  FILE_STRING, MISC_DEFS, TEXT_IO;
package body TEMPLATE_MANAGER is

  type FILE_ARRAY is array(POSITIVE range <>) of VSTRING;

  DFA_TEMPLATE     : constant FILE_ARRAY := (
  --DFA TEMPLATE START
VSTR("yytext_ptr : integer; -- points to start of yytext in buffer"),
VSTR(""),
VSTR("-- yy_ch_buf has to be 2 characters longer than YY_BUF_SIZE because we need"),
VSTR("-- to put in 2 end-of-buffer characters (this is explained where it is"),
VSTR("-- done) at the end of yy_ch_buf"),
VSTR("YY_READ_BUF_SIZE : constant integer :=  8192;"),
VSTR("YY_BUF_SIZE : constant integer := YY_READ_BUF_SIZE * 2; -- size of input buffer"),
VSTR("type unbounded_character_array is array(integer range <>) of character;"),
VSTR("subtype ch_buf_type is unbounded_character_array(0..YY_BUF_SIZE + 1);"),
VSTR("yy_ch_buf : ch_buf_type;"), VSTR("yy_cp, yy_bp : integer;"),
VSTR(""),
VSTR("-- yy_hold_char holds the character lost when yytext is formed"),
VSTR("yy_hold_char : character;"),
VSTR("yy_c_buf_p : integer;   -- points to current character in buffer"),
VSTR(""),
VSTR("function YYText return string;"),
VSTR("function YYLength return integer;"),
VSTR("procedure YY_DO_BEFORE_ACTION;"),
VSTR("--These variables are needed between calls to YYLex."),
VSTR("yy_init : boolean := true; -- do we need to initialize YYLex?"),
VSTR("yy_start : integer := 0; -- current start state number"),
VSTR("subtype yy_state_type is integer;"),
VSTR("yy_last_accepting_state : yy_state_type;"),
VSTR("yy_last_accepting_cpos : integer;"),
VSTR("%%"),
VSTR("function YYText return string is"),
VSTR("    i : integer;"),
VSTR("    str_loc : integer := 1;"),
VSTR("    buffer : string(1..1024);"),
VSTR("    EMPTY_STRING : constant string := """";"),
VSTR("begin"),
VSTR("    -- find end of buffer"),
VSTR("    i := yytext_ptr;"),
VSTR("    while ( yy_ch_buf(i) /= ASCII.NUL ) loop"),
VSTR("    buffer(str_loc ) := yy_ch_buf(i);"),
VSTR("        i := i + 1;"),
VSTR("    str_loc := str_loc + 1;"),
VSTR("    end loop;"),
VSTR("--    return yy_ch_buf(yytext_ptr.. i - 1);"),
VSTR(""),
VSTR("    if (str_loc < 2) then"),
VSTR("        return EMPTY_STRING;"),
VSTR("    else"),
VSTR("      return buffer(1..str_loc-1);"),
VSTR("    end if;"),
VSTR(""),
VSTR("end;"),
VSTR(""),
VSTR("-- returns the length of the matched text"),
VSTR("function YYLength return integer is"),
VSTR("begin"), VSTR("    return yy_cp - yy_bp;"),
VSTR("end YYLength;"),
VSTR(""),
VSTR("-- done after the current pattern has been matched and before the"),
VSTR("-- corresponding action - sets up yytext"),
VSTR(""),
VSTR("procedure YY_DO_BEFORE_ACTION is"),
VSTR("begin"),
VSTR("    yytext_ptr := yy_bp;"),
VSTR("    yy_hold_char := yy_ch_buf(yy_cp);"),
VSTR("    yy_ch_buf(yy_cp) := ASCII.NUL;"),
VSTR("    yy_c_buf_p := yy_cp;"),
VSTR("end YY_DO_BEFORE_ACTION;"),
VSTR("")
--DFA TEMPLATE END
);

  DFA_CURRENT_LINE : INTEGER := 1;

  IO_TEMPLATE      : constant FILE_ARRAY := (
  --IO TEMPLATE START
VSTR("with text_io; use text_io;"),
VSTR(""),
VSTR("%%"),
VSTR("user_input_file : file_type;"),
VSTR("user_output_file : file_type;"),
VSTR("NULL_IN_INPUT : exception;"),
VSTR("AFLEX_INTERNAL_ERROR : exception;"),
VSTR("UNEXPECTED_LAST_MATCH : exception;"),
VSTR("PUSHBACK_OVERFLOW : exception;"),
VSTR("AFLEX_SCANNER_JAMMED : exception;"),
VSTR("type eob_action_type is ( EOB_ACT_RESTART_SCAN,"),
VSTR("                          EOB_ACT_END_OF_FILE,"),
VSTR("                          EOB_ACT_LAST_MATCH );"),
VSTR("YY_END_OF_BUFFER_CHAR :  constant character:=  ASCII.NUL;"),
VSTR("yy_n_chars : integer;       -- number of characters read into yy_ch_buf"),
VSTR(""),
VSTR("-- true when we've seen an EOF for the current input file"),
VSTR("yy_eof_has_been_seen : boolean;"), VSTR(""),
VSTR("procedure YY_INPUT(buf: out unbounded_character_array; result: out integer; max_size: in integer);"),
VSTR("function yy_get_next_buffer return eob_action_type;"),
VSTR("procedure yyunput( c : character; yy_bp: in out integer );"),
VSTR("procedure unput(c : character);"),
VSTR("function input return character;"),
VSTR("procedure output(c : character);"),
VSTR("function yywrap return boolean;"),
VSTR("procedure Open_Input(fname : in String);"),
VSTR("procedure Close_Input;"),
VSTR("procedure Create_Output(fname : in String := """");"),
VSTR("procedure Close_Output;"),
VSTR("%%"),
VSTR("-- gets input and stuffs it into 'buf'.  number of characters read, or YY_NULL,"),
VSTR("-- is returned in 'result'."),
VSTR(""),
VSTR("procedure YY_INPUT(buf: out unbounded_character_array; result: out integer; max_size: in integer) is"),
VSTR("    i : integer := 1;"),
VSTR("    loc : integer := buf'first;"),
VSTR("begin"),
VSTR("    if (is_open(user_input_file)) then"),
VSTR("      while ( i <= max_size ) loop"),
VSTR("         if (end_of_line(user_input_file)) then -- Ada ate our newline, put it back on the end."),
VSTR("             buf(loc) := ASCII.LF;"),
VSTR("             skip_line(user_input_file, 1);"),
VSTR("         else"),
VSTR("           get(user_input_file, buf(loc));"),
VSTR("         end if;"),
VSTR(""),
VSTR("         loc := loc + 1;"),
VSTR("         i := i + 1;"),
VSTR("      end loop;"),
VSTR("    else"),
VSTR("      while ( i <= max_size ) loop"),
VSTR("         if (end_of_line) then -- Ada ate our newline, put it back on the end."),
VSTR("             buf(loc) := ASCII.LF;"),
VSTR("             skip_line(1);"),
VSTR("%%"),
VSTR(""),
VSTR("         else"),
VSTR("             get(buf(loc));"),
VSTR("         end if; "),
VSTR(""),
VSTR("         loc := loc + 1;"),
VSTR("         i := i + 1;"),
VSTR("      end loop;"),
VSTR("    end if; -- for input file being standard input"),
VSTR(""),
VSTR("    result := i - 1; "),
VSTR("    exception"),
VSTR("        when END_ERROR => result := i - 1;"),
VSTR("    -- when we hit EOF we need to set yy_eof_has_been_seen"),
VSTR("    yy_eof_has_been_seen := true;"),
VSTR("end YY_INPUT;"),
VSTR(""),
VSTR("-- yy_get_next_buffer - try to read in new buffer"),
VSTR("--"),
VSTR("-- returns a code representing an action"),
VSTR("--     EOB_ACT_LAST_MATCH - "),
VSTR("--     EOB_ACT_RESTART_SCAN - restart the scanner"),
VSTR("--     EOB_ACT_END_OF_FILE - end of file"),
VSTR(""),
VSTR("function yy_get_next_buffer return eob_action_type is"),
VSTR("    dest : integer := 0;"),
VSTR("    source : integer := yytext_ptr - 1; -- copy prev. char, too"),
VSTR("    number_to_move : integer;"),
VSTR("    ret_val : eob_action_type;"),
VSTR("    num_to_read : integer;"),
VSTR("begin    "),
VSTR("    if ( yy_c_buf_p > yy_n_chars + 1 ) then"),
VSTR("        raise NULL_IN_INPUT;"),
VSTR("    end if;"),
VSTR(""),
VSTR("    -- try to read more data"),
VSTR(""),
VSTR("    -- first move last chars to start of buffer"),
VSTR("    number_to_move := yy_c_buf_p - yytext_ptr;"),
VSTR(""),
VSTR("    for i in 0..number_to_move - 1 loop"),
VSTR("        yy_ch_buf(dest) := yy_ch_buf(source);"),
VSTR("    dest := dest + 1;"),
VSTR("    source := source + 1;"),
VSTR("    end loop;"),
VSTR("        "),
VSTR("    if ( yy_eof_has_been_seen ) then"),
VSTR("    -- don't do the read, it's not guaranteed to return an EOF,"),
VSTR("    -- just force an EOF"),
VSTR(""),
VSTR("    yy_n_chars := 0;"),
VSTR("    else"),
VSTR("    num_to_read := YY_BUF_SIZE - number_to_move - 1;"),
VSTR(""),
VSTR("    if ( num_to_read > YY_READ_BUF_SIZE ) then"),
VSTR("        num_to_read := YY_READ_BUF_SIZE;"),
VSTR("        end if;"),
VSTR(""),
VSTR("    -- read in more data"),
VSTR("    YY_INPUT( yy_ch_buf(number_to_move..yy_ch_buf'last), yy_n_chars, num_to_read );"),
VSTR("    end if;"),
VSTR("    if ( yy_n_chars = 0 ) then"),
VSTR("    if ( number_to_move = 1 ) then"),
VSTR("        ret_val := EOB_ACT_END_OF_FILE;"),
VSTR("    else"),
VSTR("        ret_val := EOB_ACT_LAST_MATCH;"),
VSTR("        end if;"),
VSTR(""),
VSTR("    yy_eof_has_been_seen := true;"),
VSTR("    else"),
VSTR("    ret_val := EOB_ACT_RESTART_SCAN;"),
VSTR("    end if;"),
VSTR("    "),
VSTR("    yy_n_chars := yy_n_chars + number_to_move;"),
VSTR("    yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;"),
VSTR("    yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;"),
VSTR(""),
VSTR("    -- yytext begins at the second character in"),
VSTR("    -- yy_ch_buf; the first character is the one which"),
VSTR("    -- preceded it before reading in the latest buffer;"),
VSTR("    -- it needs to be kept around in case it's a"),
VSTR("    -- newline, so yy_get_previous_state() will have"),
VSTR("    -- with '^' rules active"),
VSTR(""),
VSTR("    yytext_ptr := 1;"),
VSTR(""),
VSTR("    return ret_val;"),
VSTR("end yy_get_next_buffer;"),
VSTR(""),
VSTR("procedure yyunput( c : character; yy_bp: in out integer ) is"),
VSTR("    number_to_move : integer;"),
VSTR("    dest : integer;"),
VSTR("    source : integer;"),
VSTR("    tmp_yy_cp : integer;"),
VSTR("begin"),
VSTR("    tmp_yy_cp := yy_c_buf_p;"),
VSTR("    yy_ch_buf(tmp_yy_cp) := yy_hold_char; -- undo effects of setting up yytext"),
VSTR(""),
VSTR("    if ( tmp_yy_cp < 2 ) then"),
VSTR("    -- need to shift things up to make room"),
VSTR("    number_to_move := yy_n_chars + 2; -- +2 for EOB chars"),
VSTR("    dest := YY_BUF_SIZE + 2;"),
VSTR("    source := number_to_move;"),
VSTR(""),
VSTR("    while ( source > 0 ) loop"),
VSTR("        dest := dest - 1;"),
VSTR("        source := source - 1;"),
VSTR("            yy_ch_buf(dest) := yy_ch_buf(source);"),
VSTR("    end loop;"),
VSTR(""),
VSTR("    tmp_yy_cp := tmp_yy_cp + dest - source;"),
VSTR("    yy_bp := yy_bp + dest - source;"),
VSTR("    yy_n_chars := YY_BUF_SIZE;"),
VSTR(""),
VSTR("    if ( tmp_yy_cp < 2 ) then"),
VSTR("        raise PUSHBACK_OVERFLOW;"),
VSTR("    end if;"),
VSTR("    end if;"),
VSTR(""),
VSTR("    if ( tmp_yy_cp > yy_bp and then yy_ch_buf(tmp_yy_cp-1) = ASCII.LF ) then"),
VSTR("    yy_ch_buf(tmp_yy_cp-2) := ASCII.LF;"),
VSTR("    end if;"),
VSTR(""),
VSTR("    tmp_yy_cp := tmp_yy_cp - 1;"),
VSTR("    yy_ch_buf(tmp_yy_cp) := c;"),
VSTR(""),
VSTR("--  Note:  this code is the text of YY_DO_BEFORE_ACTION, only"),
VSTR("--         here we get different yy_cp and yy_bp's"),
VSTR("    yytext_ptr := yy_bp;"),
VSTR("    yy_hold_char := yy_ch_buf(tmp_yy_cp);"),
VSTR("    yy_ch_buf(tmp_yy_cp) := ASCII.NUL;"),
VSTR("    yy_c_buf_p := tmp_yy_cp;"),
VSTR("end yyunput;"),
VSTR(""),
VSTR("procedure unput(c : character) is"),
VSTR("begin"),
VSTR("     yyunput( c, yy_bp );"),
VSTR("end unput;"),
VSTR(""),
VSTR("function input return character is"),
VSTR("    c : character;"),
VSTR("    yy_cp : integer := yy_c_buf_p;"),
VSTR("begin"),
VSTR("    yy_ch_buf(yy_cp) := yy_hold_char;"),
VSTR(""),
VSTR("    if ( yy_ch_buf(yy_c_buf_p) = YY_END_OF_BUFFER_CHAR ) then"),
VSTR("    -- need more input"),
VSTR("    yytext_ptr := yy_c_buf_p;"),
VSTR("    yy_c_buf_p := yy_c_buf_p + 1;"),
VSTR(""),
VSTR("    case yy_get_next_buffer is"),
VSTR("        -- this code, unfortunately, is somewhat redundant with"),
VSTR("        -- that above"),
VSTR(""),
VSTR("        when EOB_ACT_END_OF_FILE =>"),
VSTR("        if ( yywrap ) then"),
VSTR("            yy_c_buf_p := yytext_ptr;"),
VSTR("            return ASCII.NUL;"),
VSTR("        end if;"),
VSTR(""),
VSTR("        yy_ch_buf(0) := ASCII.LF;"),
VSTR("        yy_n_chars := 1;"),
VSTR("        yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;"),
VSTR("        yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;"),
VSTR("        yy_eof_has_been_seen := false;"),
VSTR("        yy_c_buf_p := 1;"),
VSTR("        yytext_ptr := yy_c_buf_p;"),
VSTR("        yy_hold_char := yy_ch_buf(yy_c_buf_p);"),
VSTR(""),
VSTR("        return ( input );"),
VSTR("        when EOB_ACT_RESTART_SCAN =>"),
VSTR("        yy_c_buf_p := yytext_ptr;"),
VSTR(""),
VSTR("        when EOB_ACT_LAST_MATCH =>"),
VSTR("        raise UNEXPECTED_LAST_MATCH;"),
VSTR("        when others => null;"),
VSTR("        end case;"),
VSTR("    end if;"),
VSTR(""),
VSTR("    c := yy_ch_buf(yy_c_buf_p);"),
VSTR("    yy_c_buf_p := yy_c_buf_p + 1;"),
VSTR("    yy_hold_char := yy_ch_buf(yy_c_buf_p);"),
VSTR(""),
VSTR("    return c;"),
VSTR("end input;"),
VSTR(""),
VSTR("procedure output(c : character) is"),
VSTR("begin"),
VSTR("    if (is_open(user_output_file)) then"),
VSTR("      text_io.put(user_output_file, c);"),
VSTR("    else"),
VSTR("      text_io.put(c);"),
VSTR("    end if;"),
VSTR("end output;"),
VSTR(""),
VSTR("-- default yywrap function - always treat EOF as an EOF"),
VSTR("function yywrap return boolean is"),
VSTR("begin"),
VSTR("    return true;"),
VSTR("end yywrap;"),
VSTR(""),
VSTR("procedure Open_Input(fname : in String) is"),
VSTR("begin"),
VSTR("    yy_init := true;"),
VSTR("    open(user_input_file, in_file, fname);"),
VSTR("end Open_Input;"),
VSTR(""),
VSTR("procedure Create_Output(fname : in String := """") is"),
VSTR("begin"),
VSTR("    if (fname /= """") then"),
VSTR("        create(user_output_file, out_file, fname);"),
VSTR("    end if;"),
VSTR("end Create_Output;"),
VSTR(""),
VSTR("procedure Close_Input is"),
VSTR("begin"),
VSTR("   if (is_open(user_input_file)) then"),
VSTR("     text_io.close(user_input_file);"),
VSTR("   end if;"),
VSTR("end Close_Input;"),
VSTR(""),
VSTR("procedure Close_Output is"),
VSTR("begin"),
VSTR("   if (is_open(user_output_file)) then"),
VSTR("     text_io.close(user_output_file);"),
VSTR("   end if;"),
VSTR("end Close_Output;"),
VSTR("")
--IO TEMPLATE END
);

  IO_CURRENT_LINE  : INTEGER := 1;

  procedure TEMPLATE_OUT(OUTFILE          : in FILE_TYPE;
                         CURRENT_TEMPLATE : in FILE_ARRAY;
                         LINE_NUMBER      : in out INTEGER) is
    BUF : VSTRING;
  begin
    while (not (LINE_NUMBER > CURRENT_TEMPLATE'LAST)) loop
      BUF := CURRENT_TEMPLATE(LINE_NUMBER);
      LINE_NUMBER := LINE_NUMBER + 1;
      if ((FILE_STRING.LEN(BUF) >= 2) and then ((CHAR(BUF, 1) = '%') and (CHAR(
        BUF, 2) = '%'))) then
        exit;
      else
        FILE_STRING.PUT_LINE(OUTFILE, BUF);
      end if;
    end loop;
  end TEMPLATE_OUT;

  procedure GENERATE_DFA_FILE is
    DFA_OUT_FILE : FILE_TYPE;
  begin
    EXTERNAL_FILE_MANAGER.GET_DFA_FILE(DFA_OUT_FILE);
    TEXT_IO.PUT_LINE(DFA_OUT_FILE, "package " & TSTRING.STR(MISC.BASENAME) &
      "_dfa" & " is");

    if (DDEBUG) then

      -- make a scanner that output acceptance information
      TEXT_IO.PUT_LINE(DFA_OUT_FILE, "aflex_debug : boolean := true;");
    else
      TEXT_IO.PUT_LINE(DFA_OUT_FILE, "aflex_debug : boolean := false;");
    end if;
    TEMPLATE_OUT(DFA_OUT_FILE, DFA_TEMPLATE, DFA_CURRENT_LINE);
    TEXT_IO.PUT_LINE(DFA_OUT_FILE, "end " & TSTRING.STR(MISC.BASENAME) & "_dfa;"
      );
    TEXT_IO.NEW_LINE(DFA_OUT_FILE);
    TEXT_IO.PUT(DFA_OUT_FILE, "with " & TSTRING.STR(MISC.BASENAME) & "_dfa" &
      "; ");
    TEXT_IO.PUT_LINE(DFA_OUT_FILE, "use " & TSTRING.STR(MISC.BASENAME) & "_dfa"
      & "; ");
    TEXT_IO.PUT_LINE(DFA_OUT_FILE, "package body " & TSTRING.STR(MISC.BASENAME)
      & "_dfa" & " is");
    TEMPLATE_OUT(DFA_OUT_FILE, DFA_TEMPLATE, DFA_CURRENT_LINE);
    TEXT_IO.PUT_LINE(DFA_OUT_FILE, "end " & TSTRING.STR(MISC.BASENAME) & "_dfa;"
      );
  end GENERATE_DFA_FILE;

  procedure GENERATE_IO_FILE is
    IO_OUT_FILE : FILE_TYPE;
  begin
    EXTERNAL_FILE_MANAGER.GET_IO_FILE(IO_OUT_FILE);
    TEXT_IO.PUT(IO_OUT_FILE, "with " & TSTRING.STR(MISC.BASENAME) & "_dfa" &
      "; ");
    TEXT_IO.PUT_LINE(IO_OUT_FILE, "use " & TSTRING.STR(MISC.BASENAME) & "_dfa"
      & "; ");
    TEMPLATE_OUT(IO_OUT_FILE, IO_TEMPLATE, IO_CURRENT_LINE);
    TEXT_IO.PUT_LINE(IO_OUT_FILE, "package " & TSTRING.STR(MISC.BASENAME) &
      "_io" & " is");
    TEMPLATE_OUT(IO_OUT_FILE, IO_TEMPLATE, IO_CURRENT_LINE);
    TEXT_IO.PUT_LINE(IO_OUT_FILE, "end " & TSTRING.STR(MISC.BASENAME) & "_io;")
      ;
    TEXT_IO.NEW_LINE(IO_OUT_FILE);
    TEXT_IO.PUT_LINE(IO_OUT_FILE, "package body " & TSTRING.STR(MISC.BASENAME)
      & "_io" & " is");
    TEMPLATE_OUT(IO_OUT_FILE, IO_TEMPLATE, IO_CURRENT_LINE);
    -- If we're generating a scanner for interactive mode we need to generate
    -- a YY_INPUT that stops at the end of each line
    if INTERACTIVE then
        TEXT_IO.PUT_LINE(IO_OUT_FILE,
            "            i := i + 1; -- update counter, miss end of loop");
        TEXT_IO.PUT_LINE(IO_OUT_FILE,
            "            exit; -- in interactive mode return at end of line.");
    end if;
    TEMPLATE_OUT(IO_OUT_FILE, IO_TEMPLATE, IO_CURRENT_LINE);
    TEXT_IO.PUT_LINE(IO_OUT_FILE, "end " & TSTRING.STR(MISC.BASENAME) & "_io;")
      ;
  end GENERATE_IO_FILE;

end TEMPLATE_MANAGER;
