--------------------------------------------------------------
-- Ada Generator for Object-Oriented Parsers (AdaGOOP)
--
-- PACKAGE Generate
-- Main generation routines
--
-- By: Martin C. Carlisle
--     United States Air Force Academy
--     Department of Computer Science
--------------------------------------------------------------
with Ada.Text_IO;
package Generate is
   -------------------------------------------------------
   -- Process_File, given an open file, will 
   -- generate prefix.l and prefix_parser.y
   -------------------------------------------------------
   procedure Process_File(
      File   : in out Ada.Text_IO.File_Type;
      Prefix : in String);
end Generate;