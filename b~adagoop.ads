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

   Ada_Main_Program_Name : constant String := "_ada_adagoop" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#1bbf5466#;
   u00002 : constant Version_32 := 16#7d78a8a4#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#9c7dd3ea#;
   u00005 : constant Version_32 := 16#875b8507#;
   u00006 : constant Version_32 := 16#a70c0a76#;
   u00007 : constant Version_32 := 16#9a1fe783#;
   u00008 : constant Version_32 := 16#93682d6b#;
   u00009 : constant Version_32 := 16#b6b021b1#;
   u00010 : constant Version_32 := 16#d4faec2d#;
   u00011 : constant Version_32 := 16#f1c85ff7#;
   u00012 : constant Version_32 := 16#ccb45172#;
   u00013 : constant Version_32 := 16#234b18dc#;
   u00014 : constant Version_32 := 16#5ab32cf6#;
   u00015 : constant Version_32 := 16#b4c45cc4#;
   u00016 : constant Version_32 := 16#0eb61a8b#;
   u00017 : constant Version_32 := 16#09d7ba6d#;
   u00018 : constant Version_32 := 16#423fa2a0#;
   u00019 : constant Version_32 := 16#e2b957db#;
   u00020 : constant Version_32 := 16#726beeed#;
   u00021 : constant Version_32 := 16#0f872827#;
   u00022 : constant Version_32 := 16#60f858a1#;
   u00023 : constant Version_32 := 16#6df64cbd#;
   u00024 : constant Version_32 := 16#1e1b7442#;
   u00025 : constant Version_32 := 16#21f7e23d#;
   u00026 : constant Version_32 := 16#2986fe09#;
   u00027 : constant Version_32 := 16#19146261#;
   u00028 : constant Version_32 := 16#8d1a5e03#;
   u00029 : constant Version_32 := 16#5d0c7544#;
   u00030 : constant Version_32 := 16#e6627743#;
   u00031 : constant Version_32 := 16#e1668940#;
   u00032 : constant Version_32 := 16#fe2dbe25#;
   u00033 : constant Version_32 := 16#a69cad5c#;
   u00034 : constant Version_32 := 16#ff5b1296#;
   u00035 : constant Version_32 := 16#c99c4714#;
   u00036 : constant Version_32 := 16#3bb75ae6#;
   u00037 : constant Version_32 := 16#264aa8fc#;
   u00038 : constant Version_32 := 16#034f20e8#;
   u00039 : constant Version_32 := 16#36281ef1#;
   u00040 : constant Version_32 := 16#6a1621b7#;
   u00041 : constant Version_32 := 16#c3ceafab#;
   u00042 : constant Version_32 := 16#9d79a7fc#;
   u00043 : constant Version_32 := 16#e84eaef1#;
   u00044 : constant Version_32 := 16#ddd0112e#;
   u00045 : constant Version_32 := 16#44d0ba9e#;
   u00046 : constant Version_32 := 16#0a3f4443#;
   u00047 : constant Version_32 := 16#f4daab51#;
   u00048 : constant Version_32 := 16#2686046a#;
   u00049 : constant Version_32 := 16#f215ccdf#;
   u00050 : constant Version_32 := 16#cd099b4a#;
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
   u00063 : constant Version_32 := 16#fe654942#;
   u00064 : constant Version_32 := 16#a4db386c#;
   u00065 : constant Version_32 := 16#2274d34a#;
   u00066 : constant Version_32 := 16#865de041#;
   u00067 : constant Version_32 := 16#9714d691#;
   u00068 : constant Version_32 := 16#d2909f23#;
   u00069 : constant Version_32 := 16#526179f3#;
   u00070 : constant Version_32 := 16#e21c0aa9#;
   u00071 : constant Version_32 := 16#cc1134cf#;
   u00072 : constant Version_32 := 16#0d7da1e0#;
   u00073 : constant Version_32 := 16#b19439a7#;
   u00074 : constant Version_32 := 16#60144c8b#;
   u00075 : constant Version_32 := 16#1bc9f0e1#;
   u00076 : constant Version_32 := 16#b508dc1a#;
   u00077 : constant Version_32 := 16#bc5c2342#;
   u00078 : constant Version_32 := 16#52acdf2c#;
   u00079 : constant Version_32 := 16#04e247f8#;
   u00080 : constant Version_32 := 16#6c2ffb17#;
   u00081 : constant Version_32 := 16#28075a06#;
   u00082 : constant Version_32 := 16#99874944#;
   u00083 : constant Version_32 := 16#29346572#;
   u00084 : constant Version_32 := 16#a91ece26#;
   u00085 : constant Version_32 := 16#6370ea61#;
   u00086 : constant Version_32 := 16#0d2e6c3e#;
   u00087 : constant Version_32 := 16#f13848f3#;
   u00088 : constant Version_32 := 16#b54a36ec#;
   u00089 : constant Version_32 := 16#08b09684#;
   u00090 : constant Version_32 := 16#e21510ce#;
   u00091 : constant Version_32 := 16#70c04324#;
   u00092 : constant Version_32 := 16#e424babc#;
   u00093 : constant Version_32 := 16#d8ad0045#;
   u00094 : constant Version_32 := 16#baeaeb1b#;
   u00095 : constant Version_32 := 16#08a6d407#;
   u00096 : constant Version_32 := 16#719eb734#;
   u00097 : constant Version_32 := 16#b7b7de68#;
   u00098 : constant Version_32 := 16#a61beed3#;
   u00099 : constant Version_32 := 16#40506dbb#;
   u00100 : constant Version_32 := 16#8041f0bd#;
   u00101 : constant Version_32 := 16#923434de#;
   u00102 : constant Version_32 := 16#2977527a#;
   u00103 : constant Version_32 := 16#183dd40d#;
   u00104 : constant Version_32 := 16#4c526528#;
   u00105 : constant Version_32 := 16#46b815f8#;
   u00106 : constant Version_32 := 16#56af4987#;
   u00107 : constant Version_32 := 16#f9da4a9b#;
   u00108 : constant Version_32 := 16#24a455e0#;
   u00109 : constant Version_32 := 16#a9a791ad#;

   pragma Export (C, u00001, "adagoopB");
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
   pragma Export (C, u00069, "generateB");
   pragma Export (C, u00070, "generateS");
   pragma Export (C, u00071, "ada__charactersS");
   pragma Export (C, u00072, "ada__characters__handlingB");
   pragma Export (C, u00073, "ada__characters__handlingS");
   pragma Export (C, u00074, "ada__characters__latin_1S");
   pragma Export (C, u00075, "ada__stringsS");
   pragma Export (C, u00076, "ada__strings__mapsB");
   pragma Export (C, u00077, "ada__strings__mapsS");
   pragma Export (C, u00078, "system__bit_opsB");
   pragma Export (C, u00079, "system__bit_opsS");
   pragma Export (C, u00080, "ada__strings__maps__constantsS");
   pragma Export (C, u00081, "ada__strings__unboundedB");
   pragma Export (C, u00082, "ada__strings__unboundedS");
   pragma Export (C, u00083, "ada__strings__fixedB");
   pragma Export (C, u00084, "ada__strings__fixedS");
   pragma Export (C, u00085, "ada__strings__searchB");
   pragma Export (C, u00086, "ada__strings__searchS");
   pragma Export (C, u00087, "system__compare_array_unsigned_8B");
   pragma Export (C, u00088, "system__compare_array_unsigned_8S");
   pragma Export (C, u00089, "system__address_operationsB");
   pragma Export (C, u00090, "system__address_operationsS");
   pragma Export (C, u00091, "file_helpersB");
   pragma Export (C, u00092, "file_helpersS");
   pragma Export (C, u00093, "hashB");
   pragma Export (C, u00094, "hashS");
   pragma Export (C, u00095, "listB");
   pragma Export (C, u00096, "listS");
   pragma Export (C, u00097, "list__keyB");
   pragma Export (C, u00098, "list__keyS");
   pragma Export (C, u00099, "limitsS");
   pragma Export (C, u00100, "string_parsingB");
   pragma Export (C, u00101, "string_parsingS");
   pragma Export (C, u00102, "system__img_intB");
   pragma Export (C, u00103, "system__img_intS");
   pragma Export (C, u00104, "system__string_ops_concat_4B");
   pragma Export (C, u00105, "system__string_ops_concat_4S");
   pragma Export (C, u00106, "system__string_ops_concat_5B");
   pragma Export (C, u00107, "system__string_ops_concat_5S");
   pragma Export (C, u00108, "system__memoryB");
   pragma Export (C, u00109, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.bit_ops%s
   --  system.compare_array_unsigned_8%s
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
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  ada.command_line%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.string_ops_concat_4%s
   --  system.string_ops_concat_4%b
   --  system.string_ops_concat_5%s
   --  system.string_ops_concat_5%b
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
   --  ada.strings%s
   --  ada.tags%s
   --  ada.streams%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
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
   --  file_helpers%s
   --  file_helpers%b
   --  generate%s
   --  adagoop%b
   --  limits%s
   --  list%s
   --  list%b
   --  list.key%s
   --  list.key%b
   --  hash%s
   --  hash%b
   --  string_parsing%s
   --  string_parsing%b
   --  generate%b
   --  END ELABORATION ORDER

end ada_main;
