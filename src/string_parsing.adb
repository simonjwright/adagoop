---------------------------------------------------------------
--                                                           
--  PACKAGE STRING_PARSING
--  Description : aid in reading files
--                          
--  By: Dr. Martin C. Carlisle
--                                         
---------------------------------------------------------------
with Ada.Strings.Maps;
use type Ada.Strings.Maps.Character_Set;
with Ada.Characters.Latin_1;
package body String_Parsing is
   
   --------------------
   -- Get_First_Word --
   --------------------

   procedure Get_First_Word
     (Line  : in     String;
      First :    out Positive;
      Last  :    out Natural)
   is
      My_Set : Ada.Strings.Maps.Character_Set;
   begin
      My_Set := not(Ada.Strings.Maps.To_Set(' ' & 
        Ada.Characters.Latin_1.HT));
      Ada.Strings.Fixed.Find_Token(
         Source => Line,
         Set    => My_Set,
         Test   => Ada.Strings.Inside,
         First  => First,
         Last   => Last);
      for i in reverse First+1..Last loop
         if Line(i) = ';' or Line(i) = ':' or Line(i) = '|' then
            Last := i-1;
         end if;
      end loop;
   end Get_First_Word;

   ---------------------
   -- Is_Comment_Line --
   ---------------------

   function Is_Comment_Line
     (Line : in     String)
      return Boolean
   is
      x : Natural := Index_Non_Blank(Line);
   begin
      if x > 0 and x < Line'Last-1 then
         return Line(x..x+1) = "--";
      else
         return false;
      end if;
   end Is_Comment_Line;

   function Is_Blank_Line(Source : in String) return Boolean is
   begin
      return Index_Non_Blank(Source)=0;
   end Is_Blank_Line;

end String_Parsing;

