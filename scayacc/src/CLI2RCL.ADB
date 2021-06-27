-- Copyright (c) 1990 Regents of the University of California.
-- All rights reserved.
--
--    The primary authors of ayacc were David Taback and Deepak Tolani.
--    Enhancements were made by Ronald J. Schmalz.
--
--    Send requests for ayacc information to ayacc-info@ics.uci.edu
--    Send bug reports for ayacc to ayacc-bugs@ics.uci.edu
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

--|
--| Notes: This routine contains the machine specific details of how
--|        Ayacc obtains the command line arguments from the host Operating
--|        System.  This version assumes Verdix running on Unix machines.
--|
--|        The only requirement on this subunit is that it place the string
--|        of characters typed by the user on the command line into the
--|        parameter "Command_Args".
--|

with Ada.Command_Line; -- Ada95
separate (Command_Line_Interface2)
procedure Read_Command_Line (Command_Args : out Command_Line_Type) is

  Result : Command_Line_Type := (others => ' ');
  Last   : NATURAL := 0;
  
  procedure Append (Token : in STRING) is
  begin
    if Last + Token'LENGTH > Maximum_Command_Length then
      null; -- do nothing if result will be too long
    else
      Result (Last+1 .. Last+Token'LENGTH+1) := Token & ' ';
      Last := Last + Token'LENGTH + 1;
    end if;
  end Append;

begin

  -- Rebuild command line from tokens
  for i in 1 .. Ada.Command_Line.Argument_Count
  loop
    Append(Ada.Command_Line.Argument (i));
  end loop;

  Command_Args := Result;

end Read_Command_Line;
