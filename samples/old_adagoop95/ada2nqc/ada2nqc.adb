with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_Io; use Ada.Text_Io;
with Trans_Parser; 
with Trans_Model; use Trans_Model;
with ada.strings; use ada.strings;
with ada.strings.unbounded; use ada.strings.unbounded;
with Trans;

procedure ada2nqc is 
   Parse_Tree    : Trans_Model.Parseable_Ptr;  
   Nqc_Prog_File : File_Type;  
   Input_Filename : Unbounded_String;
   Output_Filename : Unbounded_String;
   Dot_Index : Integer;
   Last_Slash_Position : Integer;
   
begin
   case Argument_Count is
      when 1 =>   --tool input_file
         Input_Filename := To_Unbounded_String(Argument(1));
         
         --if no extension, assume .adb
         Dot_Index := Index(Source => Input_Filename, Pattern => ".", Going => Backward);
         -- no period?  Assume adb for input, create .nqc file for output
         if Dot_Index = 0 then
            Output_Filename := Input_Filename & To_Unbounded_String(".nqc");
            Input_Filename := Input_Filename & To_Unbounded_String(".adb");
         else
            Output_Filename := Slice(Source => Input_Filename, Low => 1, High => Dot_Index-1) & To_Unbounded_String(".nqc");
         end if;
         
         --strip off everything up through the last '\' for output file,
         --since it's supposed to go in current directory
         Last_Slash_Position := Index(Source => Output_Filename, Pattern => "\", Going => Backward);
         Output_Filename := To_Unbounded_String(Slice(Source => Output_Filename, 
            Low => Last_Slash_Position+1, High => Length(Output_Filename)));
         
      when 2 =>   --tool input_file output_file
         
         Input_Filename := To_Unbounded_String(Argument(1));
         Output_Filename := To_Unbounded_String(Argument(2));
         
         --if no extension for first argument, assume .adb
         if Index(Source => Input_Filename, Pattern => ".") = 0 then
            Input_Filename := Input_Filename & To_Unbounded_String(".adb");
         end if;
         
         --if no extension for second argument, assume .nqc
         if Index(Source => Output_Filename, Pattern => ".") = 0 then
            Output_Filename := Output_Filename & To_Unbounded_String(".nqc");
         end if;
      when others =>   --invalid command line
         Put_Line("usage: " & Ada.Command_Line.Command_Name & " input_file [output_file]");
         Set_Exit_Status(1);   --exit status for command line/file arguments problem
         return;
   end case;

   Create(File => Nqc_Prog_File, Mode => Out_File, Name => To_String(Output_Filename));
   Set_Input_Filename(Input_Filename);
   Set_Output(File => Nqc_Prog_File);
   Trans_Parser.Run(To_String(Input_Filename));
   Parse_Tree := Trans_Parser.Get_Parse_Tree;
   --A null tree means the program didn't parse,  because it wasn't run
   --through AdaGide first.
   if Parse_Tree = null then
      put(File => Standard_Error, Item => "Something's wrong with your Ada program that the Ada/Mindstorms");
      new_line(File => Standard_Error);
      put(File => Standard_Error, Item => "translator can't detect. Please run AdaGIDE on it first.");
      new_line(File => Standard_Error);   
      raise Parse_Error_Exception;
   else
      Trans_Model.Translate(This => Parse_Tree.all);
      Set_Exit_Status(0);   --exit status for successful completion
   end if;
   
exception
     when Trans.Invalid_Character =>
        -- remove folder info before printing error message
        Last_Slash_Position := Index(Source => Input_Filename, Pattern => "\", Going => Backward);
        Input_Filename := To_Unbounded_String(Slice(Source => Input_Filename, 
            Low => Last_Slash_Position+1, High => Length(Input_Filename)));
        -- print error message in format for AdaGIDE
        put(file => Standard_Error, Item => To_String(Input_Filename) & ":");
        put(file => Standard_Error, Item => Trans.Get_Current_Line, Width => 0);
        put(file => Standard_Error, Item => ":" );
        put(file => Standard_Error, Item => Trans.Get_Current_Column, Width => 0);
        put(file => Standard_Error, Item => ": unsupported character." );
        new_line(file => Standard_Error);
     when Name_Error =>
        if Argument_Count = 1 then
           put("Nonexistent or invalid filename: ");
           put(Item => To_String(Input_Filename));
           new_line;
        else
           put("Nonexistent or invalid filename(s): ");
           put(Item => To_String(Input_Filename));
           put(Item => ", ");
           put(Item => To_String(Output_Filename));
           new_line;
        end if;
        Set_Exit_Status(1);   --command line/file arguments problem
        return;
     when Status_Error =>
        put("Can't create file ");
        put(Item => To_String(Output_Filename));
        put(Item => ", it's been opened by some other application.");
        new_line;
        Set_Exit_Status(1);   --command line/file arguments problem
        return;
     when Use_Error =>
        put("Can't create file ");
        put(Item => To_String(Output_Filename));
        new_line;
        Set_Exit_Status(1);   --command line/file arguments problem
        return;
     when Parse_Error_Exception =>   -- so that program terminates cleanly as soon as a parse error is detected
        Set_Exit_Status(2);   --exit status for parse error
        return;
end ada2nqc;