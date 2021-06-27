---------------------------------------------------------------
--                                                           
--  PACKAGE FILE_HELPERS 
--  Description : aid in reading files
--                          
--  By: Dr. Martin C. Carlisle
--                                         
---------------------------------------------------------------

with Ada.Text_Io;
use Ada.Text_Io;
with Ada.Strings.Unbounded;
package body File_Helpers is
   Line_Number : Natural := 0;
   
   -- Get a line, no matter how long it is.  
   -- Could use recursion here, but instead I'm using
   -- an unbounded string
   function Get_Line (
         File : File_Type ) 
     return String is 
      Part : String (1 .. 256);  
      Last : Natural;  
      Long : Ada.Strings.Unbounded.Unbounded_String;  
      use type Ada.Strings.Unbounded.Unbounded_String;
   begin
      Get_Line(File, Part, Last);
      if Last = Part'Last then
         Long := Ada.Strings.Unbounded.To_Unbounded_String(Part);
         while Last=Part'Last loop
            Get_Line(File,Part,Last);
            Long := Long & Part(1..Last);
         end loop;
         return Ada.Strings.Unbounded.To_String(Long);
      else
         return Part(1..Last);
      end if;
   end Get_Line;

end File_Helpers;
