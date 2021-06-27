--------------------------
-- file_managerB.a
--------------------------
-- Copyright (c) 1990 Regents of the University of California.
-- All rights reserved.
--
-- This software was developed by John Self of the Arcadia project
-- at the University of California, Irvine.
--
-- Redistribution and use in source and binary forms are permitted
-- provided that the above copyright notice and this paragraph are
-- duplicated in all such forms and that any documentation,
-- advertising materials, and other materials related to such
-- distribution and use acknowledge that the software was developed
-- by the University of California, Irvine.  The name of the
-- University may not be used to endorse or promote products derived
-- from this software without specific prior written permission.
-- THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
-- IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
-- WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

-- TITLE external_file_manager
-- AUTHOR: John Self (UCI)
-- DESCRIPTION opens external files for other functions
-- NOTES This package opens external files, and thus may be system dependent
--       because of limitations on file names.
--       This version is for the VADS 5.5 Ada development system.
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/file_managerB.a,v 1.5 90/01/12 15:19:58 self Exp Locker: self $ 

-- History
-- 14-Jun-1991		Rolf EBERT	
--    added body of STD_Error.
--    declaration of Ada_Suffix as a constant String.


with MISC_DEFS, TSTRING, TEXT_IO, MISC; use MISC_DEFS, TSTRING, TEXT_IO, MISC; 
with Global_Constants;
package body EXTERNAL_FILE_MANAGER is 

-- FIX comment about compiler dependent

--   subtype SUFFIX_TYPE is STRING(1 .. 1); 
-- 
--   function ADA_SUFFIX return SUFFIX_TYPE is 
--   begin
--     return "a"; 
--   end ADA_SUFFIX; 

  Ada_Suffix : constant String := Global_Constants.Ada_Filename_Suffix;

  Std_Err : File_Type;

  function STD_Error return File_Type is
  begin
      return Std_Err;
  end STD_Error;


  procedure GET_IO_FILE(F : in out FILE_TYPE) is 
  begin
    if (LEN(INFILENAME) /= 0) then 
      CREATE(F, OUT_FILE, STR(MISC.BASENAME) & "_io." & ADA_SUFFIX); 
    else 
      CREATE(F, OUT_FILE, Global_Constants.IO_File_Name); 
    end if; 
  exception
    when USE_ERROR | NAME_ERROR => 
      MISC.AFLEXFATAL("could not create IO package file"); 
  end GET_IO_FILE; 

  procedure GET_DFA_FILE(F : in out FILE_TYPE) is 
  begin
    if (LEN(INFILENAME) /= 0) then 
      CREATE(F, OUT_FILE, STR(MISC.BASENAME) & "_dfa." & ADA_SUFFIX); 
    else 
      CREATE(F, OUT_FILE, Global_Constants.DFA_File_Name);
    end if; 
  exception
    when USE_ERROR | NAME_ERROR => 
      MISC.AFLEXFATAL("could not create DFA package file"); 
  end GET_DFA_FILE; 

  procedure GET_SCANNER_FILE(F : in out FILE_TYPE) is 
    OUTFILE_NAME : VSTRING; 
  begin
    if (LEN(INFILENAME) /= 0) then 

      -- give out infile + ada_suffix
      OUTFILE_NAME := MISC.BASENAME & "." & ADA_SUFFIX; 
    else 
      OUTFILE_NAME := VSTR(Global_Constants.Scanner_File_Name);
    end if; 

    CREATE(F, OUT_FILE, STR(OUTFILE_NAME)); 
    SET_OUTPUT(F); 
  exception
    when NAME_ERROR | USE_ERROR => 
      MISC.AFLEXFATAL("can't create scanner file " & OUTFILE_NAME); 
  end GET_SCANNER_FILE; 

  procedure GET_BACKTRACK_FILE(F : in out FILE_TYPE) is 
  begin
    CREATE(F, OUT_FILE, Global_Constants.Backtrack_File_Name);
  exception
    when USE_ERROR | NAME_ERROR => 
      MISC.AFLEXFATAL("could not create backtrack file"); 
  end GET_BACKTRACK_FILE; 

  procedure Initialize_Files is 
  begin
    Create(Std_Err, Out_File, Global_Constants.Error_Log_File_Name); 
  exception
    when Use_Error | Name_Error => 
      Misc.Aflexfatal("could not create Standard Error as " &
                      Global_Constants.Error_Log_File_Name); 
  end Initialize_Files; 

  procedure Close_Files is
  begin
    Text_IO.Close (Std_Err);
  end Close_Files;

end EXTERNAL_FILE_MANAGER; 
