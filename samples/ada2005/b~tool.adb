pragma Source_File_Name (ada_main, Spec_File_Name => "b~tool.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~tool.adb");

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
      E045 : Boolean; pragma Import (Ada, E045, "ada__tags_E");
      E043 : Boolean; pragma Import (Ada, E043, "ada__streams_E");
      E054 : Boolean; pragma Import (Ada, E054, "system__finalization_root_E");
      E056 : Boolean; pragma Import (Ada, E056, "system__finalization_implementation_E");
      E052 : Boolean; pragma Import (Ada, E052, "ada__finalization_E");
      E068 : Boolean; pragma Import (Ada, E068, "ada__finalization__list_controller_E");
      E066 : Boolean; pragma Import (Ada, E066, "system__file_control_block_E");
      E050 : Boolean; pragma Import (Ada, E050, "system__file_io_E");
      E042 : Boolean; pragma Import (Ada, E042, "ada__text_io_E");
      E076 : Boolean; pragma Import (Ada, E076, "ada05_dfa_E");
      E074 : Boolean; pragma Import (Ada, E074, "ada05_io_E");
      E072 : Boolean; pragma Import (Ada, E072, "ada05_E");
      E080 : Boolean; pragma Import (Ada, E080, "ada05_visitor_interface_E");
      E070 : Boolean; pragma Import (Ada, E070, "ada05_model_E");
      E084 : Boolean; pragma Import (Ada, E084, "abort_stmt_model_E");
      E086 : Boolean; pragma Import (Ada, E086, "accept_hdr_model_E");
      E088 : Boolean; pragma Import (Ada, E088, "accept_stmt_model_E");
      E090 : Boolean; pragma Import (Ada, E090, "access_opt_model_E");
      E092 : Boolean; pragma Import (Ada, E092, "access_type_model_E");
      E082 : Boolean; pragma Import (Ada, E082, "ada05_parser_E");
      E095 : Boolean; pragma Import (Ada, E095, "ada05_tokens_E");
      E097 : Boolean; pragma Import (Ada, E097, "adding_model_E");
      E099 : Boolean; pragma Import (Ada, E099, "address_spec_model_E");
      E101 : Boolean; pragma Import (Ada, E101, "aggregate_model_E");
      E103 : Boolean; pragma Import (Ada, E103, "aliased_opt_model_E");
      E105 : Boolean; pragma Import (Ada, E105, "align_opt_model_E");
      E107 : Boolean; pragma Import (Ada, E107, "allocator_model_E");
      E109 : Boolean; pragma Import (Ada, E109, "alternative_model_E");
      E111 : Boolean; pragma Import (Ada, E111, "alternative_s_model_E");
      E113 : Boolean; pragma Import (Ada, E113, "array_type_model_E");
      E115 : Boolean; pragma Import (Ada, E115, "assign_stmt_model_E");
      E117 : Boolean; pragma Import (Ada, E117, "async_select_model_E");
      E119 : Boolean; pragma Import (Ada, E119, "attrib_def_model_E");
      E121 : Boolean; pragma Import (Ada, E121, "attribute_id_model_E");
      E123 : Boolean; pragma Import (Ada, E123, "attribute_model_E");
      E125 : Boolean; pragma Import (Ada, E125, "basic_loop_model_E");
      E127 : Boolean; pragma Import (Ada, E127, "block_body_model_E");
      E129 : Boolean; pragma Import (Ada, E129, "block_decl_model_E");
      E131 : Boolean; pragma Import (Ada, E131, "block_model_E");
      E133 : Boolean; pragma Import (Ada, E133, "body_nt_model_E");
      E135 : Boolean; pragma Import (Ada, E135, "body_opt_model_E");
      E137 : Boolean; pragma Import (Ada, E137, "body_stub_model_E");
      E139 : Boolean; pragma Import (Ada, E139, "c_id_opt_model_E");
      E141 : Boolean; pragma Import (Ada, E141, "c_name_list_model_E");
      E143 : Boolean; pragma Import (Ada, E143, "case_hdr_model_E");
      E145 : Boolean; pragma Import (Ada, E145, "case_stmt_model_E");
      E147 : Boolean; pragma Import (Ada, E147, "char_lit_model_E");
      E149 : Boolean; pragma Import (Ada, E149, "char_string_model_E");
      E151 : Boolean; pragma Import (Ada, E151, "choice_model_E");
      E153 : Boolean; pragma Import (Ada, E153, "choice_s_model_E");
      E155 : Boolean; pragma Import (Ada, E155, "code_stmt_model_E");
      E157 : Boolean; pragma Import (Ada, E157, "comp_assoc_model_E");
      E159 : Boolean; pragma Import (Ada, E159, "comp_decl_model_E");
      E161 : Boolean; pragma Import (Ada, E161, "comp_decl_s_model_E");
      E163 : Boolean; pragma Import (Ada, E163, "comp_list_model_E");
      E165 : Boolean; pragma Import (Ada, E165, "comp_loc_s_model_E");
      E167 : Boolean; pragma Import (Ada, E167, "comp_unit_model_E");
      E169 : Boolean; pragma Import (Ada, E169, "compilation_model_E");
      E171 : Boolean; pragma Import (Ada, E171, "component_subtype_def_model_E");
      E173 : Boolean; pragma Import (Ada, E173, "compound_name_model_E");
      E175 : Boolean; pragma Import (Ada, E175, "compound_stmt_model_E");
      E177 : Boolean; pragma Import (Ada, E177, "cond_clause_model_E");
      E179 : Boolean; pragma Import (Ada, E179, "cond_clause_s_model_E");
      E181 : Boolean; pragma Import (Ada, E181, "cond_entry_call_model_E");
      E183 : Boolean; pragma Import (Ada, E183, "cond_part_model_E");
      E185 : Boolean; pragma Import (Ada, E185, "condition_model_E");
      E187 : Boolean; pragma Import (Ada, E187, "constr_array_type_model_E");
      E189 : Boolean; pragma Import (Ada, E189, "constraint_model_E");
      E191 : Boolean; pragma Import (Ada, E191, "context_spec_model_E");
      E193 : Boolean; pragma Import (Ada, E193, "decimal_digits_constraint_model_E");
      E195 : Boolean; pragma Import (Ada, E195, "decl_item_model_E");
      E197 : Boolean; pragma Import (Ada, E197, "decl_item_or_body_model_E");
      E199 : Boolean; pragma Import (Ada, E199, "decl_item_or_body_s1_model_E");
      E201 : Boolean; pragma Import (Ada, E201, "decl_item_s1_model_E");
      E203 : Boolean; pragma Import (Ada, E203, "decl_item_s_model_E");
      E205 : Boolean; pragma Import (Ada, E205, "decl_model_E");
      E207 : Boolean; pragma Import (Ada, E207, "decl_part_model_E");
      E209 : Boolean; pragma Import (Ada, E209, "def_id_model_E");
      E211 : Boolean; pragma Import (Ada, E211, "def_id_s_model_E");
      E213 : Boolean; pragma Import (Ada, E213, "delay_or_entry_alt_model_E");
      E215 : Boolean; pragma Import (Ada, E215, "delay_stmt_model_E");
      E217 : Boolean; pragma Import (Ada, E217, "derived_type_model_E");
      E219 : Boolean; pragma Import (Ada, E219, "designator_model_E");
      E221 : Boolean; pragma Import (Ada, E221, "discrete_range_model_E");
      E223 : Boolean; pragma Import (Ada, E223, "discrete_with_range_model_E");
      E225 : Boolean; pragma Import (Ada, E225, "discrim_part_model_E");
      E227 : Boolean; pragma Import (Ada, E227, "discrim_part_opt_model_E");
      E229 : Boolean; pragma Import (Ada, E229, "discrim_spec_model_E");
      E231 : Boolean; pragma Import (Ada, E231, "discrim_spec_s_model_E");
      E233 : Boolean; pragma Import (Ada, E233, "else_opt_model_E");
      E235 : Boolean; pragma Import (Ada, E235, "entry_body_model_E");
      E237 : Boolean; pragma Import (Ada, E237, "entry_body_part_model_E");
      E239 : Boolean; pragma Import (Ada, E239, "entry_call_model_E");
      E241 : Boolean; pragma Import (Ada, E241, "entry_decl_model_E");
      E243 : Boolean; pragma Import (Ada, E243, "entry_decl_s_model_E");
      E245 : Boolean; pragma Import (Ada, E245, "entry_name_model_E");
      E247 : Boolean; pragma Import (Ada, E247, "enum_id_model_E");
      E249 : Boolean; pragma Import (Ada, E249, "enum_id_s_model_E");
      E251 : Boolean; pragma Import (Ada, E251, "enumeration_type_model_E");
      E253 : Boolean; pragma Import (Ada, E253, "except_choice_model_E");
      E255 : Boolean; pragma Import (Ada, E255, "except_choice_s_model_E");
      E257 : Boolean; pragma Import (Ada, E257, "except_handler_part_model_E");
      E259 : Boolean; pragma Import (Ada, E259, "except_handler_part_opt_model_E");
      E261 : Boolean; pragma Import (Ada, E261, "exception_decl_model_E");
      E263 : Boolean; pragma Import (Ada, E263, "exception_handler_model_E");
      E265 : Boolean; pragma Import (Ada, E265, "exit_stmt_model_E");
      E267 : Boolean; pragma Import (Ada, E267, "expression_model_E");
      E269 : Boolean; pragma Import (Ada, E269, "factor_model_E");
      E271 : Boolean; pragma Import (Ada, E271, "fixed_type_model_E");
      E273 : Boolean; pragma Import (Ada, E273, "float_type_model_E");
      E275 : Boolean; pragma Import (Ada, E275, "formal_part_model_E");
      E277 : Boolean; pragma Import (Ada, E277, "formal_part_opt_model_E");
      E279 : Boolean; pragma Import (Ada, E279, "ge_model_E");
      E281 : Boolean; pragma Import (Ada, E281, "generic_decl_model_E");
      E283 : Boolean; pragma Import (Ada, E283, "generic_derived_type_model_E");
      E285 : Boolean; pragma Import (Ada, E285, "generic_discrim_part_opt_model_E");
      E287 : Boolean; pragma Import (Ada, E287, "generic_formal_model_E");
      E289 : Boolean; pragma Import (Ada, E289, "generic_formal_part_model_E");
      E291 : Boolean; pragma Import (Ada, E291, "generic_inst_model_E");
      E293 : Boolean; pragma Import (Ada, E293, "generic_pkg_inst_model_E");
      E295 : Boolean; pragma Import (Ada, E295, "generic_subp_inst_model_E");
      E297 : Boolean; pragma Import (Ada, E297, "generic_type_def_model_E");
      E299 : Boolean; pragma Import (Ada, E299, "goto_stmt_model_E");
      E301 : Boolean; pragma Import (Ada, E301, "gt_gt_model_E");
      E303 : Boolean; pragma Import (Ada, E303, "guarded_select_alt_model_E");
      E305 : Boolean; pragma Import (Ada, E305, "handled_stmt_s_model_E");
      E307 : Boolean; pragma Import (Ada, E307, "id_opt_model_E");
      E309 : Boolean; pragma Import (Ada, E309, "if_stmt_model_E");
      E311 : Boolean; pragma Import (Ada, E311, "index_model_E");
      E313 : Boolean; pragma Import (Ada, E313, "index_s_model_E");
      E315 : Boolean; pragma Import (Ada, E315, "indexed_comp_model_E");
      E317 : Boolean; pragma Import (Ada, E317, "init_opt_model_E");
      E319 : Boolean; pragma Import (Ada, E319, "integer_type_model_E");
      E321 : Boolean; pragma Import (Ada, E321, "interface_type_model_E");
      E323 : Boolean; pragma Import (Ada, E323, "iter_discrete_range_s_model_E");
      E325 : Boolean; pragma Import (Ada, E325, "iter_index_constraint_model_E");
      E327 : Boolean; pragma Import (Ada, E327, "iter_part_model_E");
      E329 : Boolean; pragma Import (Ada, E329, "iteration_model_E");
      E331 : Boolean; pragma Import (Ada, E331, "label_model_E");
      E333 : Boolean; pragma Import (Ada, E333, "label_opt_model_E");
      E335 : Boolean; pragma Import (Ada, E335, "limited_opt_model_E");
      E337 : Boolean; pragma Import (Ada, E337, "literal_model_E");
      E339 : Boolean; pragma Import (Ada, E339, "logical_model_E");
      E341 : Boolean; pragma Import (Ada, E341, "loop_stmt_model_E");
      E343 : Boolean; pragma Import (Ada, E343, "lt_eq_model_E");
      E345 : Boolean; pragma Import (Ada, E345, "lt_lt_model_E");
      E347 : Boolean; pragma Import (Ada, E347, "mark_model_E");
      E349 : Boolean; pragma Import (Ada, E349, "membership_model_E");
      E351 : Boolean; pragma Import (Ada, E351, "mode_model_E");
      E353 : Boolean; pragma Import (Ada, E353, "multiplying_model_E");
      E355 : Boolean; pragma Import (Ada, E355, "name_model_E");
      E357 : Boolean; pragma Import (Ada, E357, "name_opt_model_E");
      E359 : Boolean; pragma Import (Ada, E359, "name_s_model_E");
      E361 : Boolean; pragma Import (Ada, E361, "ne_model_E");
      E363 : Boolean; pragma Import (Ada, E363, "not_null_opt_access_model_E");
      E365 : Boolean; pragma Import (Ada, E365, "not_null_opt_model_E");
      E367 : Boolean; pragma Import (Ada, E367, "null_stmt_model_E");
      E369 : Boolean; pragma Import (Ada, E369, "number_decl_model_E");
      E371 : Boolean; pragma Import (Ada, E371, "numeric_lit_model_E");
      E373 : Boolean; pragma Import (Ada, E373, "object_decl_model_E");
      E375 : Boolean; pragma Import (Ada, E375, "object_qualifier_opt_model_E");
      E377 : Boolean; pragma Import (Ada, E377, "object_subtype_def_model_E");
      E379 : Boolean; pragma Import (Ada, E379, "operator_symbol_model_E");
      E381 : Boolean; pragma Import (Ada, E381, "opt_aliased_model_E");
      E383 : Boolean; pragma Import (Ada, E383, "opt_assign_model_E");
      E385 : Boolean; pragma Import (Ada, E385, "opt_do_block_model_E");
      E387 : Boolean; pragma Import (Ada, E387, "opt_interface_list_model_E");
      E389 : Boolean; pragma Import (Ada, E389, "opt_task_interfaces_model_E");
      E391 : Boolean; pragma Import (Ada, E391, "or_select_model_E");
      E393 : Boolean; pragma Import (Ada, E393, "param_model_E");
      E395 : Boolean; pragma Import (Ada, E395, "param_s_model_E");
      E397 : Boolean; pragma Import (Ada, E397, "parenthesized_primary_model_E");
      E399 : Boolean; pragma Import (Ada, E399, "pkg_body_model_E");
      E401 : Boolean; pragma Import (Ada, E401, "pkg_decl_model_E");
      E403 : Boolean; pragma Import (Ada, E403, "pkg_spec_model_E");
      E405 : Boolean; pragma Import (Ada, E405, "pragma_arg_model_E");
      E407 : Boolean; pragma Import (Ada, E407, "pragma_arg_s_model_E");
      E409 : Boolean; pragma Import (Ada, E409, "pragma_s_model_E");
      E411 : Boolean; pragma Import (Ada, E411, "pragma_sym_model_E");
      E413 : Boolean; pragma Import (Ada, E413, "primary_model_E");
      E415 : Boolean; pragma Import (Ada, E415, "private_opt_model_E");
      E417 : Boolean; pragma Import (Ada, E417, "private_part_model_E");
      E419 : Boolean; pragma Import (Ada, E419, "private_type_model_E");
      E421 : Boolean; pragma Import (Ada, E421, "procedure_call_model_E");
      E423 : Boolean; pragma Import (Ada, E423, "prot_body_model_E");
      E425 : Boolean; pragma Import (Ada, E425, "prot_decl_model_E");
      E427 : Boolean; pragma Import (Ada, E427, "prot_def_model_E");
      E429 : Boolean; pragma Import (Ada, E429, "prot_elem_decl_model_E");
      E431 : Boolean; pragma Import (Ada, E431, "prot_elem_decl_s_model_E");
      E433 : Boolean; pragma Import (Ada, E433, "prot_op_body_model_E");
      E435 : Boolean; pragma Import (Ada, E435, "prot_op_body_s_model_E");
      E437 : Boolean; pragma Import (Ada, E437, "prot_op_decl_model_E");
      E439 : Boolean; pragma Import (Ada, E439, "prot_op_decl_s_model_E");
      E441 : Boolean; pragma Import (Ada, E441, "prot_opt_model_E");
      E443 : Boolean; pragma Import (Ada, E443, "prot_private_opt_model_E");
      E445 : Boolean; pragma Import (Ada, E445, "prot_spec_model_E");
      E447 : Boolean; pragma Import (Ada, E447, "qualified_model_E");
      E449 : Boolean; pragma Import (Ada, E449, "raise_stmt_model_E");
      E451 : Boolean; pragma Import (Ada, E451, "range_constr_opt_model_E");
      E453 : Boolean; pragma Import (Ada, E453, "range_constraint_model_E");
      E455 : Boolean; pragma Import (Ada, E455, "range_spec_model_E");
      E457 : Boolean; pragma Import (Ada, E457, "range_spec_opt_model_E");
      E459 : Boolean; pragma Import (Ada, E459, "range_sym_model_E");
      E461 : Boolean; pragma Import (Ada, E461, "real_type_model_E");
      E463 : Boolean; pragma Import (Ada, E463, "record_def_model_E");
      E465 : Boolean; pragma Import (Ada, E465, "record_type_model_E");
      E467 : Boolean; pragma Import (Ada, E467, "record_type_spec_model_E");
      E469 : Boolean; pragma Import (Ada, E469, "relation_model_E");
      E471 : Boolean; pragma Import (Ada, E471, "relational_model_E");
      E473 : Boolean; pragma Import (Ada, E473, "rename_decl_model_E");
      E475 : Boolean; pragma Import (Ada, E475, "rename_unit_model_E");
      E477 : Boolean; pragma Import (Ada, E477, "renaming_model_E");
      E479 : Boolean; pragma Import (Ada, E479, "rep_spec_model_E");
      E481 : Boolean; pragma Import (Ada, E481, "rep_spec_s_model_E");
      E483 : Boolean; pragma Import (Ada, E483, "requeue_stmt_model_E");
      E485 : Boolean; pragma Import (Ada, E485, "return_stmt_model_E");
      E487 : Boolean; pragma Import (Ada, E487, "return_subtype_model_E");
      E489 : Boolean; pragma Import (Ada, E489, "reverse_opt_model_E");
      E491 : Boolean; pragma Import (Ada, E491, "select_alt_model_E");
      E493 : Boolean; pragma Import (Ada, E493, "select_stmt_model_E");
      E495 : Boolean; pragma Import (Ada, E495, "select_wait_model_E");
      E497 : Boolean; pragma Import (Ada, E497, "selected_comp_model_E");
      E499 : Boolean; pragma Import (Ada, E499, "simple_expression_model_E");
      E501 : Boolean; pragma Import (Ada, E501, "simple_name_model_E");
      E503 : Boolean; pragma Import (Ada, E503, "simple_stmt_model_E");
      E505 : Boolean; pragma Import (Ada, E505, "statement_model_E");
      E507 : Boolean; pragma Import (Ada, E507, "statement_s_model_E");
      E509 : Boolean; pragma Import (Ada, E509, "stmts_opt_model_E");
      E511 : Boolean; pragma Import (Ada, E511, "subp_default_model_E");
      E513 : Boolean; pragma Import (Ada, E513, "subprog_body_model_E");
      E515 : Boolean; pragma Import (Ada, E515, "subprog_decl_model_E");
      E517 : Boolean; pragma Import (Ada, E517, "subprog_spec_is_push_model_E");
      E519 : Boolean; pragma Import (Ada, E519, "subprog_spec_model_E");
      E521 : Boolean; pragma Import (Ada, E521, "subtype_decl_model_E");
      E523 : Boolean; pragma Import (Ada, E523, "subtype_ind_model_E");
      E525 : Boolean; pragma Import (Ada, E525, "subunit_body_model_E");
      E527 : Boolean; pragma Import (Ada, E527, "subunit_model_E");
      E533 : Boolean; pragma Import (Ada, E533, "tagged_opt_model_E");
      E535 : Boolean; pragma Import (Ada, E535, "task_body_model_E");
      E537 : Boolean; pragma Import (Ada, E537, "task_decl_model_E");
      E539 : Boolean; pragma Import (Ada, E539, "task_def_model_E");
      E541 : Boolean; pragma Import (Ada, E541, "task_private_opt_model_E");
      E543 : Boolean; pragma Import (Ada, E543, "task_spec_model_E");
      E545 : Boolean; pragma Import (Ada, E545, "term_model_E");
      E547 : Boolean; pragma Import (Ada, E547, "timed_entry_call_model_E");
      E549 : Boolean; pragma Import (Ada, E549, "type_completion_model_E");
      E551 : Boolean; pragma Import (Ada, E551, "type_decl_model_E");
      E553 : Boolean; pragma Import (Ada, E553, "type_def_model_E");
      E555 : Boolean; pragma Import (Ada, E555, "unary_model_E");
      E557 : Boolean; pragma Import (Ada, E557, "unconstr_array_type_model_E");
      E559 : Boolean; pragma Import (Ada, E559, "unit_model_E");
      E561 : Boolean; pragma Import (Ada, E561, "unlabeled_model_E");
      E563 : Boolean; pragma Import (Ada, E563, "use_clause_model_E");
      E565 : Boolean; pragma Import (Ada, E565, "use_clause_opt_model_E");
      E567 : Boolean; pragma Import (Ada, E567, "used_char_model_E");
      E569 : Boolean; pragma Import (Ada, E569, "value_model_E");
      E571 : Boolean; pragma Import (Ada, E571, "value_s_2_model_E");
      E573 : Boolean; pragma Import (Ada, E573, "value_s_model_E");
      E575 : Boolean; pragma Import (Ada, E575, "variant_model_E");
      E577 : Boolean; pragma Import (Ada, E577, "variant_part_model_E");
      E579 : Boolean; pragma Import (Ada, E579, "variant_part_opt_model_E");
      E581 : Boolean; pragma Import (Ada, E581, "variant_s_model_E");
      E583 : Boolean; pragma Import (Ada, E583, "when_opt_model_E");
      E585 : Boolean; pragma Import (Ada, E585, "with_clause_model_E");

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
      E013 := True;
      System.Secondary_Stack'Elab_Body;
      E009 := True;
      System.Exception_Table'Elab_Body;
      E019 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E065 := True;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E043 := True;
      System.Finalization_Root'Elab_Spec;
      E054 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E056 := True;
      Ada.Finalization'Elab_Spec;
      E052 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E068 := True;
      System.File_Control_Block'Elab_Spec;
      E066 := True;
      System.File_Io'Elab_Body;
      E050 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E042 := True;
      Ada.Tags'Elab_Body;
      E045 := True;
      E076 := True;
      ada05_io'elab_spec;
      E074 := True;
      ada05'elab_spec;
      E072 := True;
      Ada05_Visitor_Interface'Elab_Spec;
      E080 := True;
      Ada05_Model'Elab_Spec;
      E070 := True;
      abort_stmt_model'elab_spec;
      E084 := True;
      accept_hdr_model'elab_spec;
      E086 := True;
      accept_stmt_model'elab_spec;
      E088 := True;
      access_opt_model'elab_spec;
      E090 := True;
      access_type_model'elab_spec;
      E092 := True;
      ada05_tokens'elab_spec;
      E095 := True;
      adding_model'elab_spec;
      E097 := True;
      address_spec_model'elab_spec;
      E099 := True;
      aggregate_model'elab_spec;
      E101 := True;
      aliased_opt_model'elab_spec;
      E103 := True;
      align_opt_model'elab_spec;
      E105 := True;
      allocator_model'elab_spec;
      E107 := True;
      alternative_model'elab_spec;
      E109 := True;
      alternative_s_model'elab_spec;
      E111 := True;
      array_type_model'elab_spec;
      E113 := True;
      assign_stmt_model'elab_spec;
      E115 := True;
      async_select_model'elab_spec;
      E117 := True;
      attrib_def_model'elab_spec;
      E119 := True;
      attribute_id_model'elab_spec;
      E121 := True;
      attribute_model'elab_spec;
      E123 := True;
      basic_loop_model'elab_spec;
      E125 := True;
      block_body_model'elab_spec;
      E127 := True;
      block_decl_model'elab_spec;
      E129 := True;
      block_model'elab_spec;
      E131 := True;
      body_nt_model'elab_spec;
      E133 := True;
      body_opt_model'elab_spec;
      E135 := True;
      body_stub_model'elab_spec;
      E137 := True;
      c_id_opt_model'elab_spec;
      E139 := True;
      c_name_list_model'elab_spec;
      E141 := True;
      case_hdr_model'elab_spec;
      E143 := True;
      case_stmt_model'elab_spec;
      E145 := True;
      Char_Lit_Model'Elab_Spec;
      E147 := True;
      Char_String_Model'Elab_Spec;
      E149 := True;
      choice_model'elab_spec;
      E151 := True;
      choice_s_model'elab_spec;
      E153 := True;
      code_stmt_model'elab_spec;
      E155 := True;
      comp_assoc_model'elab_spec;
      E157 := True;
      comp_decl_model'elab_spec;
      E159 := True;
      comp_decl_s_model'elab_spec;
      E161 := True;
      comp_list_model'elab_spec;
      E163 := True;
      comp_loc_s_model'elab_spec;
      E165 := True;
      comp_unit_model'elab_spec;
      E167 := True;
      compilation_model'elab_spec;
      E169 := True;
      component_subtype_def_model'elab_spec;
      E171 := True;
      compound_name_model'elab_spec;
      E173 := True;
      compound_stmt_model'elab_spec;
      E175 := True;
      cond_clause_model'elab_spec;
      E177 := True;
      cond_clause_s_model'elab_spec;
      E179 := True;
      cond_entry_call_model'elab_spec;
      E181 := True;
      cond_part_model'elab_spec;
      E183 := True;
      condition_model'elab_spec;
      E185 := True;
      constr_array_type_model'elab_spec;
      E187 := True;
      constraint_model'elab_spec;
      E189 := True;
      context_spec_model'elab_spec;
      E191 := True;
      decimal_digits_constraint_model'elab_spec;
      E193 := True;
      decl_item_model'elab_spec;
      E195 := True;
      decl_item_or_body_model'elab_spec;
      E197 := True;
      decl_item_or_body_s1_model'elab_spec;
      E199 := True;
      decl_item_s1_model'elab_spec;
      E201 := True;
      decl_item_s_model'elab_spec;
      E203 := True;
      decl_model'elab_spec;
      E205 := True;
      decl_part_model'elab_spec;
      E207 := True;
      def_id_model'elab_spec;
      E209 := True;
      def_id_s_model'elab_spec;
      E211 := True;
      delay_or_entry_alt_model'elab_spec;
      E213 := True;
      delay_stmt_model'elab_spec;
      E215 := True;
      derived_type_model'elab_spec;
      E217 := True;
      designator_model'elab_spec;
      E219 := True;
      discrete_range_model'elab_spec;
      E221 := True;
      discrete_with_range_model'elab_spec;
      E223 := True;
      discrim_part_model'elab_spec;
      E225 := True;
      discrim_part_opt_model'elab_spec;
      E227 := True;
      discrim_spec_model'elab_spec;
      E229 := True;
      discrim_spec_s_model'elab_spec;
      E231 := True;
      else_opt_model'elab_spec;
      E233 := True;
      entry_body_model'elab_spec;
      E235 := True;
      entry_body_part_model'elab_spec;
      E237 := True;
      entry_call_model'elab_spec;
      E239 := True;
      entry_decl_model'elab_spec;
      E241 := True;
      entry_decl_s_model'elab_spec;
      E243 := True;
      entry_name_model'elab_spec;
      E245 := True;
      enum_id_model'elab_spec;
      E247 := True;
      enum_id_s_model'elab_spec;
      E249 := True;
      enumeration_type_model'elab_spec;
      E251 := True;
      except_choice_model'elab_spec;
      E253 := True;
      except_choice_s_model'elab_spec;
      E255 := True;
      except_handler_part_model'elab_spec;
      E257 := True;
      except_handler_part_opt_model'elab_spec;
      E259 := True;
      exception_decl_model'elab_spec;
      E261 := True;
      exception_handler_model'elab_spec;
      E263 := True;
      exit_stmt_model'elab_spec;
      E265 := True;
      expression_model'elab_spec;
      E267 := True;
      factor_model'elab_spec;
      E269 := True;
      fixed_type_model'elab_spec;
      E271 := True;
      float_type_model'elab_spec;
      E273 := True;
      formal_part_model'elab_spec;
      E275 := True;
      formal_part_opt_model'elab_spec;
      E277 := True;
      Ge_Model'Elab_Spec;
      E279 := True;
      generic_decl_model'elab_spec;
      E281 := True;
      generic_derived_type_model'elab_spec;
      E283 := True;
      generic_discrim_part_opt_model'elab_spec;
      E285 := True;
      generic_formal_model'elab_spec;
      E287 := True;
      generic_formal_part_model'elab_spec;
      E289 := True;
      generic_inst_model'elab_spec;
      E291 := True;
      generic_pkg_inst_model'elab_spec;
      E293 := True;
      generic_subp_inst_model'elab_spec;
      E295 := True;
      generic_type_def_model'elab_spec;
      E297 := True;
      goto_stmt_model'elab_spec;
      E299 := True;
      Gt_Gt_Model'Elab_Spec;
      E301 := True;
      guarded_select_alt_model'elab_spec;
      E303 := True;
      handled_stmt_s_model'elab_spec;
      E305 := True;
      id_opt_model'elab_spec;
      E307 := True;
      if_stmt_model'elab_spec;
      E309 := True;
      index_model'elab_spec;
      E311 := True;
      index_s_model'elab_spec;
      E313 := True;
      indexed_comp_model'elab_spec;
      E315 := True;
      init_opt_model'elab_spec;
      E317 := True;
      integer_type_model'elab_spec;
      E319 := True;
      interface_type_model'elab_spec;
      E321 := True;
      iter_discrete_range_s_model'elab_spec;
      E323 := True;
      iter_index_constraint_model'elab_spec;
      E325 := True;
      iter_part_model'elab_spec;
      E327 := True;
      iteration_model'elab_spec;
      E329 := True;
      label_model'elab_spec;
      E331 := True;
      label_opt_model'elab_spec;
      E333 := True;
      limited_opt_model'elab_spec;
      E335 := True;
      literal_model'elab_spec;
      E337 := True;
      logical_model'elab_spec;
      E339 := True;
      loop_stmt_model'elab_spec;
      E341 := True;
      Lt_Eq_Model'Elab_Spec;
      E343 := True;
      Lt_Lt_Model'Elab_Spec;
      E345 := True;
      mark_model'elab_spec;
      E347 := True;
      membership_model'elab_spec;
      E349 := True;
      mode_model'elab_spec;
      E351 := True;
      multiplying_model'elab_spec;
      E353 := True;
      name_model'elab_spec;
      E355 := True;
      name_opt_model'elab_spec;
      E357 := True;
      name_s_model'elab_spec;
      E359 := True;
      Ne_Model'Elab_Spec;
      E361 := True;
      not_null_opt_access_model'elab_spec;
      E363 := True;
      not_null_opt_model'elab_spec;
      E365 := True;
      null_stmt_model'elab_spec;
      E367 := True;
      number_decl_model'elab_spec;
      E369 := True;
      Numeric_Lit_Model'Elab_Spec;
      E371 := True;
      object_decl_model'elab_spec;
      E373 := True;
      object_qualifier_opt_model'elab_spec;
      E375 := True;
      object_subtype_def_model'elab_spec;
      E377 := True;
      operator_symbol_model'elab_spec;
      E379 := True;
      opt_aliased_model'elab_spec;
      E381 := True;
      opt_assign_model'elab_spec;
      E383 := True;
      opt_do_block_model'elab_spec;
      E385 := True;
      opt_interface_list_model'elab_spec;
      E387 := True;
      opt_task_interfaces_model'elab_spec;
      E389 := True;
      or_select_model'elab_spec;
      E391 := True;
      param_model'elab_spec;
      E393 := True;
      param_s_model'elab_spec;
      E395 := True;
      parenthesized_primary_model'elab_spec;
      E397 := True;
      pkg_body_model'elab_spec;
      E399 := True;
      pkg_decl_model'elab_spec;
      E401 := True;
      pkg_spec_model'elab_spec;
      E403 := True;
      pragma_arg_model'elab_spec;
      E405 := True;
      pragma_arg_s_model'elab_spec;
      E407 := True;
      pragma_s_model'elab_spec;
      E409 := True;
      pragma_sym_model'elab_spec;
      E411 := True;
      primary_model'elab_spec;
      E413 := True;
      private_opt_model'elab_spec;
      E415 := True;
      private_part_model'elab_spec;
      E417 := True;
      private_type_model'elab_spec;
      E419 := True;
      procedure_call_model'elab_spec;
      E421 := True;
      prot_body_model'elab_spec;
      E423 := True;
      prot_decl_model'elab_spec;
      E425 := True;
      prot_def_model'elab_spec;
      E427 := True;
      prot_elem_decl_model'elab_spec;
      E429 := True;
      prot_elem_decl_s_model'elab_spec;
      E431 := True;
      prot_op_body_model'elab_spec;
      E433 := True;
      prot_op_body_s_model'elab_spec;
      E435 := True;
      prot_op_decl_model'elab_spec;
      E437 := True;
      prot_op_decl_s_model'elab_spec;
      E439 := True;
      prot_opt_model'elab_spec;
      E441 := True;
      prot_private_opt_model'elab_spec;
      E443 := True;
      prot_spec_model'elab_spec;
      E445 := True;
      qualified_model'elab_spec;
      E447 := True;
      raise_stmt_model'elab_spec;
      E449 := True;
      range_constr_opt_model'elab_spec;
      E451 := True;
      range_constraint_model'elab_spec;
      E453 := True;
      range_spec_model'elab_spec;
      E455 := True;
      range_spec_opt_model'elab_spec;
      E457 := True;
      range_sym_model'elab_spec;
      E459 := True;
      real_type_model'elab_spec;
      E461 := True;
      record_def_model'elab_spec;
      E463 := True;
      record_type_model'elab_spec;
      E465 := True;
      record_type_spec_model'elab_spec;
      E467 := True;
      relation_model'elab_spec;
      E469 := True;
      relational_model'elab_spec;
      E471 := True;
      rename_decl_model'elab_spec;
      E473 := True;
      rename_unit_model'elab_spec;
      E475 := True;
      renaming_model'elab_spec;
      E477 := True;
      rep_spec_model'elab_spec;
      E479 := True;
      rep_spec_s_model'elab_spec;
      E481 := True;
      requeue_stmt_model'elab_spec;
      E483 := True;
      return_stmt_model'elab_spec;
      E485 := True;
      return_subtype_model'elab_spec;
      E487 := True;
      reverse_opt_model'elab_spec;
      E489 := True;
      select_alt_model'elab_spec;
      E491 := True;
      select_stmt_model'elab_spec;
      E493 := True;
      select_wait_model'elab_spec;
      E495 := True;
      selected_comp_model'elab_spec;
      E497 := True;
      simple_expression_model'elab_spec;
      E499 := True;
      simple_name_model'elab_spec;
      E501 := True;
      simple_stmt_model'elab_spec;
      E503 := True;
      statement_model'elab_spec;
      E505 := True;
      statement_s_model'elab_spec;
      E507 := True;
      stmts_opt_model'elab_spec;
      E509 := True;
      subp_default_model'elab_spec;
      E511 := True;
      subprog_body_model'elab_spec;
      E513 := True;
      subprog_decl_model'elab_spec;
      E515 := True;
      subprog_spec_is_push_model'elab_spec;
      E517 := True;
      subprog_spec_model'elab_spec;
      E519 := True;
      subtype_decl_model'elab_spec;
      E521 := True;
      subtype_ind_model'elab_spec;
      E523 := True;
      subunit_body_model'elab_spec;
      E525 := True;
      subunit_model'elab_spec;
      E527 := True;
      tagged_opt_model'elab_spec;
      E533 := True;
      task_body_model'elab_spec;
      E535 := True;
      task_decl_model'elab_spec;
      E537 := True;
      task_def_model'elab_spec;
      E539 := True;
      task_private_opt_model'elab_spec;
      E541 := True;
      task_spec_model'elab_spec;
      E543 := True;
      term_model'elab_spec;
      E545 := True;
      timed_entry_call_model'elab_spec;
      E547 := True;
      type_completion_model'elab_spec;
      E549 := True;
      type_decl_model'elab_spec;
      E551 := True;
      type_def_model'elab_spec;
      E553 := True;
      unary_model'elab_spec;
      E555 := True;
      unconstr_array_type_model'elab_spec;
      E557 := True;
      unit_model'elab_spec;
      E559 := True;
      unlabeled_model'elab_spec;
      E561 := True;
      use_clause_model'elab_spec;
      E563 := True;
      use_clause_opt_model'elab_spec;
      E565 := True;
      used_char_model'elab_spec;
      E567 := True;
      value_model'elab_spec;
      E569 := True;
      value_s_2_model'elab_spec;
      E571 := True;
      value_s_model'elab_spec;
      E573 := True;
      variant_model'elab_spec;
      E575 := True;
      variant_part_model'elab_spec;
      E577 := True;
      variant_part_opt_model'elab_spec;
      E579 := True;
      variant_s_model'elab_spec;
      E581 := True;
      when_opt_model'elab_spec;
      E583 := True;
      with_clause_model'elab_spec;
      E585 := True;
      ada05_parser'elab_body;
      E082 := True;
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
   --   ./ada05_dfa.o
   --   ./ada05_goto.o
   --   ./ada05_io.o
   --   ./ada05.o
   --   ./ada05_shift_reduce.o
   --   ./ada05_visitor_interface.o
   --   ./ada05_model.o
   --   ./abort_stmt_model.o
   --   ./accept_hdr_model.o
   --   ./accept_stmt_model.o
   --   ./access_opt_model.o
   --   ./access_type_model.o
   --   ./tool.o
   --   ./ada05_tokens.o
   --   ./adding_model.o
   --   ./address_spec_model.o
   --   ./aggregate_model.o
   --   ./aliased_opt_model.o
   --   ./align_opt_model.o
   --   ./allocator_model.o
   --   ./alternative_model.o
   --   ./alternative_s_model.o
   --   ./array_type_model.o
   --   ./assign_stmt_model.o
   --   ./async_select_model.o
   --   ./attrib_def_model.o
   --   ./attribute_id_model.o
   --   ./attribute_model.o
   --   ./basic_loop_model.o
   --   ./block_body_model.o
   --   ./block_decl_model.o
   --   ./block_model.o
   --   ./body_nt_model.o
   --   ./body_opt_model.o
   --   ./body_stub_model.o
   --   ./c_id_opt_model.o
   --   ./c_name_list_model.o
   --   ./case_hdr_model.o
   --   ./case_stmt_model.o
   --   ./char_lit_model.o
   --   ./char_string_model.o
   --   ./choice_model.o
   --   ./choice_s_model.o
   --   ./code_stmt_model.o
   --   ./comp_assoc_model.o
   --   ./comp_decl_model.o
   --   ./comp_decl_s_model.o
   --   ./comp_list_model.o
   --   ./comp_loc_s_model.o
   --   ./comp_unit_model.o
   --   ./compilation_model.o
   --   ./component_subtype_def_model.o
   --   ./compound_name_model.o
   --   ./compound_stmt_model.o
   --   ./cond_clause_model.o
   --   ./cond_clause_s_model.o
   --   ./cond_entry_call_model.o
   --   ./cond_part_model.o
   --   ./condition_model.o
   --   ./constr_array_type_model.o
   --   ./constraint_model.o
   --   ./context_spec_model.o
   --   ./decimal_digits_constraint_model.o
   --   ./decl_item_model.o
   --   ./decl_item_or_body_model.o
   --   ./decl_item_or_body_s1_model.o
   --   ./decl_item_s1_model.o
   --   ./decl_item_s_model.o
   --   ./decl_model.o
   --   ./decl_part_model.o
   --   ./def_id_model.o
   --   ./def_id_s_model.o
   --   ./delay_or_entry_alt_model.o
   --   ./delay_stmt_model.o
   --   ./derived_type_model.o
   --   ./designator_model.o
   --   ./discrete_range_model.o
   --   ./discrete_with_range_model.o
   --   ./discrim_part_model.o
   --   ./discrim_part_opt_model.o
   --   ./discrim_spec_model.o
   --   ./discrim_spec_s_model.o
   --   ./else_opt_model.o
   --   ./entry_body_model.o
   --   ./entry_body_part_model.o
   --   ./entry_call_model.o
   --   ./entry_decl_model.o
   --   ./entry_decl_s_model.o
   --   ./entry_name_model.o
   --   ./enum_id_model.o
   --   ./enum_id_s_model.o
   --   ./enumeration_type_model.o
   --   ./except_choice_model.o
   --   ./except_choice_s_model.o
   --   ./except_handler_part_model.o
   --   ./except_handler_part_opt_model.o
   --   ./exception_decl_model.o
   --   ./exception_handler_model.o
   --   ./exit_stmt_model.o
   --   ./expression_model.o
   --   ./factor_model.o
   --   ./fixed_type_model.o
   --   ./float_type_model.o
   --   ./formal_part_model.o
   --   ./formal_part_opt_model.o
   --   ./ge_model.o
   --   ./generic_decl_model.o
   --   ./generic_derived_type_model.o
   --   ./generic_discrim_part_opt_model.o
   --   ./generic_formal_model.o
   --   ./generic_formal_part_model.o
   --   ./generic_inst_model.o
   --   ./generic_pkg_inst_model.o
   --   ./generic_subp_inst_model.o
   --   ./generic_type_def_model.o
   --   ./goto_stmt_model.o
   --   ./gt_gt_model.o
   --   ./guarded_select_alt_model.o
   --   ./handled_stmt_s_model.o
   --   ./id_opt_model.o
   --   ./if_stmt_model.o
   --   ./index_model.o
   --   ./index_s_model.o
   --   ./indexed_comp_model.o
   --   ./init_opt_model.o
   --   ./integer_type_model.o
   --   ./interface_type_model.o
   --   ./iter_discrete_range_s_model.o
   --   ./iter_index_constraint_model.o
   --   ./iter_part_model.o
   --   ./iteration_model.o
   --   ./label_model.o
   --   ./label_opt_model.o
   --   ./limited_opt_model.o
   --   ./literal_model.o
   --   ./logical_model.o
   --   ./loop_stmt_model.o
   --   ./lt_eq_model.o
   --   ./lt_lt_model.o
   --   ./mark_model.o
   --   ./membership_model.o
   --   ./mode_model.o
   --   ./multiplying_model.o
   --   ./name_model.o
   --   ./name_opt_model.o
   --   ./name_s_model.o
   --   ./ne_model.o
   --   ./not_null_opt_access_model.o
   --   ./not_null_opt_model.o
   --   ./null_stmt_model.o
   --   ./number_decl_model.o
   --   ./numeric_lit_model.o
   --   ./object_decl_model.o
   --   ./object_qualifier_opt_model.o
   --   ./object_subtype_def_model.o
   --   ./operator_symbol_model.o
   --   ./opt_aliased_model.o
   --   ./opt_assign_model.o
   --   ./opt_do_block_model.o
   --   ./opt_interface_list_model.o
   --   ./opt_task_interfaces_model.o
   --   ./or_select_model.o
   --   ./param_model.o
   --   ./param_s_model.o
   --   ./parenthesized_primary_model.o
   --   ./pkg_body_model.o
   --   ./pkg_decl_model.o
   --   ./pkg_spec_model.o
   --   ./pragma_arg_model.o
   --   ./pragma_arg_s_model.o
   --   ./pragma_s_model.o
   --   ./pragma_sym_model.o
   --   ./primary_model.o
   --   ./private_opt_model.o
   --   ./private_part_model.o
   --   ./private_type_model.o
   --   ./procedure_call_model.o
   --   ./prot_body_model.o
   --   ./prot_decl_model.o
   --   ./prot_def_model.o
   --   ./prot_elem_decl_model.o
   --   ./prot_elem_decl_s_model.o
   --   ./prot_op_body_model.o
   --   ./prot_op_body_s_model.o
   --   ./prot_op_decl_model.o
   --   ./prot_op_decl_s_model.o
   --   ./prot_opt_model.o
   --   ./prot_private_opt_model.o
   --   ./prot_spec_model.o
   --   ./qualified_model.o
   --   ./raise_stmt_model.o
   --   ./range_constr_opt_model.o
   --   ./range_constraint_model.o
   --   ./range_spec_model.o
   --   ./range_spec_opt_model.o
   --   ./range_sym_model.o
   --   ./real_type_model.o
   --   ./record_def_model.o
   --   ./record_type_model.o
   --   ./record_type_spec_model.o
   --   ./relation_model.o
   --   ./relational_model.o
   --   ./rename_decl_model.o
   --   ./rename_unit_model.o
   --   ./renaming_model.o
   --   ./rep_spec_model.o
   --   ./rep_spec_s_model.o
   --   ./requeue_stmt_model.o
   --   ./return_stmt_model.o
   --   ./return_subtype_model.o
   --   ./reverse_opt_model.o
   --   ./select_alt_model.o
   --   ./select_stmt_model.o
   --   ./select_wait_model.o
   --   ./selected_comp_model.o
   --   ./simple_expression_model.o
   --   ./simple_name_model.o
   --   ./simple_stmt_model.o
   --   ./statement_model.o
   --   ./statement_s_model.o
   --   ./stmts_opt_model.o
   --   ./subp_default_model.o
   --   ./subprog_body_model.o
   --   ./subprog_decl_model.o
   --   ./subprog_spec_is_push_model.o
   --   ./subprog_spec_model.o
   --   ./subtype_decl_model.o
   --   ./subtype_ind_model.o
   --   ./subunit_body_model.o
   --   ./subunit_model.o
   --   ./tagged_opt_model.o
   --   ./task_body_model.o
   --   ./task_decl_model.o
   --   ./task_def_model.o
   --   ./task_private_opt_model.o
   --   ./task_spec_model.o
   --   ./term_model.o
   --   ./timed_entry_call_model.o
   --   ./type_completion_model.o
   --   ./type_decl_model.o
   --   ./type_def_model.o
   --   ./unary_model.o
   --   ./unconstr_array_type_model.o
   --   ./unit_model.o
   --   ./unlabeled_model.o
   --   ./use_clause_model.o
   --   ./use_clause_opt_model.o
   --   ./used_char_model.o
   --   ./value_model.o
   --   ./value_s_2_model.o
   --   ./value_s_model.o
   --   ./variant_model.o
   --   ./variant_part_model.o
   --   ./variant_part_opt_model.o
   --   ./variant_s_model.o
   --   ./when_opt_model.o
   --   ./with_clause_model.o
   --   ./ada05_parser.o
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
