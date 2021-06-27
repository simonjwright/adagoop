-- TITLE command line interface body
-- SPEC AUTHOR: John Self (UCI)
-- BODY AUTHOR: Richard Conn (PAL)
-- DESCRIPTION command line interface body for use with any system
-- supported by CS Parts.
-- NOTES this file is system independent

with TSTRING; 
with Ada.Command_Line; -- from Ada95
package body COMMAND_LINE_INTERFACE2 is 

  procedure INITIALIZE_COMMAND_LINE is 
  begin
    -- Set ARGC
    ARGC := Ada.Command_Line.Argument_Count+1;
    if ARGC > MAX_NUMBER_ARGS then
      ARGC := MAX_NUMBER_ARGS;
    end if;
    
    -- Load ARGV
    ARGV(0) := TSTRING.VSTR(Ada.Command_Line.Command_Name);
    for I in 1 .. ARGC - 1 loop
      ARGV(I) := TSTRING.VSTR(Ada.Command_Line.Argument(I)); 
    end loop; 
  end INITIALIZE_COMMAND_LINE; 
  
end COMMAND_LINE_INTERFACE2; 
