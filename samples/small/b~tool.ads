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
                    "GNAT Version: Pro 5.05w (20060218-34)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_tool" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#508faf3e#;
   u00002 : constant Version_32 := 16#7d78a8a4#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#2293cb66#;
   u00005 : constant Version_32 := 16#4bc00e69#;
   u00006 : constant Version_32 := 16#e84eaef1#;
   u00007 : constant Version_32 := 16#9c7dd3ea#;
   u00008 : constant Version_32 := 16#ddd0112e#;
   u00009 : constant Version_32 := 16#44d0ba9e#;
   u00010 : constant Version_32 := 16#5ab32cf6#;
   u00011 : constant Version_32 := 16#b4c45cc4#;
   u00012 : constant Version_32 := 16#0eb61a8b#;
   u00013 : constant Version_32 := 16#09d7ba6d#;
   u00014 : constant Version_32 := 16#9a1fe783#;
   u00015 : constant Version_32 := 16#ccb45172#;
   u00016 : constant Version_32 := 16#234b18dc#;
   u00017 : constant Version_32 := 16#d4faec2d#;
   u00018 : constant Version_32 := 16#f1c85ff7#;
   u00019 : constant Version_32 := 16#93682d6b#;
   u00020 : constant Version_32 := 16#b6b021b1#;
   u00021 : constant Version_32 := 16#60f858a1#;
   u00022 : constant Version_32 := 16#6df64cbd#;
   u00023 : constant Version_32 := 16#36281ef1#;
   u00024 : constant Version_32 := 16#6a1621b7#;
   u00025 : constant Version_32 := 16#423fa2a0#;
   u00026 : constant Version_32 := 16#e2b957db#;
   u00027 : constant Version_32 := 16#726beeed#;
   u00028 : constant Version_32 := 16#0f872827#;
   u00029 : constant Version_32 := 16#1e1b7442#;
   u00030 : constant Version_32 := 16#21f7e23d#;
   u00031 : constant Version_32 := 16#2986fe09#;
   u00032 : constant Version_32 := 16#19146261#;
   u00033 : constant Version_32 := 16#8d1a5e03#;
   u00034 : constant Version_32 := 16#5d0c7544#;
   u00035 : constant Version_32 := 16#e6627743#;
   u00036 : constant Version_32 := 16#e1668940#;
   u00037 : constant Version_32 := 16#fe2dbe25#;
   u00038 : constant Version_32 := 16#a69cad5c#;
   u00039 : constant Version_32 := 16#ff5b1296#;
   u00040 : constant Version_32 := 16#c99c4714#;
   u00041 : constant Version_32 := 16#3bb75ae6#;
   u00042 : constant Version_32 := 16#264aa8fc#;
   u00043 : constant Version_32 := 16#034f20e8#;
   u00044 : constant Version_32 := 16#fe654942#;
   u00045 : constant Version_32 := 16#a4db386c#;
   u00046 : constant Version_32 := 16#2274d34a#;
   u00047 : constant Version_32 := 16#b015ac74#;
   u00048 : constant Version_32 := 16#da2a829b#;
   u00049 : constant Version_32 := 16#9714d691#;
   u00050 : constant Version_32 := 16#d2909f23#;
   u00051 : constant Version_32 := 16#36479335#;
   u00052 : constant Version_32 := 16#dc743fe3#;
   u00053 : constant Version_32 := 16#f00d9b80#;
   u00054 : constant Version_32 := 16#b5eb9d85#;
   u00055 : constant Version_32 := 16#656c1951#;
   u00056 : constant Version_32 := 16#c69d713c#;
   u00057 : constant Version_32 := 16#65af5a34#;
   u00058 : constant Version_32 := 16#265101de#;
   u00059 : constant Version_32 := 16#373bd87b#;
   u00060 : constant Version_32 := 16#8ed3bc75#;
   u00061 : constant Version_32 := 16#63c7c118#;
   u00062 : constant Version_32 := 16#08f87e97#;
   u00063 : constant Version_32 := 16#4b9dece1#;
   u00064 : constant Version_32 := 16#b19ed2e7#;
   u00065 : constant Version_32 := 16#2977527a#;
   u00066 : constant Version_32 := 16#183dd40d#;
   u00067 : constant Version_32 := 16#d0d21216#;
   u00068 : constant Version_32 := 16#7aab99e4#;
   u00069 : constant Version_32 := 16#f16d7789#;
   u00070 : constant Version_32 := 16#9dc704d8#;
   u00071 : constant Version_32 := 16#c06f0198#;
   u00072 : constant Version_32 := 16#c3ceafab#;
   u00073 : constant Version_32 := 16#9d79a7fc#;
   u00074 : constant Version_32 := 16#0a3f4443#;
   u00075 : constant Version_32 := 16#f4daab51#;
   u00076 : constant Version_32 := 16#2686046a#;
   u00077 : constant Version_32 := 16#f215ccdf#;
   u00078 : constant Version_32 := 16#cd099b4a#;
   u00079 : constant Version_32 := 16#865de041#;
   u00080 : constant Version_32 := 16#5ca6af91#;
   u00081 : constant Version_32 := 16#875b8507#;
   u00082 : constant Version_32 := 16#a70c0a76#;
   u00083 : constant Version_32 := 16#dcfbd255#;
   u00084 : constant Version_32 := 16#30d2f3a0#;
   u00085 : constant Version_32 := 16#ce69acab#;
   u00086 : constant Version_32 := 16#72ad452d#;
   u00087 : constant Version_32 := 16#7bb73d71#;
   u00088 : constant Version_32 := 16#a02a7774#;
   u00089 : constant Version_32 := 16#c18a4a9d#;
   u00090 : constant Version_32 := 16#06796860#;
   u00091 : constant Version_32 := 16#5d773f62#;
   u00092 : constant Version_32 := 16#d977714e#;
   u00093 : constant Version_32 := 16#6b4b9336#;
   u00094 : constant Version_32 := 16#a6787f6a#;
   u00095 : constant Version_32 := 16#4c526528#;
   u00096 : constant Version_32 := 16#46b815f8#;
   u00097 : constant Version_32 := 16#fa0374d0#;
   u00098 : constant Version_32 := 16#50303633#;
   u00099 : constant Version_32 := 16#02093879#;
   u00100 : constant Version_32 := 16#24a455e0#;
   u00101 : constant Version_32 := 16#a9a791ad#;

   pragma Export (C, u00001, "toolB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "a_modelB");
   pragma Export (C, u00005, "a_modelS");
   pragma Export (C, u00006, "ada__streamsS");
   pragma Export (C, u00007, "adaS");
   pragma Export (C, u00008, "ada__tagsB");
   pragma Export (C, u00009, "ada__tagsS");
   pragma Export (C, u00010, "ada__exceptionsB");
   pragma Export (C, u00011, "ada__exceptionsS");
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00014, "systemS");
   pragma Export (C, u00015, "system__soft_linksB");
   pragma Export (C, u00016, "system__soft_linksS");
   pragma Export (C, u00017, "system__parametersB");
   pragma Export (C, u00018, "system__parametersS");
   pragma Export (C, u00019, "system__secondary_stackB");
   pragma Export (C, u00020, "system__secondary_stackS");
   pragma Export (C, u00021, "system__storage_elementsB");
   pragma Export (C, u00022, "system__storage_elementsS");
   pragma Export (C, u00023, "system__stack_checkingB");
   pragma Export (C, u00024, "system__stack_checkingS");
   pragma Export (C, u00025, "system__exception_tableB");
   pragma Export (C, u00026, "system__exception_tableS");
   pragma Export (C, u00027, "system__htableB");
   pragma Export (C, u00028, "system__htableS");
   pragma Export (C, u00029, "system__tracebackB");
   pragma Export (C, u00030, "system__tracebackS");
   pragma Export (C, u00031, "system__unsigned_typesS");
   pragma Export (C, u00032, "system__wch_conB");
   pragma Export (C, u00033, "system__wch_conS");
   pragma Export (C, u00034, "system__wch_stwB");
   pragma Export (C, u00035, "system__wch_stwS");
   pragma Export (C, u00036, "system__wch_cnvB");
   pragma Export (C, u00037, "system__wch_cnvS");
   pragma Export (C, u00038, "interfacesS");
   pragma Export (C, u00039, "system__wch_jisB");
   pragma Export (C, u00040, "system__wch_jisS");
   pragma Export (C, u00041, "system__pure_exceptionsS");
   pragma Export (C, u00042, "system__traceback_entriesB");
   pragma Export (C, u00043, "system__traceback_entriesS");
   pragma Export (C, u00044, "system__stream_attributesB");
   pragma Export (C, u00045, "system__stream_attributesS");
   pragma Export (C, u00046, "ada__io_exceptionsS");
   pragma Export (C, u00047, "test_modelB");
   pragma Export (C, u00048, "test_modelS");
   pragma Export (C, u00049, "ada__finalization__list_controllerB");
   pragma Export (C, u00050, "ada__finalization__list_controllerS");
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
   pragma Export (C, u00063, "testB");
   pragma Export (C, u00064, "testS");
   pragma Export (C, u00065, "system__img_intB");
   pragma Export (C, u00066, "system__img_intS");
   pragma Export (C, u00067, "test_ioB");
   pragma Export (C, u00068, "test_ioS");
   pragma Export (C, u00069, "test_dfaB");
   pragma Export (C, u00070, "test_dfaS");
   pragma Export (C, u00071, "text_ioS");
   pragma Export (C, u00072, "ada__text_ioB");
   pragma Export (C, u00073, "ada__text_ioS");
   pragma Export (C, u00074, "interfaces__c_streamsB");
   pragma Export (C, u00075, "interfaces__c_streamsS");
   pragma Export (C, u00076, "system__crtlS");
   pragma Export (C, u00077, "system__file_ioB");
   pragma Export (C, u00078, "system__file_ioS");
   pragma Export (C, u00079, "system__file_control_blockS");
   pragma Export (C, u00080, "test_visitor_interfaceS");
   pragma Export (C, u00081, "ada__command_lineB");
   pragma Export (C, u00082, "ada__command_lineS");
   pragma Export (C, u00083, "dfs_printB");
   pragma Export (C, u00084, "dfs_printS");
   pragma Export (C, u00085, "test_dfsB");
   pragma Export (C, u00086, "test_dfsS");
   pragma Export (C, u00087, "b_modelB");
   pragma Export (C, u00088, "b_modelS");
   pragma Export (C, u00089, "c_modelB");
   pragma Export (C, u00090, "c_modelS");
   pragma Export (C, u00091, "test_parserB");
   pragma Export (C, u00092, "test_parserS");
   pragma Export (C, u00093, "system__img_enumB");
   pragma Export (C, u00094, "system__img_enumS");
   pragma Export (C, u00095, "system__string_ops_concat_4B");
   pragma Export (C, u00096, "system__string_ops_concat_4S");
   pragma Export (C, u00097, "test_gotoS");
   pragma Export (C, u00098, "test_shift_reduceS");
   pragma Export (C, u00099, "test_tokensS");
   pragma Export (C, u00100, "system__memoryB");
   pragma Export (C, u00101, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.command_line%s
   --  interfaces%s
   --  system%s
   --  system.htable%s
   --  system.htable%b
   --  system.img_enum%s
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
   --  system.img_enum%b
   --  ada.command_line%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.string_ops_concat_4%s
   --  system.string_ops_concat_4%b
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
   --  test_dfa%s
   --  test_dfa%b
   --  test_goto%s
   --  test_io%s
   --  test_io%b
   --  test%s
   --  test%b
   --  test_shift_reduce%s
   --  test_visitor_interface%s
   --  test_model%s
   --  test_model%b
   --  a_model%s
   --  a_model%b
   --  b_model%s
   --  b_model%b
   --  c_model%s
   --  c_model%b
   --  test_dfs%s
   --  test_dfs%b
   --  dfs_print%s
   --  dfs_print%b
   --  test_parser%s
   --  tool%b
   --  test_tokens%s
   --  test_parser%b
   --  END ELABORATION ORDER

end ada_main;
