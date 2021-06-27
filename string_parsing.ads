---------------------------------------------------------------
--                                                           
--  PACKAGE STRING_PARSING
--  Description : aid in reading files
--                          
--  By: Dr. Martin C. Carlisle
--                                         
---------------------------------------------------------------
with Ada.Strings.Fixed;
package String_Parsing is
   ---------------------------------------------------------
   -- Is_Comment_Line checks to see if the given line is an
   -- Ada comment (first non-white is "--")
   ---------------------------------------------------------
   function Is_Comment_Line (
         Line : in     String ) 
     return Boolean; 

   ---------------------------------------------------------
   -- Get_First_Word returns the first sequence of non-white
   -- characters on the line, along with the starting and
   -- ending indices-- the word may not contain a ; : or | 
   -- unless it begins with one of these
   ---------------------------------------------------------
   procedure Get_First_Word (
         Line  : in     String;   
         First :    out Positive; 
         Last  :    out Natural   ); 

   ---------------------------------------------------------
   -- Index_Non_Blank returns the index of the first non-blank
   -- character in Source
   ---------------------------------------------------------
   function Index_Non_Blank (
         Source : in     String;                                
         Going  : in     Ada.Strings.Direction := Ada.Strings.Forward ) 
     return Natural renames Ada.Strings.Fixed.Index_Non_Blank; 
     
   ---------------------------------------------------------
   -- Is_Blank_Line is true if Index_Non_Blank returns 0
   -- (i.e. all characters are blank)
   ---------------------------------------------------------
   function Is_Blank_Line(Source : in String) return Boolean;
end String_Parsing;