pragma Source_File_Name (ada_main, Spec_File_Name => "b~tool.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~tool.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E058 : Boolean; pragma Import (Ada, E058, "system__restrictions_E");
      E020 : Boolean; pragma Import (Ada, E020, "system__secondary_stack_E");
      E016 : Boolean; pragma Import (Ada, E016, "system__soft_links_E");
      E026 : Boolean; pragma Import (Ada, E026, "system__exception_table_E");
      E046 : Boolean; pragma Import (Ada, E046, "ada__io_exceptions_E");
      E009 : Boolean; pragma Import (Ada, E009, "ada__tags_E");
      E006 : Boolean; pragma Import (Ada, E006, "ada__streams_E");
      E054 : Boolean; pragma Import (Ada, E054, "system__finalization_root_E");
      E056 : Boolean; pragma Import (Ada, E056, "system__finalization_implementation_E");
      E052 : Boolean; pragma Import (Ada, E052, "ada__finalization_E");
      E050 : Boolean; pragma Import (Ada, E050, "ada__finalization__list_controller_E");
      E079 : Boolean; pragma Import (Ada, E079, "system__file_control_block_E");
      E078 : Boolean; pragma Import (Ada, E078, "system__file_io_E");
      E073 : Boolean; pragma Import (Ada, E073, "ada__text_io_E");
      E070 : Boolean; pragma Import (Ada, E070, "test_dfa_E");
      E068 : Boolean; pragma Import (Ada, E068, "test_io_E");
      E064 : Boolean; pragma Import (Ada, E064, "test_E");
      E080 : Boolean; pragma Import (Ada, E080, "test_visitor_interface_E");
      E048 : Boolean; pragma Import (Ada, E048, "test_model_E");
      E005 : Boolean; pragma Import (Ada, E005, "a_model_E");
      E088 : Boolean; pragma Import (Ada, E088, "b_model_E");
      E090 : Boolean; pragma Import (Ada, E090, "c_model_E");
      E086 : Boolean; pragma Import (Ada, E086, "test_dfs_E");
      E084 : Boolean; pragma Import (Ada, E084, "dfs_print_E");
      E092 : Boolean; pragma Import (Ada, E092, "test_parser_E");
      E099 : Boolean; pragma Import (Ada, E099, "test_tokens_E");

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
      E058 := True;
      System.Soft_Links'Elab_Body;
      E016 := True;
      System.Secondary_Stack'Elab_Body;
      E020 := True;
      System.Exception_Table'Elab_Body;
      E026 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E046 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E006 := True;
      System.Finalization_Root'Elab_Spec;
      E054 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E056 := True;
      Ada.Finalization'Elab_Spec;
      E052 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E050 := True;
      System.File_Control_Block'Elab_Spec;
      E079 := True;
      System.File_Io'Elab_Body;
      E078 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E073 := True;
      Ada.Tags'Elab_Body;
      E009 := True;
      E070 := True;
      test_io'elab_spec;
      E068 := True;
      test'elab_spec;
      E064 := True;
      Test_Visitor_Interface'Elab_Spec;
      E080 := True;
      Test_Model'Elab_Spec;
      E048 := True;
      A_Model'Elab_Spec;
      E005 := True;
      B_Model'Elab_Spec;
      E088 := True;
      C_Model'Elab_Spec;
      E090 := True;
      Test_Dfs'Elab_Spec;
      E086 := True;
      Dfs_Print'Elab_Spec;
      E084 := True;
      test_tokens'elab_spec;
      E099 := True;
      test_parser'elab_body;
      E092 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_tool");

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
   --   ./test_dfa.o
   --   ./test_goto.o
   --   ./test_io.o
   --   ./test.o
   --   ./test_shift_reduce.o
   --   ./test_visitor_interface.o
   --   ./test_model.o
   --   ./a_model.o
   --   ./b_model.o
   --   ./c_model.o
   --   ./test_dfs.o
   --   ./dfs_print.o
   --   ./tool.o
   --   ./test_tokens.o
   --   ./test_parser.o
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
