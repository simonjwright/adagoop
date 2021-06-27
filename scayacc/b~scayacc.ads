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

   Ada_Main_Program_Name : constant String := "_ada_scayacc" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#0f4acd5d#;
   u00002 : constant Version_32 := 16#7d78a8a4#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#5ab32cf6#;
   u00005 : constant Version_32 := 16#b4c45cc4#;
   u00006 : constant Version_32 := 16#9c7dd3ea#;
   u00007 : constant Version_32 := 16#0eb61a8b#;
   u00008 : constant Version_32 := 16#09d7ba6d#;
   u00009 : constant Version_32 := 16#9a1fe783#;
   u00010 : constant Version_32 := 16#ccb45172#;
   u00011 : constant Version_32 := 16#234b18dc#;
   u00012 : constant Version_32 := 16#d4faec2d#;
   u00013 : constant Version_32 := 16#f1c85ff7#;
   u00014 : constant Version_32 := 16#93682d6b#;
   u00015 : constant Version_32 := 16#b6b021b1#;
   u00016 : constant Version_32 := 16#60f858a1#;
   u00017 : constant Version_32 := 16#6df64cbd#;
   u00018 : constant Version_32 := 16#36281ef1#;
   u00019 : constant Version_32 := 16#6a1621b7#;
   u00020 : constant Version_32 := 16#423fa2a0#;
   u00021 : constant Version_32 := 16#e2b957db#;
   u00022 : constant Version_32 := 16#726beeed#;
   u00023 : constant Version_32 := 16#0f872827#;
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
   u00039 : constant Version_32 := 16#a986aeae#;
   u00040 : constant Version_32 := 16#12783ddc#;
   u00041 : constant Version_32 := 16#39a9f816#;
   u00042 : constant Version_32 := 16#afe3ce18#;
   u00043 : constant Version_32 := 16#5e5b66fa#;
   u00044 : constant Version_32 := 16#f317ddf3#;
   u00045 : constant Version_32 := 16#0e7bc416#;
   u00046 : constant Version_32 := 16#a58755e7#;
   u00047 : constant Version_32 := 16#ac657a02#;
   u00048 : constant Version_32 := 16#48c48365#;
   u00049 : constant Version_32 := 16#f13848f3#;
   u00050 : constant Version_32 := 16#b54a36ec#;
   u00051 : constant Version_32 := 16#08b09684#;
   u00052 : constant Version_32 := 16#e21510ce#;
   u00053 : constant Version_32 := 16#63c7c118#;
   u00054 : constant Version_32 := 16#08f87e97#;
   u00055 : constant Version_32 := 16#373bd87b#;
   u00056 : constant Version_32 := 16#8ed3bc75#;
   u00057 : constant Version_32 := 16#dd7f9c5a#;
   u00058 : constant Version_32 := 16#2fc22e1d#;
   u00059 : constant Version_32 := 16#875b8507#;
   u00060 : constant Version_32 := 16#a70c0a76#;
   u00061 : constant Version_32 := 16#c3ceafab#;
   u00062 : constant Version_32 := 16#9d79a7fc#;
   u00063 : constant Version_32 := 16#e84eaef1#;
   u00064 : constant Version_32 := 16#ddd0112e#;
   u00065 : constant Version_32 := 16#44d0ba9e#;
   u00066 : constant Version_32 := 16#0a3f4443#;
   u00067 : constant Version_32 := 16#f4daab51#;
   u00068 : constant Version_32 := 16#2686046a#;
   u00069 : constant Version_32 := 16#f215ccdf#;
   u00070 : constant Version_32 := 16#cd099b4a#;
   u00071 : constant Version_32 := 16#36479335#;
   u00072 : constant Version_32 := 16#dc743fe3#;
   u00073 : constant Version_32 := 16#f00d9b80#;
   u00074 : constant Version_32 := 16#b5eb9d85#;
   u00075 : constant Version_32 := 16#656c1951#;
   u00076 : constant Version_32 := 16#c69d713c#;
   u00077 : constant Version_32 := 16#65af5a34#;
   u00078 : constant Version_32 := 16#265101de#;
   u00079 : constant Version_32 := 16#fe654942#;
   u00080 : constant Version_32 := 16#a4db386c#;
   u00081 : constant Version_32 := 16#2274d34a#;
   u00082 : constant Version_32 := 16#865de041#;
   u00083 : constant Version_32 := 16#9714d691#;
   u00084 : constant Version_32 := 16#d2909f23#;
   u00085 : constant Version_32 := 16#7a279c9c#;
   u00086 : constant Version_32 := 16#db44b3fd#;
   u00087 : constant Version_32 := 16#cc1134cf#;
   u00088 : constant Version_32 := 16#0d7da1e0#;
   u00089 : constant Version_32 := 16#b19439a7#;
   u00090 : constant Version_32 := 16#60144c8b#;
   u00091 : constant Version_32 := 16#1bc9f0e1#;
   u00092 : constant Version_32 := 16#b508dc1a#;
   u00093 : constant Version_32 := 16#bc5c2342#;
   u00094 : constant Version_32 := 16#52acdf2c#;
   u00095 : constant Version_32 := 16#04e247f8#;
   u00096 : constant Version_32 := 16#6c2ffb17#;
   u00097 : constant Version_32 := 16#f78ba4a2#;
   u00098 : constant Version_32 := 16#950adbb2#;
   u00099 : constant Version_32 := 16#9c7b7216#;
   u00100 : constant Version_32 := 16#eb5d94b3#;
   u00101 : constant Version_32 := 16#5fc3f0ba#;
   u00102 : constant Version_32 := 16#ea9ef8d7#;
   u00103 : constant Version_32 := 16#e13c66a0#;
   u00104 : constant Version_32 := 16#8514e241#;
   u00105 : constant Version_32 := 16#4b6373ef#;
   u00106 : constant Version_32 := 16#c9c5207b#;
   u00107 : constant Version_32 := 16#b7140ae3#;
   u00108 : constant Version_32 := 16#0da8cc78#;
   u00109 : constant Version_32 := 16#6b4b9336#;
   u00110 : constant Version_32 := 16#a6787f6a#;
   u00111 : constant Version_32 := 16#2977527a#;
   u00112 : constant Version_32 := 16#183dd40d#;
   u00113 : constant Version_32 := 16#87169d8d#;
   u00114 : constant Version_32 := 16#044b9d82#;
   u00115 : constant Version_32 := 16#c06f0198#;
   u00116 : constant Version_32 := 16#adbc4fdb#;
   u00117 : constant Version_32 := 16#fb2cc7cf#;
   u00118 : constant Version_32 := 16#6f51dd88#;
   u00119 : constant Version_32 := 16#183ab992#;
   u00120 : constant Version_32 := 16#7fd95d26#;
   u00121 : constant Version_32 := 16#6f1e4db3#;
   u00122 : constant Version_32 := 16#4c526528#;
   u00123 : constant Version_32 := 16#46b815f8#;
   u00124 : constant Version_32 := 16#ddb991a5#;
   u00125 : constant Version_32 := 16#310f75be#;
   u00126 : constant Version_32 := 16#afae404f#;
   u00127 : constant Version_32 := 16#9e40a5aa#;
   u00128 : constant Version_32 := 16#cbf880ff#;
   u00129 : constant Version_32 := 16#0a0e020b#;
   u00130 : constant Version_32 := 16#8c2c2dce#;
   u00131 : constant Version_32 := 16#7c8b3211#;
   u00132 : constant Version_32 := 16#b841f741#;
   u00133 : constant Version_32 := 16#8fafde9d#;
   u00134 : constant Version_32 := 16#65ba8b29#;
   u00135 : constant Version_32 := 16#87923b0e#;
   u00136 : constant Version_32 := 16#56af4987#;
   u00137 : constant Version_32 := 16#f9da4a9b#;
   u00138 : constant Version_32 := 16#c894cf86#;
   u00139 : constant Version_32 := 16#a4896bfb#;
   u00140 : constant Version_32 := 16#1caa8849#;
   u00141 : constant Version_32 := 16#32156d55#;
   u00142 : constant Version_32 := 16#73e3883d#;
   u00143 : constant Version_32 := 16#b410af2d#;
   u00144 : constant Version_32 := 16#d8c6f2fc#;
   u00145 : constant Version_32 := 16#71055f1a#;
   u00146 : constant Version_32 := 16#535d918a#;
   u00147 : constant Version_32 := 16#347f8322#;
   u00148 : constant Version_32 := 16#d8cd33f7#;
   u00149 : constant Version_32 := 16#ff4e0ec4#;
   u00150 : constant Version_32 := 16#4d08289b#;
   u00151 : constant Version_32 := 16#62aa6604#;
   u00152 : constant Version_32 := 16#1ada0f3a#;
   u00153 : constant Version_32 := 16#2d96d0df#;
   u00154 : constant Version_32 := 16#f66445d0#;
   u00155 : constant Version_32 := 16#fbcfa6da#;
   u00156 : constant Version_32 := 16#ef3db129#;
   u00157 : constant Version_32 := 16#1486523c#;
   u00158 : constant Version_32 := 16#827c9663#;
   u00159 : constant Version_32 := 16#5b6ccf16#;
   u00160 : constant Version_32 := 16#517714a9#;
   u00161 : constant Version_32 := 16#86075b5a#;
   u00162 : constant Version_32 := 16#cf97edb4#;
   u00163 : constant Version_32 := 16#17d30763#;
   u00164 : constant Version_32 := 16#71da4873#;
   u00165 : constant Version_32 := 16#3f9c3c7e#;
   u00166 : constant Version_32 := 16#24a455e0#;
   u00167 : constant Version_32 := 16#a9a791ad#;

   pragma Export (C, u00001, "scayaccB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "ada__exceptionsB");
   pragma Export (C, u00005, "ada__exceptionsS");
   pragma Export (C, u00006, "adaS");
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00009, "systemS");
   pragma Export (C, u00010, "system__soft_linksB");
   pragma Export (C, u00011, "system__soft_linksS");
   pragma Export (C, u00012, "system__parametersB");
   pragma Export (C, u00013, "system__parametersS");
   pragma Export (C, u00014, "system__secondary_stackB");
   pragma Export (C, u00015, "system__secondary_stackS");
   pragma Export (C, u00016, "system__storage_elementsB");
   pragma Export (C, u00017, "system__storage_elementsS");
   pragma Export (C, u00018, "system__stack_checkingB");
   pragma Export (C, u00019, "system__stack_checkingS");
   pragma Export (C, u00020, "system__exception_tableB");
   pragma Export (C, u00021, "system__exception_tableS");
   pragma Export (C, u00022, "system__htableB");
   pragma Export (C, u00023, "system__htableS");
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
   pragma Export (C, u00039, "ayacc_file_namesB");
   pragma Export (C, u00040, "ayacc_file_namesS");
   pragma Export (C, u00041, "str_packB");
   pragma Export (C, u00042, "str_packS");
   pragma Export (C, u00043, "string_pkgB");
   pragma Export (C, u00044, "string_pkgS");
   pragma Export (C, u00045, "listsB");
   pragma Export (C, u00046, "listsS");
   pragma Export (C, u00047, "stack_pkgB");
   pragma Export (C, u00048, "stack_pkgS");
   pragma Export (C, u00049, "system__compare_array_unsigned_8B");
   pragma Export (C, u00050, "system__compare_array_unsigned_8S");
   pragma Export (C, u00051, "system__address_operationsB");
   pragma Export (C, u00052, "system__address_operationsS");
   pragma Export (C, u00053, "system__string_opsB");
   pragma Export (C, u00054, "system__string_opsS");
   pragma Export (C, u00055, "system__string_ops_concat_3B");
   pragma Export (C, u00056, "system__string_ops_concat_3S");
   pragma Export (C, u00057, "command_line_interface2B");
   pragma Export (C, u00058, "command_line_interface2S");
   pragma Export (C, u00059, "ada__command_lineB");
   pragma Export (C, u00060, "ada__command_lineS");
   pragma Export (C, u00061, "ada__text_ioB");
   pragma Export (C, u00062, "ada__text_ioS");
   pragma Export (C, u00063, "ada__streamsS");
   pragma Export (C, u00064, "ada__tagsB");
   pragma Export (C, u00065, "ada__tagsS");
   pragma Export (C, u00066, "interfaces__c_streamsB");
   pragma Export (C, u00067, "interfaces__c_streamsS");
   pragma Export (C, u00068, "system__crtlS");
   pragma Export (C, u00069, "system__file_ioB");
   pragma Export (C, u00070, "system__file_ioS");
   pragma Export (C, u00071, "ada__finalizationB");
   pragma Export (C, u00072, "ada__finalizationS");
   pragma Export (C, u00073, "system__finalization_rootB");
   pragma Export (C, u00074, "system__finalization_rootS");
   pragma Export (C, u00075, "system__finalization_implementationB");
   pragma Export (C, u00076, "system__finalization_implementationS");
   pragma Export (C, u00077, "system__restrictionsB");
   pragma Export (C, u00078, "system__restrictionsS");
   pragma Export (C, u00079, "system__stream_attributesB");
   pragma Export (C, u00080, "system__stream_attributesS");
   pragma Export (C, u00081, "ada__io_exceptionsS");
   pragma Export (C, u00082, "system__file_control_blockS");
   pragma Export (C, u00083, "ada__finalization__list_controllerB");
   pragma Export (C, u00084, "ada__finalization__list_controllerS");
   pragma Export (C, u00085, "ada__text_io__enumeration_auxB");
   pragma Export (C, u00086, "ada__text_io__enumeration_auxS");
   pragma Export (C, u00087, "ada__charactersS");
   pragma Export (C, u00088, "ada__characters__handlingB");
   pragma Export (C, u00089, "ada__characters__handlingS");
   pragma Export (C, u00090, "ada__characters__latin_1S");
   pragma Export (C, u00091, "ada__stringsS");
   pragma Export (C, u00092, "ada__strings__mapsB");
   pragma Export (C, u00093, "ada__strings__mapsS");
   pragma Export (C, u00094, "system__bit_opsB");
   pragma Export (C, u00095, "system__bit_opsS");
   pragma Export (C, u00096, "ada__strings__maps__constantsS");
   pragma Export (C, u00097, "ada__text_io__generic_auxB");
   pragma Export (C, u00098, "ada__text_io__generic_auxS");
   pragma Export (C, u00099, "string_scannerB");
   pragma Export (C, u00100, "string_scannerS");
   pragma Export (C, u00101, "system__val_intB");
   pragma Export (C, u00102, "system__val_intS");
   pragma Export (C, u00103, "system__val_unsB");
   pragma Export (C, u00104, "system__val_unsS");
   pragma Export (C, u00105, "system__val_utilB");
   pragma Export (C, u00106, "system__val_utilS");
   pragma Export (C, u00107, "system__case_utilB");
   pragma Export (C, u00108, "system__case_utilS");
   pragma Export (C, u00109, "system__img_enumB");
   pragma Export (C, u00110, "system__img_enumS");
   pragma Export (C, u00111, "system__img_intB");
   pragma Export (C, u00112, "system__img_intS");
   pragma Export (C, u00113, "system__val_enumB");
   pragma Export (C, u00114, "system__val_enumS");
   pragma Export (C, u00115, "text_ioS");
   pragma Export (C, u00116, "string_listsB");
   pragma Export (C, u00117, "string_listsS");
   pragma Export (C, u00118, "error_report_fileB");
   pragma Export (C, u00119, "error_report_fileS");
   pragma Export (C, u00120, "source_fileB");
   pragma Export (C, u00121, "source_fileS");
   pragma Export (C, u00122, "system__string_ops_concat_4B");
   pragma Export (C, u00123, "system__string_ops_concat_4S");
   pragma Export (C, u00124, "optionsB");
   pragma Export (C, u00125, "optionsS");
   pragma Export (C, u00126, "output_fileB");
   pragma Export (C, u00127, "output_fileS");
   pragma Export (C, u00128, "actions_fileB");
   pragma Export (C, u00129, "actions_fileS");
   pragma Export (C, u00130, "lexical_analyzerB");
   pragma Export (C, u00131, "lexical_analyzerS");
   pragma Export (C, u00132, "tokens_fileB");
   pragma Export (C, u00133, "tokens_fileS");
   pragma Export (C, u00134, "symbol_tableB");
   pragma Export (C, u00135, "symbol_tableS");
   pragma Export (C, u00136, "system__string_ops_concat_5B");
   pragma Export (C, u00137, "system__string_ops_concat_5S");
   pragma Export (C, u00138, "parse_tableB");
   pragma Export (C, u00139, "parse_tableS");
   pragma Export (C, u00140, "goto_fileB");
   pragma Export (C, u00141, "goto_fileS");
   pragma Export (C, u00142, "rule_tableB");
   pragma Export (C, u00143, "rule_tableS");
   pragma Export (C, u00144, "lalr_symbol_infoB");
   pragma Export (C, u00145, "lalr_symbol_infoS");
   pragma Export (C, u00146, "raggedB");
   pragma Export (C, u00147, "raggedS");
   pragma Export (C, u00148, "lr0_machineB");
   pragma Export (C, u00149, "lr0_machineS");
   pragma Export (C, u00150, "symbol_infoB");
   pragma Export (C, u00151, "symbol_infoS");
   pragma Export (C, u00152, "set_packB");
   pragma Export (C, u00153, "set_packS");
   pragma Export (C, u00154, "stack_packB");
   pragma Export (C, u00155, "stack_packS");
   pragma Export (C, u00156, "shift_reduce_fileB");
   pragma Export (C, u00157, "shift_reduce_fileS");
   pragma Export (C, u00158, "verbose_fileB");
   pragma Export (C, u00159, "verbose_fileS");
   pragma Export (C, u00160, "parse_template_fileB");
   pragma Export (C, u00161, "parse_template_fileS");
   pragma Export (C, u00162, "system__img_boolB");
   pragma Export (C, u00163, "system__img_boolS");
   pragma Export (C, u00164, "parserB");
   pragma Export (C, u00165, "parserS");
   pragma Export (C, u00166, "system__memoryB");
   pragma Export (C, u00167, "system__memoryS");

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
   --  system.case_util%s
   --  system.case_util%b
   --  system.compare_array_unsigned_8%s
   --  system.htable%s
   --  system.htable%b
   --  system.img_bool%s
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
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  system.img_enum%b
   --  system.img_bool%b
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
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
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
   --  ada.text_io.enumeration_aux%s
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.enumeration_aux%b
   --  system.val_enum%s
   --  system.val_int%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_int%b
   --  system.val_enum%b
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
   --  actions_file%s
   --  ayacc_file_names%s
   --  actions_file%b
   --  error_report_file%s
   --  goto_file%s
   --  lists%s
   --  lists%b
   --  options%s
   --  options%b
   --  output_file%s
   --  parse_table%s
   --  parse_template_file%s
   --  parser%s
   --  ragged%s
   --  ragged%b
   --  set_pack%s
   --  set_pack%b
   --  shift_reduce_file%s
   --  shift_reduce_file%b
   --  source_file%s
   --  source_file%b
   --  lexical_analyzer%s
   --  output_file%b
   --  stack_pack%s
   --  stack_pack%b
   --  stack_pkg%s
   --  stack_pkg%b
   --  str_pack%s
   --  str_pack%b
   --  error_report_file%b
   --  string_pkg%s
   --  string_pkg%b
   --  parse_template_file%b
   --  ayacc_file_names%b
   --  string_lists%s
   --  string_lists%b
   --  command_line_interface2%s
   --  string_scanner%s
   --  string_scanner%b
   --  command_line_interface2%b
   --  symbol_table%s
   --  symbol_table%b
   --  rule_table%s
   --  rule_table%b
   --  goto_file%b
   --  lr0_machine%s
   --  symbol_info%s
   --  symbol_info%b
   --  lr0_machine%b
   --  lalr_symbol_info%s
   --  lalr_symbol_info%b
   --  tokens_file%s
   --  tokens_file%b
   --  lexical_analyzer%b
   --  parser%b
   --  scayacc%b
   --  verbose_file%s
   --  verbose_file%b
   --  parse_table%b
   --  END ELABORATION ORDER

end ada_main;
