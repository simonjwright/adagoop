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

   Ada_Main_Program_Name : constant String := "_ada_scaflex" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#f764baa7#;
   u00002 : constant Version_32 := 16#7d78a8a4#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#e08b215a#;
   u00005 : constant Version_32 := 16#87bb202c#;
   u00006 : constant Version_32 := 16#cc4df23d#;
   u00007 : constant Version_32 := 16#bab99140#;
   u00008 : constant Version_32 := 16#4bf05449#;
   u00009 : constant Version_32 := 16#6c95d1ee#;
   u00010 : constant Version_32 := 16#16563f1c#;
   u00011 : constant Version_32 := 16#9c7dd3ea#;
   u00012 : constant Version_32 := 16#41e7de91#;
   u00013 : constant Version_32 := 16#0be28ec5#;
   u00014 : constant Version_32 := 16#5ab32cf6#;
   u00015 : constant Version_32 := 16#b4c45cc4#;
   u00016 : constant Version_32 := 16#0eb61a8b#;
   u00017 : constant Version_32 := 16#09d7ba6d#;
   u00018 : constant Version_32 := 16#9a1fe783#;
   u00019 : constant Version_32 := 16#ccb45172#;
   u00020 : constant Version_32 := 16#234b18dc#;
   u00021 : constant Version_32 := 16#d4faec2d#;
   u00022 : constant Version_32 := 16#f1c85ff7#;
   u00023 : constant Version_32 := 16#93682d6b#;
   u00024 : constant Version_32 := 16#b6b021b1#;
   u00025 : constant Version_32 := 16#60f858a1#;
   u00026 : constant Version_32 := 16#6df64cbd#;
   u00027 : constant Version_32 := 16#36281ef1#;
   u00028 : constant Version_32 := 16#6a1621b7#;
   u00029 : constant Version_32 := 16#423fa2a0#;
   u00030 : constant Version_32 := 16#e2b957db#;
   u00031 : constant Version_32 := 16#726beeed#;
   u00032 : constant Version_32 := 16#0f872827#;
   u00033 : constant Version_32 := 16#1e1b7442#;
   u00034 : constant Version_32 := 16#21f7e23d#;
   u00035 : constant Version_32 := 16#2986fe09#;
   u00036 : constant Version_32 := 16#19146261#;
   u00037 : constant Version_32 := 16#8d1a5e03#;
   u00038 : constant Version_32 := 16#5d0c7544#;
   u00039 : constant Version_32 := 16#e6627743#;
   u00040 : constant Version_32 := 16#e1668940#;
   u00041 : constant Version_32 := 16#fe2dbe25#;
   u00042 : constant Version_32 := 16#a69cad5c#;
   u00043 : constant Version_32 := 16#ff5b1296#;
   u00044 : constant Version_32 := 16#c99c4714#;
   u00045 : constant Version_32 := 16#3bb75ae6#;
   u00046 : constant Version_32 := 16#264aa8fc#;
   u00047 : constant Version_32 := 16#034f20e8#;
   u00048 : constant Version_32 := 16#adf8f9bd#;
   u00049 : constant Version_32 := 16#e256befd#;
   u00050 : constant Version_32 := 16#a19c52d1#;
   u00051 : constant Version_32 := 16#59507545#;
   u00052 : constant Version_32 := 16#7175e34a#;
   u00053 : constant Version_32 := 16#178e42cf#;
   u00054 : constant Version_32 := 16#7470dcb8#;
   u00055 : constant Version_32 := 16#5ad8a613#;
   u00056 : constant Version_32 := 16#d2c5dc4e#;
   u00057 : constant Version_32 := 16#dae27706#;
   u00058 : constant Version_32 := 16#21f575ab#;
   u00059 : constant Version_32 := 16#4edc3aa6#;
   u00060 : constant Version_32 := 16#fd7a39f7#;
   u00061 : constant Version_32 := 16#593813aa#;
   u00062 : constant Version_32 := 16#c06f0198#;
   u00063 : constant Version_32 := 16#c3ceafab#;
   u00064 : constant Version_32 := 16#9d79a7fc#;
   u00065 : constant Version_32 := 16#e84eaef1#;
   u00066 : constant Version_32 := 16#ddd0112e#;
   u00067 : constant Version_32 := 16#44d0ba9e#;
   u00068 : constant Version_32 := 16#0a3f4443#;
   u00069 : constant Version_32 := 16#f4daab51#;
   u00070 : constant Version_32 := 16#2686046a#;
   u00071 : constant Version_32 := 16#f215ccdf#;
   u00072 : constant Version_32 := 16#cd099b4a#;
   u00073 : constant Version_32 := 16#36479335#;
   u00074 : constant Version_32 := 16#dc743fe3#;
   u00075 : constant Version_32 := 16#f00d9b80#;
   u00076 : constant Version_32 := 16#b5eb9d85#;
   u00077 : constant Version_32 := 16#656c1951#;
   u00078 : constant Version_32 := 16#c69d713c#;
   u00079 : constant Version_32 := 16#65af5a34#;
   u00080 : constant Version_32 := 16#265101de#;
   u00081 : constant Version_32 := 16#373bd87b#;
   u00082 : constant Version_32 := 16#8ed3bc75#;
   u00083 : constant Version_32 := 16#63c7c118#;
   u00084 : constant Version_32 := 16#08f87e97#;
   u00085 : constant Version_32 := 16#fe654942#;
   u00086 : constant Version_32 := 16#a4db386c#;
   u00087 : constant Version_32 := 16#2274d34a#;
   u00088 : constant Version_32 := 16#865de041#;
   u00089 : constant Version_32 := 16#9714d691#;
   u00090 : constant Version_32 := 16#d2909f23#;
   u00091 : constant Version_32 := 16#68971131#;
   u00092 : constant Version_32 := 16#bc030476#;
   u00093 : constant Version_32 := 16#f13848f3#;
   u00094 : constant Version_32 := 16#b54a36ec#;
   u00095 : constant Version_32 := 16#08b09684#;
   u00096 : constant Version_32 := 16#e21510ce#;
   u00097 : constant Version_32 := 16#9be8c6b0#;
   u00098 : constant Version_32 := 16#a8a3ddb8#;
   u00099 : constant Version_32 := 16#9d392701#;
   u00100 : constant Version_32 := 16#e10eeffe#;
   u00101 : constant Version_32 := 16#9b54df2a#;
   u00102 : constant Version_32 := 16#9a7d3fe6#;
   u00103 : constant Version_32 := 16#f78ba4a2#;
   u00104 : constant Version_32 := 16#950adbb2#;
   u00105 : constant Version_32 := 16#aa965f17#;
   u00106 : constant Version_32 := 16#fdda3a87#;
   u00107 : constant Version_32 := 16#2977527a#;
   u00108 : constant Version_32 := 16#183dd40d#;
   u00109 : constant Version_32 := 16#f9d1ee8a#;
   u00110 : constant Version_32 := 16#1bc7160c#;
   u00111 : constant Version_32 := 16#0d8600cc#;
   u00112 : constant Version_32 := 16#e12aefd9#;
   u00113 : constant Version_32 := 16#05d1ef7d#;
   u00114 : constant Version_32 := 16#e1f74d79#;
   u00115 : constant Version_32 := 16#e2d7b065#;
   u00116 : constant Version_32 := 16#ab0bcd3c#;
   u00117 : constant Version_32 := 16#5fc3f0ba#;
   u00118 : constant Version_32 := 16#ea9ef8d7#;
   u00119 : constant Version_32 := 16#e13c66a0#;
   u00120 : constant Version_32 := 16#8514e241#;
   u00121 : constant Version_32 := 16#4b6373ef#;
   u00122 : constant Version_32 := 16#c9c5207b#;
   u00123 : constant Version_32 := 16#b7140ae3#;
   u00124 : constant Version_32 := 16#0da8cc78#;
   u00125 : constant Version_32 := 16#0d25e466#;
   u00126 : constant Version_32 := 16#911bf508#;
   u00127 : constant Version_32 := 16#f792cf9c#;
   u00128 : constant Version_32 := 16#7fe5c92a#;
   u00129 : constant Version_32 := 16#23439eb9#;
   u00130 : constant Version_32 := 16#91d0d5a2#;
   u00131 : constant Version_32 := 16#e543a44f#;
   u00132 : constant Version_32 := 16#988d7940#;
   u00133 : constant Version_32 := 16#875b8507#;
   u00134 : constant Version_32 := 16#a70c0a76#;
   u00135 : constant Version_32 := 16#12a229ef#;
   u00136 : constant Version_32 := 16#7c57eb5b#;
   u00137 : constant Version_32 := 16#84f9abe7#;
   u00138 : constant Version_32 := 16#86f10092#;
   u00139 : constant Version_32 := 16#d6ca3619#;
   u00140 : constant Version_32 := 16#058c8e85#;
   u00141 : constant Version_32 := 16#37fb47d6#;
   u00142 : constant Version_32 := 16#99875ee6#;
   u00143 : constant Version_32 := 16#545c487e#;
   u00144 : constant Version_32 := 16#e014785c#;
   u00145 : constant Version_32 := 16#f90efb6e#;
   u00146 : constant Version_32 := 16#6b4b9336#;
   u00147 : constant Version_32 := 16#a6787f6a#;
   u00148 : constant Version_32 := 16#ccbcf5ca#;
   u00149 : constant Version_32 := 16#d793992d#;
   u00150 : constant Version_32 := 16#6d26d4e0#;
   u00151 : constant Version_32 := 16#61710f8f#;
   u00152 : constant Version_32 := 16#b33f0b5a#;
   u00153 : constant Version_32 := 16#9d32d6f2#;
   u00154 : constant Version_32 := 16#b2f56470#;
   u00155 : constant Version_32 := 16#da19db76#;
   u00156 : constant Version_32 := 16#78f30750#;
   u00157 : constant Version_32 := 16#ac671217#;
   u00158 : constant Version_32 := 16#0e3632fc#;
   u00159 : constant Version_32 := 16#e1659beb#;
   u00160 : constant Version_32 := 16#4c526528#;
   u00161 : constant Version_32 := 16#46b815f8#;
   u00162 : constant Version_32 := 16#c347812e#;
   u00163 : constant Version_32 := 16#c23bce7f#;
   u00164 : constant Version_32 := 16#fe83a69d#;
   u00165 : constant Version_32 := 16#42911050#;
   u00166 : constant Version_32 := 16#059e05e0#;
   u00167 : constant Version_32 := 16#1b826268#;
   u00168 : constant Version_32 := 16#24a455e0#;
   u00169 : constant Version_32 := 16#a9a791ad#;

   pragma Export (C, u00001, "scaflexB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "dfaB");
   pragma Export (C, u00005, "dfaS");
   pragma Export (C, u00006, "cclB");
   pragma Export (C, u00007, "cclS");
   pragma Export (C, u00008, "miscB");
   pragma Export (C, u00009, "miscS");
   pragma Export (C, u00010, "calendarS");
   pragma Export (C, u00011, "adaS");
   pragma Export (C, u00012, "ada__calendarB");
   pragma Export (C, u00013, "ada__calendarS");
   pragma Export (C, u00014, "ada__exceptionsB");
   pragma Export (C, u00015, "ada__exceptionsS");
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00018, "systemS");
   pragma Export (C, u00019, "system__soft_linksB");
   pragma Export (C, u00020, "system__soft_linksS");
   pragma Export (C, u00021, "system__parametersB");
   pragma Export (C, u00022, "system__parametersS");
   pragma Export (C, u00023, "system__secondary_stackB");
   pragma Export (C, u00024, "system__secondary_stackS");
   pragma Export (C, u00025, "system__storage_elementsB");
   pragma Export (C, u00026, "system__storage_elementsS");
   pragma Export (C, u00027, "system__stack_checkingB");
   pragma Export (C, u00028, "system__stack_checkingS");
   pragma Export (C, u00029, "system__exception_tableB");
   pragma Export (C, u00030, "system__exception_tableS");
   pragma Export (C, u00031, "system__htableB");
   pragma Export (C, u00032, "system__htableS");
   pragma Export (C, u00033, "system__tracebackB");
   pragma Export (C, u00034, "system__tracebackS");
   pragma Export (C, u00035, "system__unsigned_typesS");
   pragma Export (C, u00036, "system__wch_conB");
   pragma Export (C, u00037, "system__wch_conS");
   pragma Export (C, u00038, "system__wch_stwB");
   pragma Export (C, u00039, "system__wch_stwS");
   pragma Export (C, u00040, "system__wch_cnvB");
   pragma Export (C, u00041, "system__wch_cnvS");
   pragma Export (C, u00042, "interfacesS");
   pragma Export (C, u00043, "system__wch_jisB");
   pragma Export (C, u00044, "system__wch_jisS");
   pragma Export (C, u00045, "system__pure_exceptionsS");
   pragma Export (C, u00046, "system__traceback_entriesB");
   pragma Export (C, u00047, "system__traceback_entriesS");
   pragma Export (C, u00048, "system__arith_64B");
   pragma Export (C, u00049, "system__arith_64S");
   pragma Export (C, u00050, "system__os_interfaceS");
   pragma Export (C, u00051, "interfaces__cB");
   pragma Export (C, u00052, "interfaces__cS");
   pragma Export (C, u00053, "interfaces__c__stringsB");
   pragma Export (C, u00054, "interfaces__c__stringsS");
   pragma Export (C, u00055, "system__os_primitivesB");
   pragma Export (C, u00056, "system__os_primitivesS");
   pragma Export (C, u00057, "external_file_managerB");
   pragma Export (C, u00058, "external_file_managerS");
   pragma Export (C, u00059, "global_constantsS");
   pragma Export (C, u00060, "misc_defsB");
   pragma Export (C, u00061, "misc_defsS");
   pragma Export (C, u00062, "text_ioS");
   pragma Export (C, u00063, "ada__text_ioB");
   pragma Export (C, u00064, "ada__text_ioS");
   pragma Export (C, u00065, "ada__streamsS");
   pragma Export (C, u00066, "ada__tagsB");
   pragma Export (C, u00067, "ada__tagsS");
   pragma Export (C, u00068, "interfaces__c_streamsB");
   pragma Export (C, u00069, "interfaces__c_streamsS");
   pragma Export (C, u00070, "system__crtlS");
   pragma Export (C, u00071, "system__file_ioB");
   pragma Export (C, u00072, "system__file_ioS");
   pragma Export (C, u00073, "ada__finalizationB");
   pragma Export (C, u00074, "ada__finalizationS");
   pragma Export (C, u00075, "system__finalization_rootB");
   pragma Export (C, u00076, "system__finalization_rootS");
   pragma Export (C, u00077, "system__finalization_implementationB");
   pragma Export (C, u00078, "system__finalization_implementationS");
   pragma Export (C, u00079, "system__restrictionsB");
   pragma Export (C, u00080, "system__restrictionsS");
   pragma Export (C, u00081, "system__string_ops_concat_3B");
   pragma Export (C, u00082, "system__string_ops_concat_3S");
   pragma Export (C, u00083, "system__string_opsB");
   pragma Export (C, u00084, "system__string_opsS");
   pragma Export (C, u00085, "system__stream_attributesB");
   pragma Export (C, u00086, "system__stream_attributesS");
   pragma Export (C, u00087, "ada__io_exceptionsS");
   pragma Export (C, u00088, "system__file_control_blockS");
   pragma Export (C, u00089, "ada__finalization__list_controllerB");
   pragma Export (C, u00090, "ada__finalization__list_controllerS");
   pragma Export (C, u00091, "tstringB");
   pragma Export (C, u00092, "tstringS");
   pragma Export (C, u00093, "system__compare_array_unsigned_8B");
   pragma Export (C, u00094, "system__compare_array_unsigned_8S");
   pragma Export (C, u00095, "system__address_operationsB");
   pragma Export (C, u00096, "system__address_operationsS");
   pragma Export (C, u00097, "vstringsB");
   pragma Export (C, u00098, "vstringsS");
   pragma Export (C, u00099, "int_ioB");
   pragma Export (C, u00100, "int_ioS");
   pragma Export (C, u00101, "ada__text_io__integer_auxB");
   pragma Export (C, u00102, "ada__text_io__integer_auxS");
   pragma Export (C, u00103, "ada__text_io__generic_auxB");
   pragma Export (C, u00104, "ada__text_io__generic_auxS");
   pragma Export (C, u00105, "system__img_biuB");
   pragma Export (C, u00106, "system__img_biuS");
   pragma Export (C, u00107, "system__img_intB");
   pragma Export (C, u00108, "system__img_intS");
   pragma Export (C, u00109, "system__img_llbB");
   pragma Export (C, u00110, "system__img_llbS");
   pragma Export (C, u00111, "system__img_lliB");
   pragma Export (C, u00112, "system__img_lliS");
   pragma Export (C, u00113, "system__img_llwB");
   pragma Export (C, u00114, "system__img_llwS");
   pragma Export (C, u00115, "system__img_wiuB");
   pragma Export (C, u00116, "system__img_wiuS");
   pragma Export (C, u00117, "system__val_intB");
   pragma Export (C, u00118, "system__val_intS");
   pragma Export (C, u00119, "system__val_unsB");
   pragma Export (C, u00120, "system__val_unsS");
   pragma Export (C, u00121, "system__val_utilB");
   pragma Export (C, u00122, "system__val_utilS");
   pragma Export (C, u00123, "system__case_utilB");
   pragma Export (C, u00124, "system__case_utilS");
   pragma Export (C, u00125, "system__val_lliB");
   pragma Export (C, u00126, "system__val_lliS");
   pragma Export (C, u00127, "system__val_lluB");
   pragma Export (C, u00128, "system__val_lluS");
   pragma Export (C, u00129, "main_bodyB");
   pragma Export (C, u00130, "main_bodyS");
   pragma Export (C, u00131, "command_line_interface2B");
   pragma Export (C, u00132, "command_line_interface2S");
   pragma Export (C, u00133, "ada__command_lineB");
   pragma Export (C, u00134, "ada__command_lineS");
   pragma Export (C, u00135, "ecsB");
   pragma Export (C, u00136, "ecsS");
   pragma Export (C, u00137, "genB");
   pragma Export (C, u00138, "genS");
   pragma Export (C, u00139, "parse_tokensS");
   pragma Export (C, u00140, "nfaB");
   pragma Export (C, u00141, "nfaS");
   pragma Export (C, u00142, "parse_gotoS");
   pragma Export (C, u00143, "parse_shift_reduceS");
   pragma Export (C, u00144, "scannerB");
   pragma Export (C, u00145, "scannerS");
   pragma Export (C, u00146, "system__img_enumB");
   pragma Export (C, u00147, "system__img_enumS");
   pragma Export (C, u00148, "ascan_dfaB");
   pragma Export (C, u00149, "ascan_dfaS");
   pragma Export (C, u00150, "ascan_ioB");
   pragma Export (C, u00151, "ascan_ioS");
   pragma Export (C, u00152, "symB");
   pragma Export (C, u00153, "symS");
   pragma Export (C, u00154, "skeleton_managerB");
   pragma Export (C, u00155, "skeleton_managerS");
   pragma Export (C, u00156, "file_stringB");
   pragma Export (C, u00157, "file_stringS");
   pragma Export (C, u00158, "parserB");
   pragma Export (C, u00159, "parserS");
   pragma Export (C, u00160, "system__string_ops_concat_4B");
   pragma Export (C, u00161, "system__string_ops_concat_4S");
   pragma Export (C, u00162, "aflex_scannerB");
   pragma Export (C, u00163, "aflex_scannerS");
   pragma Export (C, u00164, "tblcmpB");
   pragma Export (C, u00165, "tblcmpS");
   pragma Export (C, u00166, "template_managerB");
   pragma Export (C, u00167, "template_managerS");
   pragma Export (C, u00168, "system__memoryB");
   pragma Export (C, u00169, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.command_line%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.compare_array_unsigned_8%s
   --  system.htable%s
   --  system.htable%b
   --  system.img_enum%s
   --  system.img_int%s
   --  system.img_lli%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.pure_exceptions%s
   --  system.arith_64%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_lli%b
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
   --  ada.calendar%s
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  calendar%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.os_primitives%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.os_interface%s
   --  ada.calendar%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_wiu%s
   --  system.img_wiu%b
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
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.integer_aux%s
   --  system.val_int%s
   --  system.val_lli%s
   --  ada.text_io.integer_aux%b
   --  system.val_llu%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
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
   --  ascan_dfa%s
   --  ascan_dfa%b
   --  ascan_io%s
   --  ascan_io%b
   --  external_file_manager%s
   --  global_constants%s
   --  int_io%s
   --  int_io%b
   --  main_body%s
   --  nfa%s
   --  parse_goto%s
   --  parse_shift_reduce%s
   --  template_manager%s
   --  vstrings%s
   --  vstrings%b
   --  file_string%s
   --  file_string%b
   --  tstring%s
   --  tstring%b
   --  command_line_interface2%s
   --  command_line_interface2%b
   --  misc_defs%s
   --  misc_defs%b
   --  ccl%s
   --  dfa%s
   --  ecs%s
   --  gen%s
   --  misc%s
   --  misc%b
   --  ecs%b
   --  ccl%b
   --  template_manager%b
   --  nfa%b
   --  external_file_manager%b
   --  scaflex%b
   --  parse_tokens%s
   --  skeleton_manager%s
   --  skeleton_manager%b
   --  sym%s
   --  sym%b
   --  scanner%s
   --  scanner%b
   --  gen%b
   --  aflex_scanner%s
   --  aflex_scanner%b
   --  parser%s
   --  parser%b
   --  main_body%b
   --  tblcmp%s
   --  tblcmp%b
   --  dfa%b
   --  END ELABORATION ORDER

end ada_main;
