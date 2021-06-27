pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Pro 6.0.0w (20061112-41)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_lexdrive" & Ascii.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#761b69d8#;
   u00002 : constant Version_32 := 16#7d78a8a4#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#9c7dd3ea#;
   u00005 : constant Version_32 := 16#3ec5debb#;
   u00006 : constant Version_32 := 16#a70c0a76#;
   u00007 : constant Version_32 := 16#2381bc3f#;
   u00008 : constant Version_32 := 16#93682d6b#;
   u00009 : constant Version_32 := 16#0f2e7a0d#;
   u00010 : constant Version_32 := 16#d4faec2d#;
   u00011 : constant Version_32 := 16#4856044b#;
   u00012 : constant Version_32 := 16#8bbbee80#;
   u00013 : constant Version_32 := 16#a764148d#;
   u00014 : constant Version_32 := 16#90d77720#;
   u00015 : constant Version_32 := 16#30eb5095#;
   u00016 : constant Version_32 := 16#0eb61a8b#;
   u00017 : constant Version_32 := 16#3466ed80#;
   u00018 : constant Version_32 := 16#423fa2a0#;
   u00019 : constant Version_32 := 16#5b270c67#;
   u00020 : constant Version_32 := 16#726beeed#;
   u00021 : constant Version_32 := 16#b619739b#;
   u00022 : constant Version_32 := 16#60f858a1#;
   u00023 : constant Version_32 := 16#d4681701#;
   u00024 : constant Version_32 := 16#1e1b7442#;
   u00025 : constant Version_32 := 16#9869b981#;
   u00026 : constant Version_32 := 16#9018a5b5#;
   u00027 : constant Version_32 := 16#fa27edb6#;
   u00028 : constant Version_32 := 16#8696b2a9#;
   u00029 : constant Version_32 := 16#ef1ec252#;
   u00030 : constant Version_32 := 16#edee9be9#;
   u00031 : constant Version_32 := 16#53743e56#;
   u00032 : constant Version_32 := 16#f5a1528f#;
   u00033 : constant Version_32 := 16#a69cad5c#;
   u00034 : constant Version_32 := 16#ff5b1296#;
   u00035 : constant Version_32 := 16#70021ca8#;
   u00036 : constant Version_32 := 16#8229015a#;
   u00037 : constant Version_32 := 16#264aa8fc#;
   u00038 : constant Version_32 := 16#bad17b54#;
   u00039 : constant Version_32 := 16#36281ef1#;
   u00040 : constant Version_32 := 16#d3887a0b#;
   u00041 : constant Version_32 := 16#4b490ec4#;
   u00042 : constant Version_32 := 16#b4eb585a#;
   u00043 : constant Version_32 := 16#a8d17654#;
   u00044 : constant Version_32 := 16#51029516#;
   u00045 : constant Version_32 := 16#efad349e#;
   u00046 : constant Version_32 := 16#6ed77d7a#;
   u00047 : constant Version_32 := 16#a8e5b34e#;
   u00048 : constant Version_32 := 16#a7cf7ef0#;
   u00049 : constant Version_32 := 16#63b808df#;
   u00050 : constant Version_32 := 16#e723db09#;
   u00051 : constant Version_32 := 16#ca75b29d#;
   u00052 : constant Version_32 := 16#20461e4b#;
   u00053 : constant Version_32 := 16#f00d9b80#;
   u00054 : constant Version_32 := 16#4cea1e9c#;
   u00055 : constant Version_32 := 16#b27e9558#;
   u00056 : constant Version_32 := 16#7e807370#;
   u00057 : constant Version_32 := 16#293ff6f7#;
   u00058 : constant Version_32 := 16#3b20c3a4#;
   u00059 : constant Version_32 := 16#373bd87b#;
   u00060 : constant Version_32 := 16#374de7c9#;
   u00061 : constant Version_32 := 16#63c7c118#;
   u00062 : constant Version_32 := 16#b166252b#;
   u00063 : constant Version_32 := 16#6934fe94#;
   u00064 : constant Version_32 := 16#338a8fba#;
   u00065 : constant Version_32 := 16#2274d34a#;
   u00066 : constant Version_32 := 16#0371021c#;
   u00067 : constant Version_32 := 16#923573c8#;
   u00068 : constant Version_32 := 16#2ea2be8b#;
   u00069 : constant Version_32 := 16#662e84cb#;
   u00070 : constant Version_32 := 16#bea0b02f#;
   u00071 : constant Version_32 := 16#d609c586#;
   u00072 : constant Version_32 := 16#9243aa19#;
   u00073 : constant Version_32 := 16#e42c6a61#;
   u00074 : constant Version_32 := 16#2ce945f7#;
   u00075 : constant Version_32 := 16#e7a05fe1#;
   u00076 : constant Version_32 := 16#2977527a#;
   u00077 : constant Version_32 := 16#a1a38fb1#;
   u00078 : constant Version_32 := 16#1915020d#;
   u00079 : constant Version_32 := 16#1039ca11#;

   pragma Export (C, u00001, "lexdriveB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__command_lineB");
   pragma Export (C, u00006, "ada__command_lineS");
   pragma Export (C, u00007, "systemS");
   pragma Export (C, u00008, "system__secondary_stackB");
   pragma Export (C, u00009, "system__secondary_stackS");
   pragma Export (C, u00010, "system__parametersB");
   pragma Export (C, u00011, "system__parametersS");
   pragma Export (C, u00012, "system__soft_linksB");
   pragma Export (C, u00013, "system__soft_linksS");
   pragma Export (C, u00014, "ada__exceptionsB");
   pragma Export (C, u00015, "ada__exceptionsS");
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00018, "system__exception_tableB");
   pragma Export (C, u00019, "system__exception_tableS");
   pragma Export (C, u00020, "system__htableB");
   pragma Export (C, u00021, "system__htableS");
   pragma Export (C, u00022, "system__storage_elementsB");
   pragma Export (C, u00023, "system__storage_elementsS");
   pragma Export (C, u00024, "system__tracebackB");
   pragma Export (C, u00025, "system__tracebackS");
   pragma Export (C, u00026, "system__unsigned_typesS");
   pragma Export (C, u00027, "system__wch_conB");
   pragma Export (C, u00028, "system__wch_conS");
   pragma Export (C, u00029, "system__wch_stwB");
   pragma Export (C, u00030, "system__wch_stwS");
   pragma Export (C, u00031, "system__wch_cnvB");
   pragma Export (C, u00032, "system__wch_cnvS");
   pragma Export (C, u00033, "interfacesS");
   pragma Export (C, u00034, "system__wch_jisB");
   pragma Export (C, u00035, "system__wch_jisS");
   pragma Export (C, u00036, "system__pure_exceptionsS");
   pragma Export (C, u00037, "system__traceback_entriesB");
   pragma Export (C, u00038, "system__traceback_entriesS");
   pragma Export (C, u00039, "system__stack_checkingB");
   pragma Export (C, u00040, "system__stack_checkingS");
   pragma Export (C, u00041, "ada__text_ioB");
   pragma Export (C, u00042, "ada__text_ioS");
   pragma Export (C, u00043, "ada__streamsS");
   pragma Export (C, u00044, "ada__tagsB");
   pragma Export (C, u00045, "ada__tagsS");
   pragma Export (C, u00046, "interfaces__c_streamsB");
   pragma Export (C, u00047, "interfaces__c_streamsS");
   pragma Export (C, u00048, "system__crtlS");
   pragma Export (C, u00049, "system__file_ioB");
   pragma Export (C, u00050, "system__file_ioS");
   pragma Export (C, u00051, "ada__finalizationB");
   pragma Export (C, u00052, "ada__finalizationS");
   pragma Export (C, u00053, "system__finalization_rootB");
   pragma Export (C, u00054, "system__finalization_rootS");
   pragma Export (C, u00055, "system__finalization_implementationB");
   pragma Export (C, u00056, "system__finalization_implementationS");
   pragma Export (C, u00057, "system__restrictionsB");
   pragma Export (C, u00058, "system__restrictionsS");
   pragma Export (C, u00059, "system__string_ops_concat_3B");
   pragma Export (C, u00060, "system__string_ops_concat_3S");
   pragma Export (C, u00061, "system__string_opsB");
   pragma Export (C, u00062, "system__string_opsS");
   pragma Export (C, u00063, "system__stream_attributesB");
   pragma Export (C, u00064, "system__stream_attributesS");
   pragma Export (C, u00065, "ada__io_exceptionsS");
   pragma Export (C, u00066, "system__file_control_blockS");
   pragma Export (C, u00067, "ada__finalization__list_controllerB");
   pragma Export (C, u00068, "ada__finalization__list_controllerS");
   pragma Export (C, u00069, "smallB");
   pragma Export (C, u00070, "smallS");
   pragma Export (C, u00071, "small_ioB");
   pragma Export (C, u00072, "small_ioS");
   pragma Export (C, u00073, "small_dfaB");
   pragma Export (C, u00074, "small_dfaS");
   pragma Export (C, u00075, "text_ioS");
   pragma Export (C, u00076, "system__img_intB");
   pragma Export (C, u00077, "system__img_intS");
   pragma Export (C, u00078, "system__memoryB");
   pragma Export (C, u00079, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.command_line%s
   --  interfaces%s
   --  system%s
   --  system.htable%s
   --  system.htable%b
   --  system.img_int%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.pure_exceptions%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  ada.command_line%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.last_chance_handler%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.tags%b
   --  ada.exceptions%b
   --  text_io%s
   --  small_dfa%s
   --  small_dfa%b
   --  small_io%s
   --  small_io%b
   --  small%s
   --  small%b
   --  lexdrive%b
   --  END ELABORATION ORDER

end ada_main;
