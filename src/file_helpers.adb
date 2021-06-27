---------------------------------------------------------------
--
--  PACKAGE FILE_HELPERS
--  Description : aid in reading files
--
--  By: Dr. Martin C. Carlisle
--
---------------------------------------------------------------

with Ada.Text_IO;
with Ada.Strings.Unbounded;

package body File_Helpers is
   Line_Number : Natural := 0;

   -- Get a line, no matter how long it is.
   -- Could use recursion here, but instead I'm using
   -- an unbounded string
   function Get_Line (File : File_Type) return String is
      Part : String (1 .. 256);
      Last : Natural;
      Long : Ada.Strings.Unbounded.Unbounded_String;
      use Ada.Strings.Unbounded;
      use Ada.Text_IO;
   begin
      Get_Line (File, Part, Last);
      if Last = Part'Last then
         Long := To_Unbounded_String (Part);
         while Last = Part'Last loop
            Get_Line (File, Part, Last);
            Long := Long & Part (1 .. Last);
         end loop;
         if Length (Long) > 0
           and then Element (Long, Length (Long)) = ASCII.CR
         then
            return Slice (Long, 1, Length (Long) - 1);
         else
            return To_String (Long);
         end if;
      else
         if Last > 0
           and then Part (Last) = ASCII.CR
         then
            return Part (1 .. Last - 1);
         else
            return Part (1 .. Last);
         end if;
      end if;
   end Get_Line;

end File_Helpers;
