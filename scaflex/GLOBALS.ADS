package Global_Constants is
--| PURPOSE
--| Isolate in one place the key system constants used in aflex

  Ada_Filename_Suffix : constant STRING := "a";
  -- This is the suffix to be appended to all source file names by
  -- default after first adding a dot (i.e., if the file name
  -- prefix is my_file, the prefix with suffix is
  -- my_file.ADA_FILENAME_SUFFIX)

  Maximum_Line_Length : constant := 1024;
  -- Maximum length of line in a source file being analyzed

  Maximum_File_Name_Length : constant := 1024;
  -- Maximum length of a file name

  Error_Log_File_Name : constant STRING := "aflex.log";
  -- Name of the output file to which to write error messages.
  -- Some systems allow this to be a device, like /dev/tty.

  Backtrack_File_name : constant STRING := "aflex.bkt";
  -- Name of Backtrack File

  IO_File_Name : constant STRING := "afyy_io." & Ada_Filename_Suffix;
  -- Name of I/O File used if no input file is named on command line

  DFA_File_Name : constant STRING := "afyy_dfa." & Ada_Filename_Suffix;
  -- Name of DFA File used if no input file is named on command line

  Scanner_File_Name : constant STRING := "afyy." & Ada_Filename_Suffix;
  -- Name of Scanner File used if no input file is named on command line

end Global_Constants;
