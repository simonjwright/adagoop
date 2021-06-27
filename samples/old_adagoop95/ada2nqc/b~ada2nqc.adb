pragma Source_File_Name (Ada_Main, Spec_File_Name => "b~ada2nqc.ads");
pragma Source_File_Name (Ada_Main, Body_File_Name => "b~ada2nqc.adb");

package body Ada_Main is
   procedure adainit is

      procedure Set_Globals
        (Main_Priority            : Integer;
         Time_Slice_Value         : Integer;
         WC_Encoding              : Character;
         Locking_Policy           : Character;
         Queuing_Policy           : Character;
         Task_Dispatching_Policy  : Character;
         Adafinal                 : System.Address;
         Unreserve_All_Interrupts : Boolean;
         Exception_Tracebacks     : Boolean);
      pragma Import (C, Set_Globals, "__gnat_set_globals");

   begin
      Set_Globals
        (Main_Priority            => -1,
         Time_Slice_Value         => -1,
         WC_Encoding              => 'b',
         Locking_Policy           => ' ',
         Queuing_Policy           => ' ',
         Task_Dispatching_Policy  => ' ',
         Adafinal                 => adafinal'Address,
         Unreserve_All_Interrupts => False,
         Exception_Tracebacks     => False);
      -- Ada'Elab_Spec;
      -- Ada.Characters'Elab_Spec;
      -- Ada.Characters.Handling'Elab_Spec;
      -- Ada.Characters.Latin_1'Elab_Spec;
      -- Ada.Command_Line'Elab_Spec;
      -- Gnat'Elab_Spec;
      -- Gnat.Case_Util'Elab_Spec;
      -- Gnat.Case_Util'Elab_Body;
      -- Gnat.Heap_Sort_A'Elab_Spec;
      -- Gnat.Heap_Sort_A'Elab_Body;
      -- Gnat.Htable'Elab_Spec;
      -- Gnat.Htable'Elab_Body;
      -- Interfaces'Elab_Spec;
      -- System'Elab_Spec;
      -- System.Bit_Ops'Elab_Spec;
      -- System.Img_Int'Elab_Spec;
      -- System.Img_Lli'Elab_Spec;
      -- System.Machine_Code'Elab_Spec;
      -- System.Parameters'Elab_Spec;
      -- System.Parameters'Elab_Body;
         Interfaces.C_Streams'Elab_Spec;
      -- Interfaces.C_Streams'Elab_Body;
      -- System.Standard_Library'Elab_Spec;
         Ada.Exceptions'Elab_Spec;
      -- System.Exception_Table'Elab_Spec;
         System.Exception_Table'Elab_Body;
         Ada.Io_Exceptions'Elab_Spec;
         Ada.Strings'Elab_Spec;
         System.Exceptions'Elab_Spec;
      -- System.Storage_Elements'Elab_Spec;
      -- System.Storage_Elements'Elab_Body;
      -- System.Machine_State_Operations'Elab_Spec;
      -- System.Machine_State_Operations'Elab_Body;
      -- System.Secondary_Stack'Elab_Spec;
      -- System.Img_Lli'Elab_Body;
      -- System.Img_Int'Elab_Body;
      -- Ada.Command_Line'Elab_Body;
         System.Stack_Checking'Elab_Spec;
      -- System.Soft_Links'Elab_Spec;
         System.Soft_Links'Elab_Body;
      -- System.Stack_Checking'Elab_Body;
         System.Secondary_Stack'Elab_Body;
      -- System.Standard_Library'Elab_Body;
      -- System.String_Ops'Elab_Spec;
      -- System.String_Ops'Elab_Body;
         Ada.Tags'Elab_Spec;
         Ada.Tags'Elab_Body;
         Ada.Streams'Elab_Spec;
      -- System.String_Ops_Concat_3'Elab_Spec;
      -- System.String_Ops_Concat_3'Elab_Body;
      -- System.String_Ops_Concat_4'Elab_Spec;
      -- System.String_Ops_Concat_4'Elab_Body;
      -- System.Traceback'Elab_Spec;
         System.Traceback'Elab_Body;
         Ada.Exceptions'Elab_Body;
      -- System.Unsigned_Types'Elab_Spec;
         Ada.Strings.Maps'Elab_Spec;
      -- Ada.Strings.Maps'Elab_Body;
      -- Ada.Strings.Fixed'Elab_Spec;
         Ada.Strings.Maps.Constants'Elab_Spec;
      -- Ada.Characters.Handling'Elab_Body;
      -- Ada.Strings.Search'Elab_Spec;
      -- Ada.Strings.Search'Elab_Body;
      -- Ada.Strings.Fixed'Elab_Body;
      -- System.Img_Biu'Elab_Spec;
      -- System.Img_Biu'Elab_Body;
      -- System.Img_Llb'Elab_Spec;
      -- System.Img_Llb'Elab_Body;
      -- System.Img_Llw'Elab_Spec;
      -- System.Img_Llw'Elab_Body;
      -- System.Img_Wiu'Elab_Spec;
      -- System.Img_Wiu'Elab_Body;
      -- System.Stream_Attributes'Elab_Spec;
      -- System.Stream_Attributes'Elab_Body;
         System.Finalization_Root'Elab_Spec;
      -- System.Finalization_Root'Elab_Body;
         Gnat.Exceptions'Elab_Spec;
      -- System.Bit_Ops'Elab_Body;
         System.Finalization_Implementation'Elab_Spec;
      -- System.Finalization_Implementation'Elab_Body;
         Ada.Finalization'Elab_Spec;
      -- Ada.Finalization'Elab_Body;
         Ada.Finalization.List_Controller'Elab_Spec;
      -- Ada.Finalization.List_Controller'Elab_Body;
         Ada.Strings.Unbounded'Elab_Spec;
      -- Ada.Strings.Unbounded'Elab_Body;
         System.File_Control_Block'Elab_Spec;
      -- System.File_Io'Elab_Spec;
         System.File_Io'Elab_Body;
         Ada.Text_Io'Elab_Spec;
         Ada.Text_Io'Elab_Body;
      -- Ada.Text_Io.Generic_Aux'Elab_Spec;
      -- Ada.Text_Io.Generic_Aux'Elab_Body;
      -- Ada.Text_Io.Integer_Aux'Elab_Spec;
      -- Ada.Integer_Text_Io'Elab_Spec;
      -- Ada.Integer_Text_Io'Elab_Body;
      -- System.Val_Enum'Elab_Spec;
      -- System.Val_Int'Elab_Spec;
      -- System.Val_Lli'Elab_Spec;
      -- Ada.Text_Io.Integer_Aux'Elab_Body;
      -- System.Val_Llu'Elab_Spec;
      -- System.Val_Uns'Elab_Spec;
      -- System.Val_Util'Elab_Spec;
      -- System.Val_Util'Elab_Body;
      -- System.Val_Uns'Elab_Body;
      -- System.Val_Llu'Elab_Body;
      -- System.Val_Lli'Elab_Body;
      -- System.Val_Int'Elab_Body;
      -- System.Val_Enum'Elab_Body;
      -- Text_Io'Elab_Spec;
      -- Lego'Elab_Spec;
         Lego'Elab_Body;
         lego_builtins'elab_spec;
      -- trans_dfa'elab_spec;
         trans_dfa'elab_body;
         Trans_Goto'Elab_Spec;
         trans_io'elab_spec;
         trans_io'elab_body;
         trans'elab_spec;
         trans'elab_body;
         Trans_Model'Elab_Spec;
      -- Trans_Parser'Elab_Spec;
      -- ada2nqc'elab_body;
      -- Trans_Shift_Reduce'Elab_Spec;
         trans_tokens'elab_spec;
         trans_parser'elab_body;
      -- Type_Membership_Template'Elab_Spec;
         Type_Membership_Template'Elab_Body;
         trans_model'elab_body;
      null;
   end adainit;

   procedure adafinal is

      procedure do_finalize;
      pragma Import
        (C, do_finalize,
         "system__finalization_implementation__finalize_global_list");

   begin
      do_finalize;
   end adafinal;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure initialize;
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");


      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_ada2nqc");

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize;
      adainit;
      Break_Start;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

-- BEGIN Object file/option list
   --   ./lego.o
   --   ./lego_builtins.o
   --   ./trans_dfa.o
   --   ./trans_goto.o
   --   ./trans_io.o
   --   ./trans.o
   --   ./ada2nqc.o
   --   ./trans_shift_reduce.o
   --   ./trans_tokens.o
   --   ./trans_parser.o
   --   ./type_membership_template.o
   --   ./trans_model.o
   --   -L./
   --   -Lc:\gnatpro\Bindings\Win32Ada\
   --   -Lc:\gnatpro\adagraph\
   --   -Ld:\gnatcom\src\
   --   -Lc:\gnatpro\cs110\
   --   -Lc:\gnatpro\feldman\
   --   -Lc:\gnatpro\bindings\glut\
   --   -Lc:\gnatpro\lib\gcc-lib\pentium-mingw32msv\2.8.1\adalib\
   --   c:\gnatpro\lib\gcc-lib\pentium-mingw32msv\2.8.1\adalib\libgnat.a
-- END Object file/option list   

end Ada_Main;
