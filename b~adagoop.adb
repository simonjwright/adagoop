pragma Source_File_Name (ada_main, Spec_File_Name => "b~adagoop.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~adagoop.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E058 : Boolean; pragma Import (Ada, E058, "system__restrictions_E");
      E009 : Boolean; pragma Import (Ada, E009, "system__secondary_stack_E");
      E013 : Boolean; pragma Import (Ada, E013, "system__soft_links_E");
      E019 : Boolean; pragma Import (Ada, E019, "system__exception_table_E");
      E065 : Boolean; pragma Import (Ada, E065, "ada__io_exceptions_E");
      E075 : Boolean; pragma Import (Ada, E075, "ada__strings_E");
      E045 : Boolean; pragma Import (Ada, E045, "ada__tags_E");
      E043 : Boolean; pragma Import (Ada, E043, "ada__streams_E");
      E054 : Boolean; pragma Import (Ada, E054, "system__finalization_root_E");
      E077 : Boolean; pragma Import (Ada, E077, "ada__strings__maps_E");
      E080 : Boolean; pragma Import (Ada, E080, "ada__strings__maps__constants_E");
      E056 : Boolean; pragma Import (Ada, E056, "system__finalization_implementation_E");
      E052 : Boolean; pragma Import (Ada, E052, "ada__finalization_E");
      E068 : Boolean; pragma Import (Ada, E068, "ada__finalization__list_controller_E");
      E082 : Boolean; pragma Import (Ada, E082, "ada__strings__unbounded_E");
      E066 : Boolean; pragma Import (Ada, E066, "system__file_control_block_E");
      E050 : Boolean; pragma Import (Ada, E050, "system__file_io_E");
      E042 : Boolean; pragma Import (Ada, E042, "ada__text_io_E");
      E092 : Boolean; pragma Import (Ada, E092, "file_helpers_E");
      E070 : Boolean; pragma Import (Ada, E070, "generate_E");
      E096 : Boolean; pragma Import (Ada, E096, "list_E");
      E098 : Boolean; pragma Import (Ada, E098, "list__key_E");
      E094 : Boolean; pragma Import (Ada, E094, "hash_E");
      E101 : Boolean; pragma Import (Ada, E101, "string_parsing_E");

      Restrictions : constant String :=
        "nnvvnnnvvvnnnnnvnvvvvvvvvvnvnvnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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
      E013 := True;
      System.Secondary_Stack'Elab_Body;
      E009 := True;
      System.Exception_Table'Elab_Body;
      E019 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E065 := True;
      Ada.Strings'Elab_Spec;
      E075 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E043 := True;
      System.Finalization_Root'Elab_Spec;
      E054 := True;
      Ada.Strings.Maps'Elab_Spec;
      E077 := True;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E080 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E056 := True;
      Ada.Finalization'Elab_Spec;
      E052 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E068 := True;
      Ada.Strings.Unbounded'Elab_Spec;
      E082 := True;
      System.File_Control_Block'Elab_Spec;
      E066 := True;
      System.File_Io'Elab_Body;
      E050 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E042 := True;
      Ada.Tags'Elab_Body;
      E045 := True;
      E092 := True;
      E096 := True;
      E098 := True;
      E094 := True;
      E101 := True;
      Generate'Elab_Body;
      E070 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_adagoop");

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
   --   ./file_helpers.o
   --   ./adagoop.o
   --   ./limits.o
   --   ./list.o
   --   ./list-key.o
   --   ./hash.o
   --   ./string_parsing.o
   --   ./generate.o
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
