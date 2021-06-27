pragma Source_File_Name (ada_main, Spec_File_Name => "b~scayacc.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~scayacc.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E078 : Boolean; pragma Import (Ada, E078, "system__restrictions_E");
      E015 : Boolean; pragma Import (Ada, E015, "system__secondary_stack_E");
      E011 : Boolean; pragma Import (Ada, E011, "system__soft_links_E");
      E021 : Boolean; pragma Import (Ada, E021, "system__exception_table_E");
      E081 : Boolean; pragma Import (Ada, E081, "ada__io_exceptions_E");
      E091 : Boolean; pragma Import (Ada, E091, "ada__strings_E");
      E065 : Boolean; pragma Import (Ada, E065, "ada__tags_E");
      E063 : Boolean; pragma Import (Ada, E063, "ada__streams_E");
      E074 : Boolean; pragma Import (Ada, E074, "system__finalization_root_E");
      E093 : Boolean; pragma Import (Ada, E093, "ada__strings__maps_E");
      E096 : Boolean; pragma Import (Ada, E096, "ada__strings__maps__constants_E");
      E076 : Boolean; pragma Import (Ada, E076, "system__finalization_implementation_E");
      E072 : Boolean; pragma Import (Ada, E072, "ada__finalization_E");
      E084 : Boolean; pragma Import (Ada, E084, "ada__finalization__list_controller_E");
      E082 : Boolean; pragma Import (Ada, E082, "system__file_control_block_E");
      E070 : Boolean; pragma Import (Ada, E070, "system__file_io_E");
      E062 : Boolean; pragma Import (Ada, E062, "ada__text_io_E");
      E129 : Boolean; pragma Import (Ada, E129, "actions_file_E");
      E040 : Boolean; pragma Import (Ada, E040, "ayacc_file_names_E");
      E119 : Boolean; pragma Import (Ada, E119, "error_report_file_E");
      E141 : Boolean; pragma Import (Ada, E141, "goto_file_E");
      E046 : Boolean; pragma Import (Ada, E046, "lists_E");
      E125 : Boolean; pragma Import (Ada, E125, "options_E");
      E127 : Boolean; pragma Import (Ada, E127, "output_file_E");
      E139 : Boolean; pragma Import (Ada, E139, "parse_table_E");
      E161 : Boolean; pragma Import (Ada, E161, "parse_template_file_E");
      E165 : Boolean; pragma Import (Ada, E165, "parser_E");
      E147 : Boolean; pragma Import (Ada, E147, "ragged_E");
      E153 : Boolean; pragma Import (Ada, E153, "set_pack_E");
      E157 : Boolean; pragma Import (Ada, E157, "shift_reduce_file_E");
      E121 : Boolean; pragma Import (Ada, E121, "source_file_E");
      E131 : Boolean; pragma Import (Ada, E131, "lexical_analyzer_E");
      E155 : Boolean; pragma Import (Ada, E155, "stack_pack_E");
      E048 : Boolean; pragma Import (Ada, E048, "stack_pkg_E");
      E042 : Boolean; pragma Import (Ada, E042, "str_pack_E");
      E044 : Boolean; pragma Import (Ada, E044, "string_pkg_E");
      E117 : Boolean; pragma Import (Ada, E117, "string_lists_E");
      E058 : Boolean; pragma Import (Ada, E058, "command_line_interface2_E");
      E100 : Boolean; pragma Import (Ada, E100, "string_scanner_E");
      E135 : Boolean; pragma Import (Ada, E135, "symbol_table_E");
      E143 : Boolean; pragma Import (Ada, E143, "rule_table_E");
      E149 : Boolean; pragma Import (Ada, E149, "lr0_machine_E");
      E151 : Boolean; pragma Import (Ada, E151, "symbol_info_E");
      E145 : Boolean; pragma Import (Ada, E145, "lalr_symbol_info_E");
      E133 : Boolean; pragma Import (Ada, E133, "tokens_file_E");
      E159 : Boolean; pragma Import (Ada, E159, "verbose_file_E");

      Restrictions : constant String :=
        "nnvvnnnvvvnnvnnvnvvvvvvnvvnvnvnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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
      E078 := True;
      System.Soft_Links'Elab_Body;
      E011 := True;
      System.Secondary_Stack'Elab_Body;
      E015 := True;
      System.Exception_Table'Elab_Body;
      E021 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E081 := True;
      Ada.Strings'Elab_Spec;
      E091 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E063 := True;
      System.Finalization_Root'Elab_Spec;
      E074 := True;
      Ada.Strings.Maps'Elab_Spec;
      E093 := True;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E096 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E076 := True;
      Ada.Finalization'Elab_Spec;
      E072 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E084 := True;
      System.File_Control_Block'Elab_Spec;
      E082 := True;
      System.File_Io'Elab_Body;
      E070 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E062 := True;
      Ada.Tags'Elab_Body;
      E065 := True;
      Ayacc_File_Names'Elab_Spec;
      E129 := True;
      E046 := True;
      Options'Elab_Spec;
      E125 := True;
      Parser'Elab_Spec;
      E147 := True;
      E153 := True;
      E157 := True;
      Source_File'Elab_Spec;
      Source_File'Elab_Body;
      E121 := True;
      Lexical_Analyzer'Elab_Spec;
      E127 := True;
      E155 := True;
      E048 := True;
      E042 := True;
      E119 := True;
      string_pkg'elab_spec;
      string_pkg'elab_body;
      E044 := True;
      Parse_Template_File'Elab_Body;
      E161 := True;
      Ayacc_File_Names'Elab_Body;
      E040 := True;
      String_Lists'Elab_Spec;
      E117 := True;
      command_line_interface2'elab_spec;
      String_Scanner'Elab_Spec;
      E100 := True;
      command_line_interface2'elab_body;
      E058 := True;
      Symbol_Table'Elab_Spec;
      Symbol_Table'Elab_Body;
      E135 := True;
      Rule_Table'Elab_Body;
      E143 := True;
      E141 := True;
      Lr0_Machine'Elab_Spec;
      Symbol_Info'Elab_Spec;
      E151 := True;
      E149 := True;
      Lalr_Symbol_Info'Elab_Body;
      E145 := True;
      E133 := True;
      Lexical_Analyzer'Elab_Body;
      E131 := True;
      E165 := True;
      E159 := True;
      Parse_Table'Elab_Body;
      E139 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_scayacc");

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
   --   ./actions.o
   --   ./lists.o
   --   ./options.o
   --   ./ragged.o
   --   ./setpack.o
   --   ./srfile.o
   --   ./sourcefi.o
   --   ./outfile.o
   --   ./stackpac.o
   --   ./stackpkg.o
   --   ./strpack.o
   --   ./erfile.o
   --   ./stringpk.o
   --   ./parsetem.o
   --   ./ayaccfn.o
   --   ./stringli.o
   --   ./stringsc.o
   --   ./cli2.o
   --   ./symtab.o
   --   ./ruletab.o
   --   ./gotofile.o
   --   ./syminfo.o
   --   ./lr0mach.o
   --   ./lalrsym.o
   --   ./tokfile.o
   --   ./lexer.o
   --   ./parser.o
   --   ./scayacc.o
   --   ./verbfile.o
   --   ./parsetab.o
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
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
