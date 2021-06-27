--------------------------------------------------------------
-- Ada Generator for Object-Oriented Parsers (AdaGOOP)
--
-- By: Martin C. Carlisle
--     United States Air Force Academy
--     Department of Computer Science
--------------------------------------------------------------
with Ada.Command_Line;
with Ada.Text_IO;
with Generate;
procedure adagoop is
   procedure usage is
   begin
      Ada.Text_IO.Put_Line("usage: " &
         Ada.Command_Line.Command_Name & " input_file prefix");
      Ada.Text_IO.Put_Line(
         "where prefix is a prefix to be used for output files");
   end usage;
begin
   if Ada.Command_Line.Argument_Count /= 2 then
      usage;
      return;
   end if;
   
   declare
      Input_Filename : String := Ada.Command_Line.Argument(1);
      Prefix         : String := Ada.Command_Line.Argument(2);
      Input_File     : Ada.Text_IO.File_Type;
   begin
      begin
         Ada.Text_Io.Open(
            File => Input_File,
            Mode => Ada.Text_IO.In_File,
            Name => Input_Filename);
      exception 
         when Ada.Text_IO.Name_Error =>
            Ada.Text_IO.Put_Line(Input_Filename & " not found");
            return;
         when others =>
            Ada.Text_IO.Put_Line("problem opening " & Input_Filename);
            return;
      end;
      Generate.Process_File(
         File   => Input_File,
         Prefix => Prefix);
      Ada.Text_IO.Close(Input_File);
   end;
end adagoop;