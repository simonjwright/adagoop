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
package File_Helpers is
   -- read a line from a file of any length
   function Get_Line (
         File : File_Type ) 
     return String; 
end File_Helpers;
