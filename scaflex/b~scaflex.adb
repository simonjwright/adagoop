pragma Source_File_Name (ada_main, Spec_File_Name => "b~scaflex.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~scaflex.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E080 : Boolean; pragma Import (Ada, E080, "system__restrictions_E");
      E024 : Boolean; pragma Import (Ada, E024, "system__secondary_stack_E");
      E020 : Boolean; pragma Import (Ada, E020, "system__soft_links_E");
      E030 : Boolean; pragma Import (Ada, E030, "system__exception_table_E");
      E013 : Boolean; pragma Import (Ada, E013, "ada__calendar_E");
      E087 : Boolean; pragma Import (Ada, E087, "ada__io_exceptions_E");
      E067 : Boolean; pragma Import (Ada, E067, "ada__tags_E");
      E065 : Boolean; pragma Import (Ada, E065, "ada__streams_E");
      E052 : Boolean; pragma Import (Ada, E052, "interfaces__c_E");
      E054 : Boolean; pragma Import (Ada, E054, "interfaces__c__strings_E");
      E076 : Boolean; pragma Import (Ada, E076, "system__finalization_root_E");
      E078 : Boolean; pragma Import (Ada, E078, "system__finalization_implementation_E");
      E074 : Boolean; pragma Import (Ada, E074, "ada__finalization_E");
      E090 : Boolean; pragma Import (Ada, E090, "ada__finalization__list_controller_E");
      E088 : Boolean; pragma Import (Ada, E088, "system__file_control_block_E");
      E072 : Boolean; pragma Import (Ada, E072, "system__file_io_E");
      E064 : Boolean; pragma Import (Ada, E064, "ada__text_io_E");
      E149 : Boolean; pragma Import (Ada, E149, "ascan_dfa_E");
      E151 : Boolean; pragma Import (Ada, E151, "ascan_io_E");
      E058 : Boolean; pragma Import (Ada, E058, "external_file_manager_E");
      E130 : Boolean; pragma Import (Ada, E130, "main_body_E");
      E141 : Boolean; pragma Import (Ada, E141, "nfa_E");
      E167 : Boolean; pragma Import (Ada, E167, "template_manager_E");
      E098 : Boolean; pragma Import (Ada, E098, "vstrings_E");
      E157 : Boolean; pragma Import (Ada, E157, "file_string_E");
      E092 : Boolean; pragma Import (Ada, E092, "tstring_E");
      E132 : Boolean; pragma Import (Ada, E132, "command_line_interface2_E");
      E061 : Boolean; pragma Import (Ada, E061, "misc_defs_E");
      E007 : Boolean; pragma Import (Ada, E007, "ccl_E");
      E005 : Boolean; pragma Import (Ada, E005, "dfa_E");
      E136 : Boolean; pragma Import (Ada, E136, "ecs_E");
      E138 : Boolean; pragma Import (Ada, E138, "gen_E");
      E009 : Boolean; pragma Import (Ada, E009, "misc_E");
      E139 : Boolean; pragma Import (Ada, E139, "parse_tokens_E");
      E155 : Boolean; pragma Import (Ada, E155, "skeleton_manager_E");
      E153 : Boolean; pragma Import (Ada, E153, "sym_E");
      E145 : Boolean; pragma Import (Ada, E145, "scanner_E");
      E163 : Boolean; pragma Import (Ada, E163, "aflex_scanner_E");
      E159 : Boolean; pragma Import (Ada, E159, "parser_E");
      E165 : Boolean; pragma Import (Ada, E165, "tblcmp_E");

      Restrictions : constant String :=
        "nnvvnvvvvvnnvnnvnvvvvvvnvvnvnvnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
        "nnnnnnnnnnnnnn" & ASCII.Nul;

      Interrupt_States : constant String :=
        "";

      procedure Set_Globals
        (Main_Priority            : Integer;
         Time_Slice_Value         : Integer;
         WC_Encoding              : Character;
         Locking_Policy           : Character;
         Queuing_Policy           : Character;
         Task_Dispatching_Policy  : Character;
         Restrictions             : System.Address;
         Interrupt_States         : System.Address;
         Num_Interrupt_States     : Integer;
         Unreserve_All_Interrupts : Integer;
         Exception_Tracebacks     : Integer;
         Zero_Cost_Exceptions     : Integer;
         Detect_Blocking          : Integer;
         Default_Stack_Size       : Integer);
      pragma Import (C, Set_Globals, "__gnat_set_globals");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
   begin
      Set_Globals
        (Main_Priority            => -1,
         Time_Slice_Value         => -1,
         WC_Encoding              => 'b',
         Locking_Policy           => ' ',
         Queuing_Policy           => ' ',
         Task_Dispatching_Policy  => ' ',
         Restrictions             => Restrictions'Address,
         Interrupt_States         => Interrupt_States'Address,
         Num_Interrupt_States     => 0,
         Unreserve_All_Interrupts => 0,
         Exception_Tracebacks     => 0,
         Zero_Cost_Exceptions     => 1,
         Detect_Blocking          => 0,
         Default_Stack_Size       => -1);

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      System.Restrictions'Elab_Spec;
      System.Restrictions'Elab_Body;
      E080 := True;
      System.Soft_Links'Elab_Body;
      E020 := True;
      System.Secondary_Stack'Elab_Body;
      E024 := True;
      System.Exception_Table'Elab_Body;
      E030 := True;
      Ada.Calendar'Elab_Spec;
      Ada.Io_Exceptions'Elab_Spec;
      E087 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E065 := True;
      Interfaces.C'Elab_Spec;
      E052 := True;
      Interfaces.C.Strings'Elab_Spec;
      E054 := True;
      System.Finalization_Root'Elab_Spec;
      E076 := True;
      Ada.Calendar'Elab_Body;
      E013 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E078 := True;
      Ada.Finalization'Elab_Spec;
      E074 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E090 := True;
      System.File_Control_Block'Elab_Spec;
      E088 := True;
      System.File_Io'Elab_Body;
      E072 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E064 := True;
      Ada.Tags'Elab_Body;
      E067 := True;
      E149 := True;
      ascan_io'elab_spec;
      E151 := True;
      MAIN_BODY'ELAB_SPEC;
      E098 := True;
      FILE_STRING'ELAB_SPEC;
      E157 := True;
      TSTRING'ELAB_SPEC;
      E092 := True;
      COMMAND_LINE_INTERFACE2'ELAB_SPEC;
      E132 := True;
      MISC_DEFS'ELAB_SPEC;
      E061 := True;
      E009 := True;
      E136 := True;
      E007 := True;
      TEMPLATE_MANAGER'ELAB_BODY;
      E167 := True;
      E141 := True;
      E058 := True;
      Parse_Tokens'Elab_Spec;
      E139 := True;
      SKELETON_MANAGER'ELAB_BODY;
      E155 := True;
      E153 := True;
      E145 := True;
      E138 := True;
      E163 := True;
      E159 := True;
      MAIN_BODY'ELAB_BODY;
      E130 := True;
      E165 := True;
      E005 := True;
   end adainit;

   procedure adafinal is
   begin
      Do_Finalize;
   end adafinal;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure initialize (Addr : System.Address);
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");

      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_scaflex");

      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Break_Start;
      Ada_Main_Program;
      Do_Finalize;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   ./ascandfa.o
   --   ./ascanio.o
   --   ./globals.o
   --   ./intio.o
   --   ./pgoto.o
   --   ./psr.o
   --   ./vstrings.o
   --   ./fstring.o
   --   ./tstring.o
   --   ./cli2.o
   --   ./miscdefs.o
   --   ./misc.o
   --   ./ecs.o
   --   ./ccl.o
   --   ./tempmgr.o
   --   ./nfa.o
   --   ./efm.o
   --   ./scaflex.o
   --   ./ptokens.o
   --   ./skelmgr.o
   --   ./sym.o
   --   ./scanner.o
   --   ./gen.o
   --   ./aflexscn.o
   --   ./parser.o
   --   ./main.o
   --   ./tblcmp.o
   --   ./dfa.o
   --   -L./
   --   -LC:\gnatpro\bindings\GNATCOM\bindings\
   --   -LC:\gnat\adagraph\
   --   -LC:\Rapid\tash\
   --   -LC:\Rapid\Tcl_Peer\
   --   -LC:\Rapid\lib\
   --   -LC:\Rapid\mcc_gui\
   --   -LC:\gnatpro\aunit\
   --   -LC:/GNATPRO/5D65F~1.05W/lib/gcc/pentium-mingw32msv/3.4.6/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
