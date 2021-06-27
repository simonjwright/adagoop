-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with code_stmt_Model;
limited with address_spec_Model;
limited with comp_loc_s_Model;
limited with align_opt_Model;
limited with record_type_spec_Model;
limited with attrib_def_Model;
limited with rep_spec_Model;
limited with generic_inst_Model;
limited with generic_pkg_inst_Model;
limited with generic_subp_inst_Model;
limited with generic_derived_type_Model;
limited with generic_type_def_Model;
limited with subp_default_Model;
limited with generic_discrim_part_opt_Model;
limited with generic_formal_Model;
limited with generic_formal_part_Model;
limited with generic_decl_Model;
limited with requeue_stmt_Model;
limited with raise_stmt_Model;
limited with except_choice_Model;
limited with except_choice_s_Model;
limited with exception_handler_Model;
limited with except_handler_part_Model;
limited with exception_decl_Model;
limited with body_stub_Model;
limited with subunit_body_Model;
limited with subunit_Model;
limited with unit_Model;
limited with use_clause_opt_Model;
limited with with_clause_Model;
limited with context_spec_Model;
limited with private_opt_Model;
limited with comp_unit_Model;
limited with compilation_Model;
limited with abort_stmt_Model;
limited with stmts_opt_Model;
limited with cond_entry_call_Model;
limited with timed_entry_call_Model;
limited with async_select_Model;
limited with delay_or_entry_alt_Model;
limited with select_alt_Model;
limited with or_select_Model;
limited with guarded_select_alt_Model;
limited with select_wait_Model;
limited with select_stmt_Model;
limited with delay_stmt_Model;
limited with entry_name_Model;
limited with accept_hdr_Model;
limited with accept_stmt_Model;
limited with entry_call_Model;
limited with rep_spec_s_Model;
limited with entry_body_part_Model;
limited with entry_body_Model;
limited with entry_decl_Model;
limited with entry_decl_s_Model;
limited with prot_op_body_Model;
limited with prot_op_body_s_Model;
limited with prot_body_Model;
limited with prot_elem_decl_Model;
limited with prot_elem_decl_s_Model;
limited with prot_op_decl_Model;
limited with prot_op_decl_s_Model;
limited with prot_private_opt_Model;
limited with prot_def_Model;
limited with prot_spec_Model;
limited with prot_decl_Model;
limited with task_body_Model;
limited with task_private_opt_Model;
limited with task_def_Model;
limited with task_spec_Model;
limited with task_decl_Model;
limited with renaming_Model;
limited with rename_unit_Model;
limited with rename_decl_Model;
limited with name_s_Model;
limited with use_clause_Model;
limited with limited_opt_Model;
limited with private_type_Model;
limited with body_opt_Model;
limited with pkg_body_Model;
limited with c_id_opt_Model;
limited with private_part_Model;
limited with pkg_spec_Model;
limited with pkg_decl_Model;
limited with procedure_call_Model;
limited with subprog_body_Model;
limited with subprog_spec_is_push_Model;
limited with mode_Model;
limited with param_Model;
limited with param_s_Model;
limited with formal_part_Model;
limited with formal_part_opt_Model;
limited with designator_Model;
limited with subprog_spec_Model;
limited with subprog_decl_Model;
limited with goto_stmt_Model;
limited with return_stmt_Model;
limited with when_opt_Model;
limited with name_opt_Model;
limited with exit_stmt_Model;
limited with except_handler_part_opt_Model;
limited with handled_stmt_s_Model;
limited with block_body_Model;
limited with block_decl_Model;
limited with block_Model;
limited with id_opt_Model;
limited with basic_loop_Model;
limited with reverse_opt_Model;
limited with iter_part_Model;
limited with iteration_Model;
limited with label_opt_Model;
limited with loop_stmt_Model;
limited with alternative_Model;
limited with alternative_s_Model;
limited with case_hdr_Model;
limited with case_stmt_Model;
limited with else_opt_Model;
limited with condition_Model;
limited with cond_part_Model;
limited with cond_clause_Model;
limited with cond_clause_s_Model;
limited with if_stmt_Model;
limited with assign_stmt_Model;
limited with null_stmt_Model;
limited with label_Model;
limited with compound_stmt_Model;
limited with simple_stmt_Model;
limited with unlabeled_Model;
limited with statement_Model;
limited with statement_s_Model;
limited with allocator_Model;
limited with qualified_Model;
limited with parenthesized_primary_Model;
limited with primary_Model;
limited with factor_Model;
limited with multiplying_Model;
limited with term_Model;
limited with adding_Model;
limited with unary_Model;
limited with simple_expression_Model;
limited with membership_Model;
limited with relational_Model;
limited with relation_Model;
limited with short_circuit_Model;
limited with logical_Model;
limited with expression_Model;
limited with comp_assoc_Model;
limited with value_s_2_Model;
limited with aggregate_Model;
limited with literal_Model;
limited with attribute_id_Model;
limited with attribute_Model;
limited with selected_comp_Model;
limited with value_Model;
limited with value_s_Model;
limited with indexed_comp_Model;
limited with operator_symbol_Model;
limited with used_char_Model;
limited with c_name_list_Model;
limited with compound_name_Model;
limited with simple_name_Model;
limited with mark_Model;
limited with name_Model;
limited with body_nt_Model;
limited with decl_item_or_body_Model;
limited with decl_item_or_body_s1_Model;
limited with decl_item_Model;
limited with decl_item_s1_Model;
limited with decl_item_s_Model;
limited with decl_part_Model;
limited with prot_opt_Model;
limited with access_type_Model;
limited with discrete_with_range_Model;
limited with choice_Model;
limited with choice_s_Model;
limited with variant_Model;
limited with variant_s_Model;
limited with variant_part_Model;
limited with access_opt_Model;
limited with discrim_spec_Model;
limited with discrim_spec_s_Model;
limited with discrim_part_Model;
limited with comp_decl_Model;
limited with variant_part_opt_Model;
limited with comp_decl_s_Model;
limited with comp_list_Model;
limited with tagged_opt_Model;
limited with record_def_Model;
limited with record_type_Model;
limited with range_constr_opt_Model;
limited with discrete_range_Model;
limited with iter_discrete_range_s_Model;
limited with iter_index_constraint_Model;
limited with index_Model;
limited with index_s_Model;
limited with aliased_opt_Model;
limited with component_subtype_def_Model;
limited with constr_array_type_Model;
limited with unconstr_array_type_Model;
limited with array_type_Model;
limited with fixed_type_Model;
limited with float_type_Model;
limited with real_type_Model;
limited with range_spec_opt_Model;
limited with range_spec_Model;
limited with integer_type_Model;
limited with enum_id_Model;
limited with enum_id_s_Model;
limited with enumeration_type_Model;
limited with range_sym_Model;
limited with range_constraint_Model;
limited with derived_type_Model;
limited with decimal_digits_constraint_Model;
limited with constraint_Model;
limited with subtype_ind_Model;
limited with subtype_decl_Model;
limited with type_def_Model;
limited with type_completion_Model;
limited with discrim_part_opt_Model;
limited with type_decl_Model;
limited with number_decl_Model;
limited with init_opt_Model;
limited with object_subtype_def_Model;
limited with object_qualifier_opt_Model;
limited with def_id_Model;
limited with def_id_s_Model;
limited with object_decl_Model;
limited with decl_Model;
limited with pragma_s_Model;
limited with pragma_arg_Model;
limited with pragma_arg_s_Model;
limited with pragma_sym_Model;
limited with CHAR_STRING_Model;
limited with NE_Model;
limited with LT_EQ_Model;
limited with GE_Model;
limited with LT_LT_Model;
limited with GT_GT_Model;
limited with CHAR_LIT_Model;
limited with NUMERIC_LIT_Model;
limited with ada95_Model;
package ada95_Visitor_Interface is
   type Visit_ada95_Interface is interface;

   procedure Visit_Parseable_Token(
      I : access Visit_ada95_Interface;
      T : access ada95_Model.Parseable_Token'Class) is null;

   procedure Before_NUMERIC_LIT_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is null;
   procedure Visit_NUMERIC_LIT_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is abstract;
   procedure After_NUMERIC_LIT_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is null;

   procedure Before_NUMERIC_LIT_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is null;
   procedure Visit_NUMERIC_LIT_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is abstract;
   procedure After_NUMERIC_LIT_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is null;

   procedure Before_CHAR_LIT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is null;
   procedure Visit_CHAR_LIT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is abstract;
   procedure After_CHAR_LIT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is null;

   procedure Before_GT_GT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GT_GT_Model.GT_GT_nonterminal'Class) is null;
   procedure Visit_GT_GT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GT_GT_Model.GT_GT_nonterminal'Class) is abstract;
   procedure After_GT_GT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GT_GT_Model.GT_GT_nonterminal'Class) is null;

   procedure Before_LT_LT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_LT_Model.LT_LT_nonterminal'Class) is null;
   procedure Visit_LT_LT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_LT_Model.LT_LT_nonterminal'Class) is abstract;
   procedure After_LT_LT_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_LT_Model.LT_LT_nonterminal'Class) is null;

   procedure Before_GE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GE_Model.GE_nonterminal'Class) is null;
   procedure Visit_GE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GE_Model.GE_nonterminal'Class) is abstract;
   procedure After_GE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access GE_Model.GE_nonterminal'Class) is null;

   procedure Before_LT_EQ_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is null;
   procedure Visit_LT_EQ_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is abstract;
   procedure After_LT_EQ_nonterminal(
      I : access Visit_ada95_Interface;
      N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is null;

   procedure Before_NE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access NE_Model.NE_nonterminal'Class) is null;
   procedure Visit_NE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access NE_Model.NE_nonterminal'Class) is abstract;
   procedure After_NE_nonterminal(
      I : access Visit_ada95_Interface;
      N : access NE_Model.NE_nonterminal'Class) is null;

   procedure Before_CHAR_STRING_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is null;
   procedure Visit_CHAR_STRING_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is abstract;
   procedure After_CHAR_STRING_nonterminal(
      I : access Visit_ada95_Interface;
      N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is null;

   procedure Before_pragma_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is null;
   procedure Visit_pragma_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is abstract;
   procedure After_pragma_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is null;

   procedure Before_pragma_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is null;
   procedure Visit_pragma_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is abstract;
   procedure After_pragma_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is null;

   procedure Before_pragma_arg_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is null;
   procedure Visit_pragma_arg_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is abstract;
   procedure After_pragma_arg_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is null;

   procedure Before_pragma_arg_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is null;
   procedure Visit_pragma_arg_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is abstract;
   procedure After_pragma_arg_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is null;

   procedure Before_pragma_arg_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is null;
   procedure Visit_pragma_arg_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is abstract;
   procedure After_pragma_arg_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is null;

   procedure Before_pragma_arg_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is null;
   procedure Visit_pragma_arg_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is abstract;
   procedure After_pragma_arg_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is null;

   procedure Before_pragma_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal1'Class) is null;
   procedure Visit_pragma_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal1'Class) is abstract;
   procedure After_pragma_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal1'Class) is null;

   procedure Before_pragma_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal2'Class) is null;
   procedure Visit_pragma_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal2'Class) is abstract;
   procedure After_pragma_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pragma_s_Model.pragma_s_nonterminal2'Class) is null;

   procedure Before_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal1'Class) is null;
   procedure Visit_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal1'Class) is abstract;
   procedure After_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal1'Class) is null;

   procedure Before_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal2'Class) is null;
   procedure Visit_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal2'Class) is abstract;
   procedure After_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal2'Class) is null;

   procedure Before_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal3'Class) is null;
   procedure Visit_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal3'Class) is abstract;
   procedure After_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal3'Class) is null;

   procedure Before_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal4'Class) is null;
   procedure Visit_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal4'Class) is abstract;
   procedure After_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal4'Class) is null;

   procedure Before_decl_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal5'Class) is null;
   procedure Visit_decl_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal5'Class) is abstract;
   procedure After_decl_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal5'Class) is null;

   procedure Before_decl_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal6'Class) is null;
   procedure Visit_decl_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal6'Class) is abstract;
   procedure After_decl_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal6'Class) is null;

   procedure Before_decl_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal7'Class) is null;
   procedure Visit_decl_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal7'Class) is abstract;
   procedure After_decl_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal7'Class) is null;

   procedure Before_decl_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal8'Class) is null;
   procedure Visit_decl_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal8'Class) is abstract;
   procedure After_decl_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal8'Class) is null;

   procedure Before_decl_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal9'Class) is null;
   procedure Visit_decl_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal9'Class) is abstract;
   procedure After_decl_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal9'Class) is null;

   procedure Before_decl_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal10'Class) is null;
   procedure Visit_decl_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal10'Class) is abstract;
   procedure After_decl_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal10'Class) is null;

   procedure Before_decl_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal11'Class) is null;
   procedure Visit_decl_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal11'Class) is abstract;
   procedure After_decl_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal11'Class) is null;

   procedure Before_decl_nonterminal12(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal12'Class) is null;
   procedure Visit_decl_nonterminal12(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal12'Class) is abstract;
   procedure After_decl_nonterminal12(
      I : access Visit_ada95_Interface;
      N : access decl_Model.decl_nonterminal12'Class) is null;

   procedure Before_object_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access object_decl_Model.object_decl_nonterminal'Class) is null;
   procedure Visit_object_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access object_decl_Model.object_decl_nonterminal'Class) is abstract;
   procedure After_object_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access object_decl_Model.object_decl_nonterminal'Class) is null;

   procedure Before_def_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal1'Class) is null;
   procedure Visit_def_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal1'Class) is abstract;
   procedure After_def_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal1'Class) is null;

   procedure Before_def_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal2'Class) is null;
   procedure Visit_def_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal2'Class) is abstract;
   procedure After_def_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access def_id_s_Model.def_id_s_nonterminal2'Class) is null;

   procedure Before_def_id_nonterminal(
      I : access Visit_ada95_Interface;
      N : access def_id_Model.def_id_nonterminal'Class) is null;
   procedure Visit_def_id_nonterminal(
      I : access Visit_ada95_Interface;
      N : access def_id_Model.def_id_nonterminal'Class) is abstract;
   procedure After_def_id_nonterminal(
      I : access Visit_ada95_Interface;
      N : access def_id_Model.def_id_nonterminal'Class) is null;

   procedure Before_object_qualifier_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is null;
   procedure Visit_object_qualifier_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is abstract;
   procedure After_object_qualifier_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is null;

   procedure Before_object_qualifier_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is null;
   procedure Visit_object_qualifier_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is abstract;
   procedure After_object_qualifier_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is null;

   procedure Before_object_qualifier_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is null;
   procedure Visit_object_qualifier_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is abstract;
   procedure After_object_qualifier_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is null;

   procedure Before_object_qualifier_opt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is null;
   procedure Visit_object_qualifier_opt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is abstract;
   procedure After_object_qualifier_opt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is null;

   procedure Before_object_subtype_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is null;
   procedure Visit_object_subtype_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is abstract;
   procedure After_object_subtype_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is null;

   procedure Before_object_subtype_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is null;
   procedure Visit_object_subtype_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is abstract;
   procedure After_object_subtype_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is null;

   procedure Before_init_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal1'Class) is null;
   procedure Visit_init_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal1'Class) is abstract;
   procedure After_init_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal1'Class) is null;

   procedure Before_init_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal2'Class) is null;
   procedure Visit_init_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal2'Class) is abstract;
   procedure After_init_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access init_opt_Model.init_opt_nonterminal2'Class) is null;

   procedure Before_number_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access number_decl_Model.number_decl_nonterminal'Class) is null;
   procedure Visit_number_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access number_decl_Model.number_decl_nonterminal'Class) is abstract;
   procedure After_number_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access number_decl_Model.number_decl_nonterminal'Class) is null;

   procedure Before_type_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access type_decl_Model.type_decl_nonterminal'Class) is null;
   procedure Visit_type_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access type_decl_Model.type_decl_nonterminal'Class) is abstract;
   procedure After_type_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access type_decl_Model.type_decl_nonterminal'Class) is null;

   procedure Before_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is null;
   procedure Visit_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is abstract;
   procedure After_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is null;

   procedure Before_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is null;
   procedure Visit_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is abstract;
   procedure After_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is null;

   procedure Before_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is null;
   procedure Visit_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is abstract;
   procedure After_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is null;

   procedure Before_type_completion_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal1'Class) is null;
   procedure Visit_type_completion_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal1'Class) is abstract;
   procedure After_type_completion_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal1'Class) is null;

   procedure Before_type_completion_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal2'Class) is null;
   procedure Visit_type_completion_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal2'Class) is abstract;
   procedure After_type_completion_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_completion_Model.type_completion_nonterminal2'Class) is null;

   procedure Before_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal1'Class) is null;
   procedure Visit_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal1'Class) is abstract;
   procedure After_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal1'Class) is null;

   procedure Before_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal2'Class) is null;
   procedure Visit_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal2'Class) is abstract;
   procedure After_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal2'Class) is null;

   procedure Before_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal3'Class) is null;
   procedure Visit_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal3'Class) is abstract;
   procedure After_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal3'Class) is null;

   procedure Before_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal4'Class) is null;
   procedure Visit_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal4'Class) is abstract;
   procedure After_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal4'Class) is null;

   procedure Before_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal5'Class) is null;
   procedure Visit_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal5'Class) is abstract;
   procedure After_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal5'Class) is null;

   procedure Before_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal6'Class) is null;
   procedure Visit_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal6'Class) is abstract;
   procedure After_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal6'Class) is null;

   procedure Before_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal7'Class) is null;
   procedure Visit_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal7'Class) is abstract;
   procedure After_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal7'Class) is null;

   procedure Before_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal8'Class) is null;
   procedure Visit_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal8'Class) is abstract;
   procedure After_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access type_def_Model.type_def_nonterminal8'Class) is null;

   procedure Before_subtype_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is null;
   procedure Visit_subtype_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is abstract;
   procedure After_subtype_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is null;

   procedure Before_subtype_ind_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is null;
   procedure Visit_subtype_ind_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is abstract;
   procedure After_subtype_ind_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is null;

   procedure Before_subtype_ind_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is null;
   procedure Visit_subtype_ind_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is abstract;
   procedure After_subtype_ind_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is null;

   procedure Before_constraint_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal1'Class) is null;
   procedure Visit_constraint_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal1'Class) is abstract;
   procedure After_constraint_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal1'Class) is null;

   procedure Before_constraint_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal2'Class) is null;
   procedure Visit_constraint_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal2'Class) is abstract;
   procedure After_constraint_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access constraint_Model.constraint_nonterminal2'Class) is null;

   procedure Before_decimal_digits_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is null;
   procedure Visit_decimal_digits_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is abstract;
   procedure After_decimal_digits_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is null;

   procedure Before_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal1'Class) is null;
   procedure Visit_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal1'Class) is abstract;
   procedure After_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal1'Class) is null;

   procedure Before_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal2'Class) is null;
   procedure Visit_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal2'Class) is abstract;
   procedure After_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal2'Class) is null;

   procedure Before_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal3'Class) is null;
   procedure Visit_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal3'Class) is abstract;
   procedure After_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal3'Class) is null;

   procedure Before_derived_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal4'Class) is null;
   procedure Visit_derived_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal4'Class) is abstract;
   procedure After_derived_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal4'Class) is null;

   procedure Before_derived_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal5'Class) is null;
   procedure Visit_derived_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal5'Class) is abstract;
   procedure After_derived_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access derived_type_Model.derived_type_nonterminal5'Class) is null;

   procedure Before_range_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_constraint_Model.range_constraint_nonterminal'Class) is null;
   procedure Visit_range_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_constraint_Model.range_constraint_nonterminal'Class) is abstract;
   procedure After_range_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_constraint_Model.range_constraint_nonterminal'Class) is null;

   procedure Before_range_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal1'Class) is null;
   procedure Visit_range_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal1'Class) is abstract;
   procedure After_range_sym_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal1'Class) is null;

   procedure Before_range_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal2'Class) is null;
   procedure Visit_range_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal2'Class) is abstract;
   procedure After_range_sym_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal2'Class) is null;

   procedure Before_range_sym_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal3'Class) is null;
   procedure Visit_range_sym_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal3'Class) is abstract;
   procedure After_range_sym_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access range_sym_Model.range_sym_nonterminal3'Class) is null;

   procedure Before_enumeration_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is null;
   procedure Visit_enumeration_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is abstract;
   procedure After_enumeration_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is null;

   procedure Before_enum_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is null;
   procedure Visit_enum_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is abstract;
   procedure After_enum_id_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is null;

   procedure Before_enum_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is null;
   procedure Visit_enum_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is abstract;
   procedure After_enum_id_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is null;

   procedure Before_enum_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal1'Class) is null;
   procedure Visit_enum_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal1'Class) is abstract;
   procedure After_enum_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal1'Class) is null;

   procedure Before_enum_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal2'Class) is null;
   procedure Visit_enum_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal2'Class) is abstract;
   procedure After_enum_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access enum_id_Model.enum_id_nonterminal2'Class) is null;

   procedure Before_integer_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal1'Class) is null;
   procedure Visit_integer_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal1'Class) is abstract;
   procedure After_integer_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal1'Class) is null;

   procedure Before_integer_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal2'Class) is null;
   procedure Visit_integer_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal2'Class) is abstract;
   procedure After_integer_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access integer_type_Model.integer_type_nonterminal2'Class) is null;

   procedure Before_range_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_spec_Model.range_spec_nonterminal'Class) is null;
   procedure Visit_range_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_spec_Model.range_spec_nonterminal'Class) is abstract;
   procedure After_range_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access range_spec_Model.range_spec_nonterminal'Class) is null;

   procedure Before_range_spec_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is null;
   procedure Visit_range_spec_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is abstract;
   procedure After_range_spec_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is null;

   procedure Before_range_spec_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is null;
   procedure Visit_range_spec_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is abstract;
   procedure After_range_spec_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is null;

   procedure Before_real_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal1'Class) is null;
   procedure Visit_real_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal1'Class) is abstract;
   procedure After_real_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal1'Class) is null;

   procedure Before_real_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal2'Class) is null;
   procedure Visit_real_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal2'Class) is abstract;
   procedure After_real_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access real_type_Model.real_type_nonterminal2'Class) is null;

   procedure Before_float_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access float_type_Model.float_type_nonterminal'Class) is null;
   procedure Visit_float_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access float_type_Model.float_type_nonterminal'Class) is abstract;
   procedure After_float_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access float_type_Model.float_type_nonterminal'Class) is null;

   procedure Before_fixed_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal1'Class) is null;
   procedure Visit_fixed_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal1'Class) is abstract;
   procedure After_fixed_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal1'Class) is null;

   procedure Before_fixed_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal2'Class) is null;
   procedure Visit_fixed_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal2'Class) is abstract;
   procedure After_fixed_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access fixed_type_Model.fixed_type_nonterminal2'Class) is null;

   procedure Before_array_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal1'Class) is null;
   procedure Visit_array_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal1'Class) is abstract;
   procedure After_array_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal1'Class) is null;

   procedure Before_array_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal2'Class) is null;
   procedure Visit_array_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal2'Class) is abstract;
   procedure After_array_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access array_type_Model.array_type_nonterminal2'Class) is null;

   procedure Before_unconstr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is null;
   procedure Visit_unconstr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is abstract;
   procedure After_unconstr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is null;

   procedure Before_constr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is null;
   procedure Visit_constr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is abstract;
   procedure After_constr_array_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is null;

   procedure Before_component_subtype_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is null;
   procedure Visit_component_subtype_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is abstract;
   procedure After_component_subtype_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is null;

   procedure Before_aliased_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is null;
   procedure Visit_aliased_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is abstract;
   procedure After_aliased_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is null;

   procedure Before_aliased_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is null;
   procedure Visit_aliased_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is abstract;
   procedure After_aliased_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is null;

   procedure Before_index_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal1'Class) is null;
   procedure Visit_index_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal1'Class) is abstract;
   procedure After_index_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal1'Class) is null;

   procedure Before_index_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal2'Class) is null;
   procedure Visit_index_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal2'Class) is abstract;
   procedure After_index_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access index_s_Model.index_s_nonterminal2'Class) is null;

   procedure Before_index_nonterminal(
      I : access Visit_ada95_Interface;
      N : access index_Model.index_nonterminal'Class) is null;
   procedure Visit_index_nonterminal(
      I : access Visit_ada95_Interface;
      N : access index_Model.index_nonterminal'Class) is abstract;
   procedure After_index_nonterminal(
      I : access Visit_ada95_Interface;
      N : access index_Model.index_nonterminal'Class) is null;

   procedure Before_iter_index_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is null;
   procedure Visit_iter_index_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is abstract;
   procedure After_iter_index_constraint_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is null;

   procedure Before_iter_discrete_range_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is null;
   procedure Visit_iter_discrete_range_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is abstract;
   procedure After_iter_discrete_range_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is null;

   procedure Before_iter_discrete_range_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is null;
   procedure Visit_iter_discrete_range_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is abstract;
   procedure After_iter_discrete_range_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is null;

   procedure Before_discrete_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal1'Class) is null;
   procedure Visit_discrete_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal1'Class) is abstract;
   procedure After_discrete_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal1'Class) is null;

   procedure Before_discrete_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal2'Class) is null;
   procedure Visit_discrete_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal2'Class) is abstract;
   procedure After_discrete_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_range_Model.discrete_range_nonterminal2'Class) is null;

   procedure Before_range_constr_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is null;
   procedure Visit_range_constr_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is abstract;
   procedure After_range_constr_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is null;

   procedure Before_range_constr_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is null;
   procedure Visit_range_constr_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is abstract;
   procedure After_range_constr_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is null;

   procedure Before_record_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_Model.record_type_nonterminal'Class) is null;
   procedure Visit_record_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_Model.record_type_nonterminal'Class) is abstract;
   procedure After_record_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_Model.record_type_nonterminal'Class) is null;

   procedure Before_record_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal1'Class) is null;
   procedure Visit_record_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal1'Class) is abstract;
   procedure After_record_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal1'Class) is null;

   procedure Before_record_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal2'Class) is null;
   procedure Visit_record_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal2'Class) is abstract;
   procedure After_record_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access record_def_Model.record_def_nonterminal2'Class) is null;

   procedure Before_tagged_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is null;
   procedure Visit_tagged_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is abstract;
   procedure After_tagged_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is null;

   procedure Before_tagged_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is null;
   procedure Visit_tagged_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is abstract;
   procedure After_tagged_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is null;

   procedure Before_tagged_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is null;
   procedure Visit_tagged_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is abstract;
   procedure After_tagged_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is null;

   procedure Before_comp_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal1'Class) is null;
   procedure Visit_comp_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal1'Class) is abstract;
   procedure After_comp_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal1'Class) is null;

   procedure Before_comp_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal2'Class) is null;
   procedure Visit_comp_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal2'Class) is abstract;
   procedure After_comp_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal2'Class) is null;

   procedure Before_comp_list_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal3'Class) is null;
   procedure Visit_comp_list_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal3'Class) is abstract;
   procedure After_comp_list_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access comp_list_Model.comp_list_nonterminal3'Class) is null;

   procedure Before_comp_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is null;
   procedure Visit_comp_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is abstract;
   procedure After_comp_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is null;

   procedure Before_comp_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is null;
   procedure Visit_comp_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is abstract;
   procedure After_comp_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is null;

   procedure Before_variant_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is null;
   procedure Visit_variant_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is abstract;
   procedure After_variant_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is null;

   procedure Before_variant_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is null;
   procedure Visit_variant_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is abstract;
   procedure After_variant_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is null;

   procedure Before_comp_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_decl_Model.comp_decl_nonterminal'Class) is null;
   procedure Visit_comp_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_decl_Model.comp_decl_nonterminal'Class) is abstract;
   procedure After_comp_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_decl_Model.comp_decl_nonterminal'Class) is null;

   procedure Before_discrim_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_part_Model.discrim_part_nonterminal'Class) is null;
   procedure Visit_discrim_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_part_Model.discrim_part_nonterminal'Class) is abstract;
   procedure After_discrim_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_part_Model.discrim_part_nonterminal'Class) is null;

   procedure Before_discrim_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is null;
   procedure Visit_discrim_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is abstract;
   procedure After_discrim_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is null;

   procedure Before_discrim_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is null;
   procedure Visit_discrim_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is abstract;
   procedure After_discrim_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is null;

   procedure Before_discrim_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is null;
   procedure Visit_discrim_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is abstract;
   procedure After_discrim_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is null;

   procedure Before_access_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal1'Class) is null;
   procedure Visit_access_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal1'Class) is abstract;
   procedure After_access_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal1'Class) is null;

   procedure Before_access_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal2'Class) is null;
   procedure Visit_access_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal2'Class) is abstract;
   procedure After_access_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_opt_Model.access_opt_nonterminal2'Class) is null;

   procedure Before_variant_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_part_Model.variant_part_nonterminal'Class) is null;
   procedure Visit_variant_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_part_Model.variant_part_nonterminal'Class) is abstract;
   procedure After_variant_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_part_Model.variant_part_nonterminal'Class) is null;

   procedure Before_variant_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal1'Class) is null;
   procedure Visit_variant_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal1'Class) is abstract;
   procedure After_variant_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal1'Class) is null;

   procedure Before_variant_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal2'Class) is null;
   procedure Visit_variant_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal2'Class) is abstract;
   procedure After_variant_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access variant_s_Model.variant_s_nonterminal2'Class) is null;

   procedure Before_variant_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_Model.variant_nonterminal'Class) is null;
   procedure Visit_variant_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_Model.variant_nonterminal'Class) is abstract;
   procedure After_variant_nonterminal(
      I : access Visit_ada95_Interface;
      N : access variant_Model.variant_nonterminal'Class) is null;

   procedure Before_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal1'Class) is null;
   procedure Visit_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal1'Class) is abstract;
   procedure After_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal1'Class) is null;

   procedure Before_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal2'Class) is null;
   procedure Visit_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal2'Class) is abstract;
   procedure After_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_s_Model.choice_s_nonterminal2'Class) is null;

   procedure Before_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal1'Class) is null;
   procedure Visit_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal1'Class) is abstract;
   procedure After_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal1'Class) is null;

   procedure Before_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal2'Class) is null;
   procedure Visit_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal2'Class) is abstract;
   procedure After_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal2'Class) is null;

   procedure Before_choice_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal3'Class) is null;
   procedure Visit_choice_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal3'Class) is abstract;
   procedure After_choice_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access choice_Model.choice_nonterminal3'Class) is null;

   procedure Before_discrete_with_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is null;
   procedure Visit_discrete_with_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is abstract;
   procedure After_discrete_with_range_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is null;

   procedure Before_discrete_with_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is null;
   procedure Visit_discrete_with_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is abstract;
   procedure After_discrete_with_range_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is null;

   procedure Before_access_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal1'Class) is null;
   procedure Visit_access_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal1'Class) is abstract;
   procedure After_access_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal1'Class) is null;

   procedure Before_access_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal2'Class) is null;
   procedure Visit_access_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal2'Class) is abstract;
   procedure After_access_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal2'Class) is null;

   procedure Before_access_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal3'Class) is null;
   procedure Visit_access_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal3'Class) is abstract;
   procedure After_access_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal3'Class) is null;

   procedure Before_access_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal4'Class) is null;
   procedure Visit_access_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal4'Class) is abstract;
   procedure After_access_type_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal4'Class) is null;

   procedure Before_access_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal5'Class) is null;
   procedure Visit_access_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal5'Class) is abstract;
   procedure After_access_type_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access access_type_Model.access_type_nonterminal5'Class) is null;

   procedure Before_prot_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal1'Class) is null;
   procedure Visit_prot_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal1'Class) is abstract;
   procedure After_prot_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal1'Class) is null;

   procedure Before_prot_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal2'Class) is null;
   procedure Visit_prot_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal2'Class) is abstract;
   procedure After_prot_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_opt_Model.prot_opt_nonterminal2'Class) is null;

   procedure Before_decl_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal1'Class) is null;
   procedure Visit_decl_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal1'Class) is abstract;
   procedure After_decl_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal1'Class) is null;

   procedure Before_decl_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal2'Class) is null;
   procedure Visit_decl_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal2'Class) is abstract;
   procedure After_decl_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_part_Model.decl_part_nonterminal2'Class) is null;

   procedure Before_decl_item_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is null;
   procedure Visit_decl_item_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is abstract;
   procedure After_decl_item_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is null;

   procedure Before_decl_item_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is null;
   procedure Visit_decl_item_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is abstract;
   procedure After_decl_item_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is null;

   procedure Before_decl_item_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is null;
   procedure Visit_decl_item_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is abstract;
   procedure After_decl_item_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is null;

   procedure Before_decl_item_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is null;
   procedure Visit_decl_item_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is abstract;
   procedure After_decl_item_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is null;

   procedure Before_decl_item_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal1'Class) is null;
   procedure Visit_decl_item_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal1'Class) is abstract;
   procedure After_decl_item_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal1'Class) is null;

   procedure Before_decl_item_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal2'Class) is null;
   procedure Visit_decl_item_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal2'Class) is abstract;
   procedure After_decl_item_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal2'Class) is null;

   procedure Before_decl_item_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal3'Class) is null;
   procedure Visit_decl_item_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal3'Class) is abstract;
   procedure After_decl_item_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal3'Class) is null;

   procedure Before_decl_item_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal4'Class) is null;
   procedure Visit_decl_item_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal4'Class) is abstract;
   procedure After_decl_item_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access decl_item_Model.decl_item_nonterminal4'Class) is null;

   procedure Before_decl_item_or_body_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is null;
   procedure Visit_decl_item_or_body_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is abstract;
   procedure After_decl_item_or_body_s1_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is null;

   procedure Before_decl_item_or_body_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is null;
   procedure Visit_decl_item_or_body_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is abstract;
   procedure After_decl_item_or_body_s1_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is null;

   procedure Before_decl_item_or_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is null;
   procedure Visit_decl_item_or_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is abstract;
   procedure After_decl_item_or_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is null;

   procedure Before_decl_item_or_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is null;
   procedure Visit_decl_item_or_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is abstract;
   procedure After_decl_item_or_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is null;

   procedure Before_body_nt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal1'Class) is null;
   procedure Visit_body_nt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal1'Class) is abstract;
   procedure After_body_nt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal1'Class) is null;

   procedure Before_body_nt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal2'Class) is null;
   procedure Visit_body_nt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal2'Class) is abstract;
   procedure After_body_nt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal2'Class) is null;

   procedure Before_body_nt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal3'Class) is null;
   procedure Visit_body_nt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal3'Class) is abstract;
   procedure After_body_nt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal3'Class) is null;

   procedure Before_body_nt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal4'Class) is null;
   procedure Visit_body_nt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal4'Class) is abstract;
   procedure After_body_nt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_nt_Model.body_nt_nonterminal4'Class) is null;

   procedure Before_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal1'Class) is null;
   procedure Visit_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal1'Class) is abstract;
   procedure After_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal1'Class) is null;

   procedure Before_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal2'Class) is null;
   procedure Visit_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal2'Class) is abstract;
   procedure After_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal2'Class) is null;

   procedure Before_name_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal3'Class) is null;
   procedure Visit_name_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal3'Class) is abstract;
   procedure After_name_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal3'Class) is null;

   procedure Before_name_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal4'Class) is null;
   procedure Visit_name_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal4'Class) is abstract;
   procedure After_name_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal4'Class) is null;

   procedure Before_name_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal5'Class) is null;
   procedure Visit_name_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal5'Class) is abstract;
   procedure After_name_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access name_Model.name_nonterminal5'Class) is null;

   procedure Before_mark_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal1'Class) is null;
   procedure Visit_mark_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal1'Class) is abstract;
   procedure After_mark_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal1'Class) is null;

   procedure Before_mark_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal2'Class) is null;
   procedure Visit_mark_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal2'Class) is abstract;
   procedure After_mark_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal2'Class) is null;

   procedure Before_mark_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal3'Class) is null;
   procedure Visit_mark_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal3'Class) is abstract;
   procedure After_mark_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mark_Model.mark_nonterminal3'Class) is null;

   procedure Before_simple_name_nonterminal(
      I : access Visit_ada95_Interface;
      N : access simple_name_Model.simple_name_nonterminal'Class) is null;
   procedure Visit_simple_name_nonterminal(
      I : access Visit_ada95_Interface;
      N : access simple_name_Model.simple_name_nonterminal'Class) is abstract;
   procedure After_simple_name_nonterminal(
      I : access Visit_ada95_Interface;
      N : access simple_name_Model.simple_name_nonterminal'Class) is null;

   procedure Before_compound_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal1'Class) is null;
   procedure Visit_compound_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal1'Class) is abstract;
   procedure After_compound_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal1'Class) is null;

   procedure Before_compound_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal2'Class) is null;
   procedure Visit_compound_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal2'Class) is abstract;
   procedure After_compound_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_name_Model.compound_name_nonterminal2'Class) is null;

   procedure Before_c_name_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal1'Class) is null;
   procedure Visit_c_name_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal1'Class) is abstract;
   procedure After_c_name_list_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal1'Class) is null;

   procedure Before_c_name_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal2'Class) is null;
   procedure Visit_c_name_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal2'Class) is abstract;
   procedure After_c_name_list_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_name_list_Model.c_name_list_nonterminal2'Class) is null;

   procedure Before_used_char_nonterminal(
      I : access Visit_ada95_Interface;
      N : access used_char_Model.used_char_nonterminal'Class) is null;
   procedure Visit_used_char_nonterminal(
      I : access Visit_ada95_Interface;
      N : access used_char_Model.used_char_nonterminal'Class) is abstract;
   procedure After_used_char_nonterminal(
      I : access Visit_ada95_Interface;
      N : access used_char_Model.used_char_nonterminal'Class) is null;

   procedure Before_operator_symbol_nonterminal(
      I : access Visit_ada95_Interface;
      N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is null;
   procedure Visit_operator_symbol_nonterminal(
      I : access Visit_ada95_Interface;
      N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is abstract;
   procedure After_operator_symbol_nonterminal(
      I : access Visit_ada95_Interface;
      N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is null;

   procedure Before_indexed_comp_nonterminal(
      I : access Visit_ada95_Interface;
      N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is null;
   procedure Visit_indexed_comp_nonterminal(
      I : access Visit_ada95_Interface;
      N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is abstract;
   procedure After_indexed_comp_nonterminal(
      I : access Visit_ada95_Interface;
      N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is null;

   procedure Before_value_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal1'Class) is null;
   procedure Visit_value_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal1'Class) is abstract;
   procedure After_value_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal1'Class) is null;

   procedure Before_value_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal2'Class) is null;
   procedure Visit_value_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal2'Class) is abstract;
   procedure After_value_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_Model.value_s_nonterminal2'Class) is null;

   procedure Before_value_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal1'Class) is null;
   procedure Visit_value_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal1'Class) is abstract;
   procedure After_value_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal1'Class) is null;

   procedure Before_value_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal2'Class) is null;
   procedure Visit_value_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal2'Class) is abstract;
   procedure After_value_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal2'Class) is null;

   procedure Before_value_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal3'Class) is null;
   procedure Visit_value_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal3'Class) is abstract;
   procedure After_value_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access value_Model.value_nonterminal3'Class) is null;

   procedure Before_selected_comp_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal1'Class) is null;
   procedure Visit_selected_comp_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal1'Class) is abstract;
   procedure After_selected_comp_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal1'Class) is null;

   procedure Before_selected_comp_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal2'Class) is null;
   procedure Visit_selected_comp_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal2'Class) is abstract;
   procedure After_selected_comp_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal2'Class) is null;

   procedure Before_selected_comp_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal3'Class) is null;
   procedure Visit_selected_comp_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal3'Class) is abstract;
   procedure After_selected_comp_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal3'Class) is null;

   procedure Before_selected_comp_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal4'Class) is null;
   procedure Visit_selected_comp_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal4'Class) is abstract;
   procedure After_selected_comp_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access selected_comp_Model.selected_comp_nonterminal4'Class) is null;

   procedure Before_attribute_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attribute_Model.attribute_nonterminal'Class) is null;
   procedure Visit_attribute_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attribute_Model.attribute_nonterminal'Class) is abstract;
   procedure After_attribute_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attribute_Model.attribute_nonterminal'Class) is null;

   procedure Before_attribute_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal1'Class) is null;
   procedure Visit_attribute_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal1'Class) is abstract;
   procedure After_attribute_id_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal1'Class) is null;

   procedure Before_attribute_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal2'Class) is null;
   procedure Visit_attribute_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal2'Class) is abstract;
   procedure After_attribute_id_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal2'Class) is null;

   procedure Before_attribute_id_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal3'Class) is null;
   procedure Visit_attribute_id_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal3'Class) is abstract;
   procedure After_attribute_id_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal3'Class) is null;

   procedure Before_attribute_id_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal4'Class) is null;
   procedure Visit_attribute_id_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal4'Class) is abstract;
   procedure After_attribute_id_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access attribute_id_Model.attribute_id_nonterminal4'Class) is null;

   procedure Before_literal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal1'Class) is null;
   procedure Visit_literal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal1'Class) is abstract;
   procedure After_literal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal1'Class) is null;

   procedure Before_literal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal2'Class) is null;
   procedure Visit_literal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal2'Class) is abstract;
   procedure After_literal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal2'Class) is null;

   procedure Before_literal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal3'Class) is null;
   procedure Visit_literal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal3'Class) is abstract;
   procedure After_literal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access literal_Model.literal_nonterminal3'Class) is null;

   procedure Before_aggregate_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal1'Class) is null;
   procedure Visit_aggregate_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal1'Class) is abstract;
   procedure After_aggregate_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal1'Class) is null;

   procedure Before_aggregate_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal2'Class) is null;
   procedure Visit_aggregate_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal2'Class) is abstract;
   procedure After_aggregate_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal2'Class) is null;

   procedure Before_aggregate_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal3'Class) is null;
   procedure Visit_aggregate_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal3'Class) is abstract;
   procedure After_aggregate_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal3'Class) is null;

   procedure Before_aggregate_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal4'Class) is null;
   procedure Visit_aggregate_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal4'Class) is abstract;
   procedure After_aggregate_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal4'Class) is null;

   procedure Before_aggregate_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal5'Class) is null;
   procedure Visit_aggregate_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal5'Class) is abstract;
   procedure After_aggregate_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access aggregate_Model.aggregate_nonterminal5'Class) is null;

   procedure Before_value_s_2_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal1'Class) is null;
   procedure Visit_value_s_2_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal1'Class) is abstract;
   procedure After_value_s_2_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal1'Class) is null;

   procedure Before_value_s_2_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal2'Class) is null;
   procedure Visit_value_s_2_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal2'Class) is abstract;
   procedure After_value_s_2_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access value_s_2_Model.value_s_2_nonterminal2'Class) is null;

   procedure Before_comp_assoc_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is null;
   procedure Visit_comp_assoc_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is abstract;
   procedure After_comp_assoc_nonterminal(
      I : access Visit_ada95_Interface;
      N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is null;

   procedure Before_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal1'Class) is null;
   procedure Visit_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal1'Class) is abstract;
   procedure After_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal1'Class) is null;

   procedure Before_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal2'Class) is null;
   procedure Visit_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal2'Class) is abstract;
   procedure After_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal2'Class) is null;

   procedure Before_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal3'Class) is null;
   procedure Visit_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal3'Class) is abstract;
   procedure After_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access expression_Model.expression_nonterminal3'Class) is null;

   procedure Before_logical_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal1'Class) is null;
   procedure Visit_logical_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal1'Class) is abstract;
   procedure After_logical_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal1'Class) is null;

   procedure Before_logical_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal2'Class) is null;
   procedure Visit_logical_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal2'Class) is abstract;
   procedure After_logical_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal2'Class) is null;

   procedure Before_logical_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal3'Class) is null;
   procedure Visit_logical_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal3'Class) is abstract;
   procedure After_logical_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access logical_Model.logical_nonterminal3'Class) is null;

   procedure Before_short_circuit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal1'Class) is null;
   procedure Visit_short_circuit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal1'Class) is abstract;
   procedure After_short_circuit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal1'Class) is null;

   procedure Before_short_circuit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal2'Class) is null;
   procedure Visit_short_circuit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal2'Class) is abstract;
   procedure After_short_circuit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access short_circuit_Model.short_circuit_nonterminal2'Class) is null;

   procedure Before_relation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal1'Class) is null;
   procedure Visit_relation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal1'Class) is abstract;
   procedure After_relation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal1'Class) is null;

   procedure Before_relation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal2'Class) is null;
   procedure Visit_relation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal2'Class) is abstract;
   procedure After_relation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal2'Class) is null;

   procedure Before_relation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal3'Class) is null;
   procedure Visit_relation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal3'Class) is abstract;
   procedure After_relation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal3'Class) is null;

   procedure Before_relation_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal4'Class) is null;
   procedure Visit_relation_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal4'Class) is abstract;
   procedure After_relation_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relation_Model.relation_nonterminal4'Class) is null;

   procedure Before_relational_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal1'Class) is null;
   procedure Visit_relational_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal1'Class) is abstract;
   procedure After_relational_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal1'Class) is null;

   procedure Before_relational_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal2'Class) is null;
   procedure Visit_relational_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal2'Class) is abstract;
   procedure After_relational_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal2'Class) is null;

   procedure Before_relational_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal3'Class) is null;
   procedure Visit_relational_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal3'Class) is abstract;
   procedure After_relational_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal3'Class) is null;

   procedure Before_relational_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal4'Class) is null;
   procedure Visit_relational_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal4'Class) is abstract;
   procedure After_relational_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal4'Class) is null;

   procedure Before_relational_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal5'Class) is null;
   procedure Visit_relational_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal5'Class) is abstract;
   procedure After_relational_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal5'Class) is null;

   procedure Before_relational_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal6'Class) is null;
   procedure Visit_relational_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal6'Class) is abstract;
   procedure After_relational_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access relational_Model.relational_nonterminal6'Class) is null;

   procedure Before_membership_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal1'Class) is null;
   procedure Visit_membership_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal1'Class) is abstract;
   procedure After_membership_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal1'Class) is null;

   procedure Before_membership_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal2'Class) is null;
   procedure Visit_membership_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal2'Class) is abstract;
   procedure After_membership_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access membership_Model.membership_nonterminal2'Class) is null;

   procedure Before_simple_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal1'Class) is null;
   procedure Visit_simple_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal1'Class) is abstract;
   procedure After_simple_expression_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal1'Class) is null;

   procedure Before_simple_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal2'Class) is null;
   procedure Visit_simple_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal2'Class) is abstract;
   procedure After_simple_expression_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal2'Class) is null;

   procedure Before_simple_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal3'Class) is null;
   procedure Visit_simple_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal3'Class) is abstract;
   procedure After_simple_expression_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_expression_Model.simple_expression_nonterminal3'Class) is null;

   procedure Before_unary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal1'Class) is null;
   procedure Visit_unary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal1'Class) is abstract;
   procedure After_unary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal1'Class) is null;

   procedure Before_unary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal2'Class) is null;
   procedure Visit_unary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal2'Class) is abstract;
   procedure After_unary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unary_Model.unary_nonterminal2'Class) is null;

   procedure Before_adding_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal1'Class) is null;
   procedure Visit_adding_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal1'Class) is abstract;
   procedure After_adding_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal1'Class) is null;

   procedure Before_adding_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal2'Class) is null;
   procedure Visit_adding_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal2'Class) is abstract;
   procedure After_adding_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal2'Class) is null;

   procedure Before_adding_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal3'Class) is null;
   procedure Visit_adding_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal3'Class) is abstract;
   procedure After_adding_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access adding_Model.adding_nonterminal3'Class) is null;

   procedure Before_term_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal1'Class) is null;
   procedure Visit_term_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal1'Class) is abstract;
   procedure After_term_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal1'Class) is null;

   procedure Before_term_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal2'Class) is null;
   procedure Visit_term_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal2'Class) is abstract;
   procedure After_term_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access term_Model.term_nonterminal2'Class) is null;

   procedure Before_multiplying_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal1'Class) is null;
   procedure Visit_multiplying_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal1'Class) is abstract;
   procedure After_multiplying_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal1'Class) is null;

   procedure Before_multiplying_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal2'Class) is null;
   procedure Visit_multiplying_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal2'Class) is abstract;
   procedure After_multiplying_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal2'Class) is null;

   procedure Before_multiplying_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal3'Class) is null;
   procedure Visit_multiplying_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal3'Class) is abstract;
   procedure After_multiplying_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal3'Class) is null;

   procedure Before_multiplying_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal4'Class) is null;
   procedure Visit_multiplying_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal4'Class) is abstract;
   procedure After_multiplying_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access multiplying_Model.multiplying_nonterminal4'Class) is null;

   procedure Before_factor_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal1'Class) is null;
   procedure Visit_factor_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal1'Class) is abstract;
   procedure After_factor_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal1'Class) is null;

   procedure Before_factor_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal2'Class) is null;
   procedure Visit_factor_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal2'Class) is abstract;
   procedure After_factor_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal2'Class) is null;

   procedure Before_factor_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal3'Class) is null;
   procedure Visit_factor_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal3'Class) is abstract;
   procedure After_factor_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal3'Class) is null;

   procedure Before_factor_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal4'Class) is null;
   procedure Visit_factor_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal4'Class) is abstract;
   procedure After_factor_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access factor_Model.factor_nonterminal4'Class) is null;

   procedure Before_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal1'Class) is null;
   procedure Visit_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal1'Class) is abstract;
   procedure After_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal1'Class) is null;

   procedure Before_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal2'Class) is null;
   procedure Visit_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal2'Class) is abstract;
   procedure After_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal2'Class) is null;

   procedure Before_primary_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal3'Class) is null;
   procedure Visit_primary_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal3'Class) is abstract;
   procedure After_primary_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal3'Class) is null;

   procedure Before_primary_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal4'Class) is null;
   procedure Visit_primary_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal4'Class) is abstract;
   procedure After_primary_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal4'Class) is null;

   procedure Before_primary_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal5'Class) is null;
   procedure Visit_primary_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal5'Class) is abstract;
   procedure After_primary_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access primary_Model.primary_nonterminal5'Class) is null;

   procedure Before_parenthesized_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is null;
   procedure Visit_parenthesized_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is abstract;
   procedure After_parenthesized_primary_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is null;

   procedure Before_parenthesized_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is null;
   procedure Visit_parenthesized_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is abstract;
   procedure After_parenthesized_primary_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is null;

   procedure Before_qualified_nonterminal(
      I : access Visit_ada95_Interface;
      N : access qualified_Model.qualified_nonterminal'Class) is null;
   procedure Visit_qualified_nonterminal(
      I : access Visit_ada95_Interface;
      N : access qualified_Model.qualified_nonterminal'Class) is abstract;
   procedure After_qualified_nonterminal(
      I : access Visit_ada95_Interface;
      N : access qualified_Model.qualified_nonterminal'Class) is null;

   procedure Before_allocator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal1'Class) is null;
   procedure Visit_allocator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal1'Class) is abstract;
   procedure After_allocator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal1'Class) is null;

   procedure Before_allocator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal2'Class) is null;
   procedure Visit_allocator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal2'Class) is abstract;
   procedure After_allocator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access allocator_Model.allocator_nonterminal2'Class) is null;

   procedure Before_statement_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal1'Class) is null;
   procedure Visit_statement_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal1'Class) is abstract;
   procedure After_statement_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal1'Class) is null;

   procedure Before_statement_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal2'Class) is null;
   procedure Visit_statement_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal2'Class) is abstract;
   procedure After_statement_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_s_Model.statement_s_nonterminal2'Class) is null;

   procedure Before_statement_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal1'Class) is null;
   procedure Visit_statement_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal1'Class) is abstract;
   procedure After_statement_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal1'Class) is null;

   procedure Before_statement_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal2'Class) is null;
   procedure Visit_statement_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal2'Class) is abstract;
   procedure After_statement_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access statement_Model.statement_nonterminal2'Class) is null;

   procedure Before_unlabeled_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal1'Class) is null;
   procedure Visit_unlabeled_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal1'Class) is abstract;
   procedure After_unlabeled_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal1'Class) is null;

   procedure Before_unlabeled_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal2'Class) is null;
   procedure Visit_unlabeled_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal2'Class) is abstract;
   procedure After_unlabeled_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal2'Class) is null;

   procedure Before_unlabeled_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal3'Class) is null;
   procedure Visit_unlabeled_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal3'Class) is abstract;
   procedure After_unlabeled_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unlabeled_Model.unlabeled_nonterminal3'Class) is null;

   procedure Before_simple_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is null;
   procedure Visit_simple_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is abstract;
   procedure After_simple_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is null;

   procedure Before_simple_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is null;
   procedure Visit_simple_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is abstract;
   procedure After_simple_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is null;

   procedure Before_simple_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is null;
   procedure Visit_simple_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is abstract;
   procedure After_simple_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is null;

   procedure Before_simple_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is null;
   procedure Visit_simple_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is abstract;
   procedure After_simple_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is null;

   procedure Before_simple_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is null;
   procedure Visit_simple_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is abstract;
   procedure After_simple_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is null;

   procedure Before_simple_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is null;
   procedure Visit_simple_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is abstract;
   procedure After_simple_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is null;

   procedure Before_simple_stmt_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is null;
   procedure Visit_simple_stmt_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is abstract;
   procedure After_simple_stmt_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is null;

   procedure Before_simple_stmt_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is null;
   procedure Visit_simple_stmt_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is abstract;
   procedure After_simple_stmt_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is null;

   procedure Before_simple_stmt_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is null;
   procedure Visit_simple_stmt_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is abstract;
   procedure After_simple_stmt_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is null;

   procedure Before_simple_stmt_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is null;
   procedure Visit_simple_stmt_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is abstract;
   procedure After_simple_stmt_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is null;

   procedure Before_simple_stmt_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is null;
   procedure Visit_simple_stmt_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is abstract;
   procedure After_simple_stmt_nonterminal11(
      I : access Visit_ada95_Interface;
      N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is null;

   procedure Before_compound_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is null;
   procedure Visit_compound_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is abstract;
   procedure After_compound_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is null;

   procedure Before_compound_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is null;
   procedure Visit_compound_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is abstract;
   procedure After_compound_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is null;

   procedure Before_compound_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is null;
   procedure Visit_compound_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is abstract;
   procedure After_compound_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is null;

   procedure Before_compound_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is null;
   procedure Visit_compound_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is abstract;
   procedure After_compound_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is null;

   procedure Before_compound_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is null;
   procedure Visit_compound_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is abstract;
   procedure After_compound_stmt_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is null;

   procedure Before_compound_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is null;
   procedure Visit_compound_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is abstract;
   procedure After_compound_stmt_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is null;

   procedure Before_label_nonterminal(
      I : access Visit_ada95_Interface;
      N : access label_Model.label_nonterminal'Class) is null;
   procedure Visit_label_nonterminal(
      I : access Visit_ada95_Interface;
      N : access label_Model.label_nonterminal'Class) is abstract;
   procedure After_label_nonterminal(
      I : access Visit_ada95_Interface;
      N : access label_Model.label_nonterminal'Class) is null;

   procedure Before_null_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access null_stmt_Model.null_stmt_nonterminal'Class) is null;
   procedure Visit_null_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access null_stmt_Model.null_stmt_nonterminal'Class) is abstract;
   procedure After_null_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access null_stmt_Model.null_stmt_nonterminal'Class) is null;

   procedure Before_assign_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is null;
   procedure Visit_assign_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is abstract;
   procedure After_assign_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is null;

   procedure Before_if_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access if_stmt_Model.if_stmt_nonterminal'Class) is null;
   procedure Visit_if_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access if_stmt_Model.if_stmt_nonterminal'Class) is abstract;
   procedure After_if_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access if_stmt_Model.if_stmt_nonterminal'Class) is null;

   procedure Before_cond_clause_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is null;
   procedure Visit_cond_clause_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is abstract;
   procedure After_cond_clause_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is null;

   procedure Before_cond_clause_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is null;
   procedure Visit_cond_clause_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is abstract;
   procedure After_cond_clause_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is null;

   procedure Before_cond_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_clause_Model.cond_clause_nonterminal'Class) is null;
   procedure Visit_cond_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_clause_Model.cond_clause_nonterminal'Class) is abstract;
   procedure After_cond_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_clause_Model.cond_clause_nonterminal'Class) is null;

   procedure Before_cond_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_part_Model.cond_part_nonterminal'Class) is null;
   procedure Visit_cond_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_part_Model.cond_part_nonterminal'Class) is abstract;
   procedure After_cond_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_part_Model.cond_part_nonterminal'Class) is null;

   procedure Before_condition_nonterminal(
      I : access Visit_ada95_Interface;
      N : access condition_Model.condition_nonterminal'Class) is null;
   procedure Visit_condition_nonterminal(
      I : access Visit_ada95_Interface;
      N : access condition_Model.condition_nonterminal'Class) is abstract;
   procedure After_condition_nonterminal(
      I : access Visit_ada95_Interface;
      N : access condition_Model.condition_nonterminal'Class) is null;

   procedure Before_else_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal1'Class) is null;
   procedure Visit_else_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal1'Class) is abstract;
   procedure After_else_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal1'Class) is null;

   procedure Before_else_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal2'Class) is null;
   procedure Visit_else_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal2'Class) is abstract;
   procedure After_else_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access else_opt_Model.else_opt_nonterminal2'Class) is null;

   procedure Before_case_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_stmt_Model.case_stmt_nonterminal'Class) is null;
   procedure Visit_case_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_stmt_Model.case_stmt_nonterminal'Class) is abstract;
   procedure After_case_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_stmt_Model.case_stmt_nonterminal'Class) is null;

   procedure Before_case_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_hdr_Model.case_hdr_nonterminal'Class) is null;
   procedure Visit_case_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_hdr_Model.case_hdr_nonterminal'Class) is abstract;
   procedure After_case_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access case_hdr_Model.case_hdr_nonterminal'Class) is null;

   procedure Before_alternative_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal1'Class) is null;
   procedure Visit_alternative_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal1'Class) is abstract;
   procedure After_alternative_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal1'Class) is null;

   procedure Before_alternative_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal2'Class) is null;
   procedure Visit_alternative_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal2'Class) is abstract;
   procedure After_alternative_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access alternative_s_Model.alternative_s_nonterminal2'Class) is null;

   procedure Before_alternative_nonterminal(
      I : access Visit_ada95_Interface;
      N : access alternative_Model.alternative_nonterminal'Class) is null;
   procedure Visit_alternative_nonterminal(
      I : access Visit_ada95_Interface;
      N : access alternative_Model.alternative_nonterminal'Class) is abstract;
   procedure After_alternative_nonterminal(
      I : access Visit_ada95_Interface;
      N : access alternative_Model.alternative_nonterminal'Class) is null;

   procedure Before_loop_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is null;
   procedure Visit_loop_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is abstract;
   procedure After_loop_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is null;

   procedure Before_label_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal1'Class) is null;
   procedure Visit_label_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal1'Class) is abstract;
   procedure After_label_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal1'Class) is null;

   procedure Before_label_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal2'Class) is null;
   procedure Visit_label_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal2'Class) is abstract;
   procedure After_label_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access label_opt_Model.label_opt_nonterminal2'Class) is null;

   procedure Before_iteration_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal1'Class) is null;
   procedure Visit_iteration_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal1'Class) is abstract;
   procedure After_iteration_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal1'Class) is null;

   procedure Before_iteration_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal2'Class) is null;
   procedure Visit_iteration_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal2'Class) is abstract;
   procedure After_iteration_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal2'Class) is null;

   procedure Before_iteration_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal3'Class) is null;
   procedure Visit_iteration_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal3'Class) is abstract;
   procedure After_iteration_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access iteration_Model.iteration_nonterminal3'Class) is null;

   procedure Before_iter_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_part_Model.iter_part_nonterminal'Class) is null;
   procedure Visit_iter_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_part_Model.iter_part_nonterminal'Class) is abstract;
   procedure After_iter_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access iter_part_Model.iter_part_nonterminal'Class) is null;

   procedure Before_reverse_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is null;
   procedure Visit_reverse_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is abstract;
   procedure After_reverse_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is null;

   procedure Before_reverse_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is null;
   procedure Visit_reverse_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is abstract;
   procedure After_reverse_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is null;

   procedure Before_basic_loop_nonterminal(
      I : access Visit_ada95_Interface;
      N : access basic_loop_Model.basic_loop_nonterminal'Class) is null;
   procedure Visit_basic_loop_nonterminal(
      I : access Visit_ada95_Interface;
      N : access basic_loop_Model.basic_loop_nonterminal'Class) is abstract;
   procedure After_basic_loop_nonterminal(
      I : access Visit_ada95_Interface;
      N : access basic_loop_Model.basic_loop_nonterminal'Class) is null;

   procedure Before_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal1'Class) is null;
   procedure Visit_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal1'Class) is abstract;
   procedure After_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal1'Class) is null;

   procedure Before_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal2'Class) is null;
   procedure Visit_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal2'Class) is abstract;
   procedure After_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access id_opt_Model.id_opt_nonterminal2'Class) is null;

   procedure Before_block_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_Model.block_nonterminal'Class) is null;
   procedure Visit_block_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_Model.block_nonterminal'Class) is abstract;
   procedure After_block_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_Model.block_nonterminal'Class) is null;

   procedure Before_block_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal1'Class) is null;
   procedure Visit_block_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal1'Class) is abstract;
   procedure After_block_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal1'Class) is null;

   procedure Before_block_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal2'Class) is null;
   procedure Visit_block_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal2'Class) is abstract;
   procedure After_block_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access block_decl_Model.block_decl_nonterminal2'Class) is null;

   procedure Before_block_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_body_Model.block_body_nonterminal'Class) is null;
   procedure Visit_block_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_body_Model.block_body_nonterminal'Class) is abstract;
   procedure After_block_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access block_body_Model.block_body_nonterminal'Class) is null;

   procedure Before_handled_stmt_s_nonterminal(
      I : access Visit_ada95_Interface;
      N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is null;
   procedure Visit_handled_stmt_s_nonterminal(
      I : access Visit_ada95_Interface;
      N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is abstract;
   procedure After_handled_stmt_s_nonterminal(
      I : access Visit_ada95_Interface;
      N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is null;

   procedure Before_except_handler_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is null;
   procedure Visit_except_handler_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is abstract;
   procedure After_except_handler_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is null;

   procedure Before_except_handler_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is null;
   procedure Visit_except_handler_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is abstract;
   procedure After_except_handler_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is null;

   procedure Before_exit_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is null;
   procedure Visit_exit_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is abstract;
   procedure After_exit_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is null;

   procedure Before_name_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal1'Class) is null;
   procedure Visit_name_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal1'Class) is abstract;
   procedure After_name_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal1'Class) is null;

   procedure Before_name_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal2'Class) is null;
   procedure Visit_name_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal2'Class) is abstract;
   procedure After_name_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_opt_Model.name_opt_nonterminal2'Class) is null;

   procedure Before_when_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal1'Class) is null;
   procedure Visit_when_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal1'Class) is abstract;
   procedure After_when_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal1'Class) is null;

   procedure Before_when_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal2'Class) is null;
   procedure Visit_when_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal2'Class) is abstract;
   procedure After_when_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access when_opt_Model.when_opt_nonterminal2'Class) is null;

   procedure Before_return_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal1'Class) is null;
   procedure Visit_return_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal1'Class) is abstract;
   procedure After_return_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal1'Class) is null;

   procedure Before_return_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal2'Class) is null;
   procedure Visit_return_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal2'Class) is abstract;
   procedure After_return_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access return_stmt_Model.return_stmt_nonterminal2'Class) is null;

   procedure Before_goto_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is null;
   procedure Visit_goto_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is abstract;
   procedure After_goto_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is null;

   procedure Before_subprog_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is null;
   procedure Visit_subprog_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is abstract;
   procedure After_subprog_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is null;

   procedure Before_subprog_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is null;
   procedure Visit_subprog_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is abstract;
   procedure After_subprog_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is null;

   procedure Before_subprog_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is null;
   procedure Visit_subprog_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is abstract;
   procedure After_subprog_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is null;

   procedure Before_subprog_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is null;
   procedure Visit_subprog_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is abstract;
   procedure After_subprog_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is null;

   procedure Before_subprog_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is null;
   procedure Visit_subprog_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is abstract;
   procedure After_subprog_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is null;

   procedure Before_subprog_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is null;
   procedure Visit_subprog_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is abstract;
   procedure After_subprog_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is null;

   procedure Before_designator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal1'Class) is null;
   procedure Visit_designator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal1'Class) is abstract;
   procedure After_designator_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal1'Class) is null;

   procedure Before_designator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal2'Class) is null;
   procedure Visit_designator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal2'Class) is abstract;
   procedure After_designator_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access designator_Model.designator_nonterminal2'Class) is null;

   procedure Before_formal_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is null;
   procedure Visit_formal_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is abstract;
   procedure After_formal_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is null;

   procedure Before_formal_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is null;
   procedure Visit_formal_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is abstract;
   procedure After_formal_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is null;

   procedure Before_formal_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access formal_part_Model.formal_part_nonterminal'Class) is null;
   procedure Visit_formal_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access formal_part_Model.formal_part_nonterminal'Class) is abstract;
   procedure After_formal_part_nonterminal(
      I : access Visit_ada95_Interface;
      N : access formal_part_Model.formal_part_nonterminal'Class) is null;

   procedure Before_param_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal1'Class) is null;
   procedure Visit_param_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal1'Class) is abstract;
   procedure After_param_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal1'Class) is null;

   procedure Before_param_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal2'Class) is null;
   procedure Visit_param_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal2'Class) is abstract;
   procedure After_param_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access param_s_Model.param_s_nonterminal2'Class) is null;

   procedure Before_param_nonterminal(
      I : access Visit_ada95_Interface;
      N : access param_Model.param_nonterminal'Class) is null;
   procedure Visit_param_nonterminal(
      I : access Visit_ada95_Interface;
      N : access param_Model.param_nonterminal'Class) is abstract;
   procedure After_param_nonterminal(
      I : access Visit_ada95_Interface;
      N : access param_Model.param_nonterminal'Class) is null;

   procedure Before_mode_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal1'Class) is null;
   procedure Visit_mode_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal1'Class) is abstract;
   procedure After_mode_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal1'Class) is null;

   procedure Before_mode_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal2'Class) is null;
   procedure Visit_mode_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal2'Class) is abstract;
   procedure After_mode_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal2'Class) is null;

   procedure Before_mode_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal3'Class) is null;
   procedure Visit_mode_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal3'Class) is abstract;
   procedure After_mode_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal3'Class) is null;

   procedure Before_mode_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal4'Class) is null;
   procedure Visit_mode_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal4'Class) is abstract;
   procedure After_mode_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal4'Class) is null;

   procedure Before_mode_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal5'Class) is null;
   procedure Visit_mode_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal5'Class) is abstract;
   procedure After_mode_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access mode_Model.mode_nonterminal5'Class) is null;

   procedure Before_subprog_spec_is_push_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is null;
   procedure Visit_subprog_spec_is_push_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is abstract;
   procedure After_subprog_spec_is_push_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is null;

   procedure Before_subprog_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_body_Model.subprog_body_nonterminal'Class) is null;
   procedure Visit_subprog_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_body_Model.subprog_body_nonterminal'Class) is abstract;
   procedure After_subprog_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subprog_body_Model.subprog_body_nonterminal'Class) is null;

   procedure Before_procedure_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access procedure_call_Model.procedure_call_nonterminal'Class) is null;
   procedure Visit_procedure_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access procedure_call_Model.procedure_call_nonterminal'Class) is abstract;
   procedure After_procedure_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access procedure_call_Model.procedure_call_nonterminal'Class) is null;

   procedure Before_pkg_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is null;
   procedure Visit_pkg_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is abstract;
   procedure After_pkg_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is null;

   procedure Before_pkg_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is null;
   procedure Visit_pkg_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is abstract;
   procedure After_pkg_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is null;

   procedure Before_pkg_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is null;
   procedure Visit_pkg_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is abstract;
   procedure After_pkg_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is null;

   procedure Before_private_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal1'Class) is null;
   procedure Visit_private_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal1'Class) is abstract;
   procedure After_private_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal1'Class) is null;

   procedure Before_private_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal2'Class) is null;
   procedure Visit_private_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal2'Class) is abstract;
   procedure After_private_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_part_Model.private_part_nonterminal2'Class) is null;

   procedure Before_c_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is null;
   procedure Visit_c_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is abstract;
   procedure After_c_id_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is null;

   procedure Before_c_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is null;
   procedure Visit_c_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is abstract;
   procedure After_c_id_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is null;

   procedure Before_pkg_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_body_Model.pkg_body_nonterminal'Class) is null;
   procedure Visit_pkg_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_body_Model.pkg_body_nonterminal'Class) is abstract;
   procedure After_pkg_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access pkg_body_Model.pkg_body_nonterminal'Class) is null;

   procedure Before_body_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal1'Class) is null;
   procedure Visit_body_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal1'Class) is abstract;
   procedure After_body_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal1'Class) is null;

   procedure Before_body_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal2'Class) is null;
   procedure Visit_body_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal2'Class) is abstract;
   procedure After_body_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_opt_Model.body_opt_nonterminal2'Class) is null;

   procedure Before_private_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access private_type_Model.private_type_nonterminal'Class) is null;
   procedure Visit_private_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access private_type_Model.private_type_nonterminal'Class) is abstract;
   procedure After_private_type_nonterminal(
      I : access Visit_ada95_Interface;
      N : access private_type_Model.private_type_nonterminal'Class) is null;

   procedure Before_limited_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal1'Class) is null;
   procedure Visit_limited_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal1'Class) is abstract;
   procedure After_limited_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal1'Class) is null;

   procedure Before_limited_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal2'Class) is null;
   procedure Visit_limited_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal2'Class) is abstract;
   procedure After_limited_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access limited_opt_Model.limited_opt_nonterminal2'Class) is null;

   procedure Before_use_clause_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal1'Class) is null;
   procedure Visit_use_clause_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal1'Class) is abstract;
   procedure After_use_clause_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal1'Class) is null;

   procedure Before_use_clause_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal2'Class) is null;
   procedure Visit_use_clause_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal2'Class) is abstract;
   procedure After_use_clause_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_Model.use_clause_nonterminal2'Class) is null;

   procedure Before_name_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal1'Class) is null;
   procedure Visit_name_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal1'Class) is abstract;
   procedure After_name_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal1'Class) is null;

   procedure Before_name_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal2'Class) is null;
   procedure Visit_name_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal2'Class) is abstract;
   procedure After_name_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access name_s_Model.name_s_nonterminal2'Class) is null;

   procedure Before_rename_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal1'Class) is null;
   procedure Visit_rename_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal1'Class) is abstract;
   procedure After_rename_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal1'Class) is null;

   procedure Before_rename_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal2'Class) is null;
   procedure Visit_rename_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal2'Class) is abstract;
   procedure After_rename_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal2'Class) is null;

   procedure Before_rename_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal3'Class) is null;
   procedure Visit_rename_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal3'Class) is abstract;
   procedure After_rename_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_decl_Model.rename_decl_nonterminal3'Class) is null;

   procedure Before_rename_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal1'Class) is null;
   procedure Visit_rename_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal1'Class) is abstract;
   procedure After_rename_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal1'Class) is null;

   procedure Before_rename_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal2'Class) is null;
   procedure Visit_rename_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal2'Class) is abstract;
   procedure After_rename_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal2'Class) is null;

   procedure Before_rename_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal3'Class) is null;
   procedure Visit_rename_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal3'Class) is abstract;
   procedure After_rename_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal3'Class) is null;

   procedure Before_rename_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal4'Class) is null;
   procedure Visit_rename_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal4'Class) is abstract;
   procedure After_rename_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access rename_unit_Model.rename_unit_nonterminal4'Class) is null;

   procedure Before_renaming_nonterminal(
      I : access Visit_ada95_Interface;
      N : access renaming_Model.renaming_nonterminal'Class) is null;
   procedure Visit_renaming_nonterminal(
      I : access Visit_ada95_Interface;
      N : access renaming_Model.renaming_nonterminal'Class) is abstract;
   procedure After_renaming_nonterminal(
      I : access Visit_ada95_Interface;
      N : access renaming_Model.renaming_nonterminal'Class) is null;

   procedure Before_task_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_decl_Model.task_decl_nonterminal'Class) is null;
   procedure Visit_task_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_decl_Model.task_decl_nonterminal'Class) is abstract;
   procedure After_task_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_decl_Model.task_decl_nonterminal'Class) is null;

   procedure Before_task_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal1'Class) is null;
   procedure Visit_task_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal1'Class) is abstract;
   procedure After_task_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal1'Class) is null;

   procedure Before_task_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal2'Class) is null;
   procedure Visit_task_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal2'Class) is abstract;
   procedure After_task_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_spec_Model.task_spec_nonterminal2'Class) is null;

   procedure Before_task_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal1'Class) is null;
   procedure Visit_task_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal1'Class) is abstract;
   procedure After_task_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal1'Class) is null;

   procedure Before_task_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal2'Class) is null;
   procedure Visit_task_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal2'Class) is abstract;
   procedure After_task_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_def_Model.task_def_nonterminal2'Class) is null;

   procedure Before_task_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is null;
   procedure Visit_task_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is abstract;
   procedure After_task_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is null;

   procedure Before_task_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is null;
   procedure Visit_task_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is abstract;
   procedure After_task_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is null;

   procedure Before_task_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_body_Model.task_body_nonterminal'Class) is null;
   procedure Visit_task_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_body_Model.task_body_nonterminal'Class) is abstract;
   procedure After_task_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access task_body_Model.task_body_nonterminal'Class) is null;

   procedure Before_prot_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_decl_Model.prot_decl_nonterminal'Class) is null;
   procedure Visit_prot_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_decl_Model.prot_decl_nonterminal'Class) is abstract;
   procedure After_prot_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_decl_Model.prot_decl_nonterminal'Class) is null;

   procedure Before_prot_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal1'Class) is null;
   procedure Visit_prot_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal1'Class) is abstract;
   procedure After_prot_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal1'Class) is null;

   procedure Before_prot_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal2'Class) is null;
   procedure Visit_prot_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal2'Class) is abstract;
   procedure After_prot_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_spec_Model.prot_spec_nonterminal2'Class) is null;

   procedure Before_prot_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_def_Model.prot_def_nonterminal'Class) is null;
   procedure Visit_prot_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_def_Model.prot_def_nonterminal'Class) is abstract;
   procedure After_prot_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_def_Model.prot_def_nonterminal'Class) is null;

   procedure Before_prot_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is null;
   procedure Visit_prot_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is abstract;
   procedure After_prot_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is null;

   procedure Before_prot_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is null;
   procedure Visit_prot_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is abstract;
   procedure After_prot_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is null;

   procedure Before_prot_op_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is null;
   procedure Visit_prot_op_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is abstract;
   procedure After_prot_op_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is null;

   procedure Before_prot_op_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is null;
   procedure Visit_prot_op_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is abstract;
   procedure After_prot_op_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is null;

   procedure Before_prot_op_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is null;
   procedure Visit_prot_op_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is abstract;
   procedure After_prot_op_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is null;

   procedure Before_prot_op_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is null;
   procedure Visit_prot_op_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is abstract;
   procedure After_prot_op_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is null;

   procedure Before_prot_op_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is null;
   procedure Visit_prot_op_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is abstract;
   procedure After_prot_op_decl_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is null;

   procedure Before_prot_op_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is null;
   procedure Visit_prot_op_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is abstract;
   procedure After_prot_op_decl_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is null;

   procedure Before_prot_elem_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is null;
   procedure Visit_prot_elem_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is abstract;
   procedure After_prot_elem_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is null;

   procedure Before_prot_elem_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is null;
   procedure Visit_prot_elem_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is abstract;
   procedure After_prot_elem_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is null;

   procedure Before_prot_elem_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is null;
   procedure Visit_prot_elem_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is abstract;
   procedure After_prot_elem_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is null;

   procedure Before_prot_elem_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is null;
   procedure Visit_prot_elem_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is abstract;
   procedure After_prot_elem_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is null;

   procedure Before_prot_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_body_Model.prot_body_nonterminal'Class) is null;
   procedure Visit_prot_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_body_Model.prot_body_nonterminal'Class) is abstract;
   procedure After_prot_body_nonterminal(
      I : access Visit_ada95_Interface;
      N : access prot_body_Model.prot_body_nonterminal'Class) is null;

   procedure Before_prot_op_body_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is null;
   procedure Visit_prot_op_body_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is abstract;
   procedure After_prot_op_body_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is null;

   procedure Before_prot_op_body_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is null;
   procedure Visit_prot_op_body_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is abstract;
   procedure After_prot_op_body_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is null;

   procedure Before_prot_op_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is null;
   procedure Visit_prot_op_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is abstract;
   procedure After_prot_op_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is null;

   procedure Before_prot_op_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is null;
   procedure Visit_prot_op_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is abstract;
   procedure After_prot_op_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is null;

   procedure Before_prot_op_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is null;
   procedure Visit_prot_op_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is abstract;
   procedure After_prot_op_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is null;

   procedure Before_entry_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is null;
   procedure Visit_entry_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is abstract;
   procedure After_entry_decl_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is null;

   procedure Before_entry_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is null;
   procedure Visit_entry_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is abstract;
   procedure After_entry_decl_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is null;

   procedure Before_entry_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal1'Class) is null;
   procedure Visit_entry_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal1'Class) is abstract;
   procedure After_entry_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal1'Class) is null;

   procedure Before_entry_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal2'Class) is null;
   procedure Visit_entry_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal2'Class) is abstract;
   procedure After_entry_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_decl_Model.entry_decl_nonterminal2'Class) is null;

   procedure Before_entry_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal1'Class) is null;
   procedure Visit_entry_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal1'Class) is abstract;
   procedure After_entry_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal1'Class) is null;

   procedure Before_entry_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal2'Class) is null;
   procedure Visit_entry_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal2'Class) is abstract;
   procedure After_entry_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_Model.entry_body_nonterminal2'Class) is null;

   procedure Before_entry_body_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is null;
   procedure Visit_entry_body_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is abstract;
   procedure After_entry_body_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is null;

   procedure Before_entry_body_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is null;
   procedure Visit_entry_body_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is abstract;
   procedure After_entry_body_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is null;

   procedure Before_rep_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is null;
   procedure Visit_rep_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is abstract;
   procedure After_rep_spec_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is null;

   procedure Before_rep_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is null;
   procedure Visit_rep_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is abstract;
   procedure After_rep_spec_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is null;

   procedure Before_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access entry_call_Model.entry_call_nonterminal'Class) is null;
   procedure Visit_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access entry_call_Model.entry_call_nonterminal'Class) is abstract;
   procedure After_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access entry_call_Model.entry_call_nonterminal'Class) is null;

   procedure Before_accept_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is null;
   procedure Visit_accept_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is abstract;
   procedure After_accept_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is null;

   procedure Before_accept_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is null;
   procedure Visit_accept_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is abstract;
   procedure After_accept_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is null;

   procedure Before_accept_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is null;
   procedure Visit_accept_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is abstract;
   procedure After_accept_hdr_nonterminal(
      I : access Visit_ada95_Interface;
      N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is null;

   procedure Before_entry_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal1'Class) is null;
   procedure Visit_entry_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal1'Class) is abstract;
   procedure After_entry_name_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal1'Class) is null;

   procedure Before_entry_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal2'Class) is null;
   procedure Visit_entry_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal2'Class) is abstract;
   procedure After_entry_name_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access entry_name_Model.entry_name_nonterminal2'Class) is null;

   procedure Before_delay_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is null;
   procedure Visit_delay_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is abstract;
   procedure After_delay_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is null;

   procedure Before_delay_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is null;
   procedure Visit_delay_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is abstract;
   procedure After_delay_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is null;

   procedure Before_select_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal1'Class) is null;
   procedure Visit_select_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal1'Class) is abstract;
   procedure After_select_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal1'Class) is null;

   procedure Before_select_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal2'Class) is null;
   procedure Visit_select_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal2'Class) is abstract;
   procedure After_select_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal2'Class) is null;

   procedure Before_select_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal3'Class) is null;
   procedure Visit_select_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal3'Class) is abstract;
   procedure After_select_stmt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal3'Class) is null;

   procedure Before_select_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal4'Class) is null;
   procedure Visit_select_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal4'Class) is abstract;
   procedure After_select_stmt_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access select_stmt_Model.select_stmt_nonterminal4'Class) is null;

   procedure Before_select_wait_nonterminal(
      I : access Visit_ada95_Interface;
      N : access select_wait_Model.select_wait_nonterminal'Class) is null;
   procedure Visit_select_wait_nonterminal(
      I : access Visit_ada95_Interface;
      N : access select_wait_Model.select_wait_nonterminal'Class) is abstract;
   procedure After_select_wait_nonterminal(
      I : access Visit_ada95_Interface;
      N : access select_wait_Model.select_wait_nonterminal'Class) is null;

   procedure Before_guarded_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is null;
   procedure Visit_guarded_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is abstract;
   procedure After_guarded_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is null;

   procedure Before_guarded_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is null;
   procedure Visit_guarded_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is abstract;
   procedure After_guarded_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is null;

   procedure Before_or_select_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal1'Class) is null;
   procedure Visit_or_select_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal1'Class) is abstract;
   procedure After_or_select_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal1'Class) is null;

   procedure Before_or_select_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal2'Class) is null;
   procedure Visit_or_select_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal2'Class) is abstract;
   procedure After_or_select_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access or_select_Model.or_select_nonterminal2'Class) is null;

   procedure Before_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal1'Class) is null;
   procedure Visit_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal1'Class) is abstract;
   procedure After_select_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal1'Class) is null;

   procedure Before_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal2'Class) is null;
   procedure Visit_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal2'Class) is abstract;
   procedure After_select_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal2'Class) is null;

   procedure Before_select_alt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal3'Class) is null;
   procedure Visit_select_alt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal3'Class) is abstract;
   procedure After_select_alt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access select_alt_Model.select_alt_nonterminal3'Class) is null;

   procedure Before_delay_or_entry_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is null;
   procedure Visit_delay_or_entry_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is abstract;
   procedure After_delay_or_entry_alt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is null;

   procedure Before_delay_or_entry_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is null;
   procedure Visit_delay_or_entry_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is abstract;
   procedure After_delay_or_entry_alt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is null;

   procedure Before_async_select_nonterminal(
      I : access Visit_ada95_Interface;
      N : access async_select_Model.async_select_nonterminal'Class) is null;
   procedure Visit_async_select_nonterminal(
      I : access Visit_ada95_Interface;
      N : access async_select_Model.async_select_nonterminal'Class) is abstract;
   procedure After_async_select_nonterminal(
      I : access Visit_ada95_Interface;
      N : access async_select_Model.async_select_nonterminal'Class) is null;

   procedure Before_timed_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is null;
   procedure Visit_timed_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is abstract;
   procedure After_timed_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is null;

   procedure Before_cond_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is null;
   procedure Visit_cond_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is abstract;
   procedure After_cond_entry_call_nonterminal(
      I : access Visit_ada95_Interface;
      N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is null;

   procedure Before_stmts_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is null;
   procedure Visit_stmts_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is abstract;
   procedure After_stmts_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is null;

   procedure Before_stmts_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is null;
   procedure Visit_stmts_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is abstract;
   procedure After_stmts_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is null;

   procedure Before_abort_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is null;
   procedure Visit_abort_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is abstract;
   procedure After_abort_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is null;

   procedure Before_compilation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal1'Class) is null;
   procedure Visit_compilation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal1'Class) is abstract;
   procedure After_compilation_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal1'Class) is null;

   procedure Before_compilation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal2'Class) is null;
   procedure Visit_compilation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal2'Class) is abstract;
   procedure After_compilation_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal2'Class) is null;

   procedure Before_compilation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal3'Class) is null;
   procedure Visit_compilation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal3'Class) is abstract;
   procedure After_compilation_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access compilation_Model.compilation_nonterminal3'Class) is null;

   procedure Before_comp_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal1'Class) is null;
   procedure Visit_comp_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal1'Class) is abstract;
   procedure After_comp_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal1'Class) is null;

   procedure Before_comp_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal2'Class) is null;
   procedure Visit_comp_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal2'Class) is abstract;
   procedure After_comp_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_unit_Model.comp_unit_nonterminal2'Class) is null;

   procedure Before_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal1'Class) is null;
   procedure Visit_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal1'Class) is abstract;
   procedure After_private_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal1'Class) is null;

   procedure Before_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal2'Class) is null;
   procedure Visit_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal2'Class) is abstract;
   procedure After_private_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access private_opt_Model.private_opt_nonterminal2'Class) is null;

   procedure Before_context_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal1'Class) is null;
   procedure Visit_context_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal1'Class) is abstract;
   procedure After_context_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal1'Class) is null;

   procedure Before_context_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal2'Class) is null;
   procedure Visit_context_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal2'Class) is abstract;
   procedure After_context_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal2'Class) is null;

   procedure Before_context_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal3'Class) is null;
   procedure Visit_context_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal3'Class) is abstract;
   procedure After_context_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access context_spec_Model.context_spec_nonterminal3'Class) is null;

   procedure Before_with_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access with_clause_Model.with_clause_nonterminal'Class) is null;
   procedure Visit_with_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access with_clause_Model.with_clause_nonterminal'Class) is abstract;
   procedure After_with_clause_nonterminal(
      I : access Visit_ada95_Interface;
      N : access with_clause_Model.with_clause_nonterminal'Class) is null;

   procedure Before_use_clause_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is null;
   procedure Visit_use_clause_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is abstract;
   procedure After_use_clause_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is null;

   procedure Before_use_clause_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is null;
   procedure Visit_use_clause_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is abstract;
   procedure After_use_clause_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is null;

   procedure Before_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal1'Class) is null;
   procedure Visit_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal1'Class) is abstract;
   procedure After_unit_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal1'Class) is null;

   procedure Before_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal2'Class) is null;
   procedure Visit_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal2'Class) is abstract;
   procedure After_unit_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal2'Class) is null;

   procedure Before_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal3'Class) is null;
   procedure Visit_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal3'Class) is abstract;
   procedure After_unit_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal3'Class) is null;

   procedure Before_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal4'Class) is null;
   procedure Visit_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal4'Class) is abstract;
   procedure After_unit_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal4'Class) is null;

   procedure Before_unit_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal5'Class) is null;
   procedure Visit_unit_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal5'Class) is abstract;
   procedure After_unit_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal5'Class) is null;

   procedure Before_unit_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal6'Class) is null;
   procedure Visit_unit_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal6'Class) is abstract;
   procedure After_unit_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal6'Class) is null;

   procedure Before_unit_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal7'Class) is null;
   procedure Visit_unit_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal7'Class) is abstract;
   procedure After_unit_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access unit_Model.unit_nonterminal7'Class) is null;

   procedure Before_subunit_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subunit_Model.subunit_nonterminal'Class) is null;
   procedure Visit_subunit_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subunit_Model.subunit_nonterminal'Class) is abstract;
   procedure After_subunit_nonterminal(
      I : access Visit_ada95_Interface;
      N : access subunit_Model.subunit_nonterminal'Class) is null;

   procedure Before_subunit_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal1'Class) is null;
   procedure Visit_subunit_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal1'Class) is abstract;
   procedure After_subunit_body_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal1'Class) is null;

   procedure Before_subunit_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal2'Class) is null;
   procedure Visit_subunit_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal2'Class) is abstract;
   procedure After_subunit_body_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal2'Class) is null;

   procedure Before_subunit_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal3'Class) is null;
   procedure Visit_subunit_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal3'Class) is abstract;
   procedure After_subunit_body_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal3'Class) is null;

   procedure Before_subunit_body_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal4'Class) is null;
   procedure Visit_subunit_body_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal4'Class) is abstract;
   procedure After_subunit_body_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access subunit_body_Model.subunit_body_nonterminal4'Class) is null;

   procedure Before_body_stub_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal1'Class) is null;
   procedure Visit_body_stub_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal1'Class) is abstract;
   procedure After_body_stub_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal1'Class) is null;

   procedure Before_body_stub_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal2'Class) is null;
   procedure Visit_body_stub_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal2'Class) is abstract;
   procedure After_body_stub_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal2'Class) is null;

   procedure Before_body_stub_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal3'Class) is null;
   procedure Visit_body_stub_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal3'Class) is abstract;
   procedure After_body_stub_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal3'Class) is null;

   procedure Before_body_stub_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal4'Class) is null;
   procedure Visit_body_stub_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal4'Class) is abstract;
   procedure After_body_stub_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access body_stub_Model.body_stub_nonterminal4'Class) is null;

   procedure Before_exception_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exception_decl_Model.exception_decl_nonterminal'Class) is null;
   procedure Visit_exception_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exception_decl_Model.exception_decl_nonterminal'Class) is abstract;
   procedure After_exception_decl_nonterminal(
      I : access Visit_ada95_Interface;
      N : access exception_decl_Model.exception_decl_nonterminal'Class) is null;

   procedure Before_except_handler_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is null;
   procedure Visit_except_handler_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is abstract;
   procedure After_except_handler_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is null;

   procedure Before_except_handler_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is null;
   procedure Visit_except_handler_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is abstract;
   procedure After_except_handler_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is null;

   procedure Before_exception_handler_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal1'Class) is null;
   procedure Visit_exception_handler_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal1'Class) is abstract;
   procedure After_exception_handler_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal1'Class) is null;

   procedure Before_exception_handler_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal2'Class) is null;
   procedure Visit_exception_handler_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal2'Class) is abstract;
   procedure After_exception_handler_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access exception_handler_Model.exception_handler_nonterminal2'Class) is null;

   procedure Before_except_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is null;
   procedure Visit_except_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is abstract;
   procedure After_except_choice_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is null;

   procedure Before_except_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is null;
   procedure Visit_except_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is abstract;
   procedure After_except_choice_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is null;

   procedure Before_except_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal1'Class) is null;
   procedure Visit_except_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal1'Class) is abstract;
   procedure After_except_choice_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal1'Class) is null;

   procedure Before_except_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal2'Class) is null;
   procedure Visit_except_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal2'Class) is abstract;
   procedure After_except_choice_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access except_choice_Model.except_choice_nonterminal2'Class) is null;

   procedure Before_raise_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is null;
   procedure Visit_raise_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is abstract;
   procedure After_raise_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is null;

   procedure Before_requeue_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is null;
   procedure Visit_requeue_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is abstract;
   procedure After_requeue_stmt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is null;

   procedure Before_requeue_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is null;
   procedure Visit_requeue_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is abstract;
   procedure After_requeue_stmt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is null;

   procedure Before_generic_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal1'Class) is null;
   procedure Visit_generic_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal1'Class) is abstract;
   procedure After_generic_decl_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal1'Class) is null;

   procedure Before_generic_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal2'Class) is null;
   procedure Visit_generic_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal2'Class) is abstract;
   procedure After_generic_decl_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_decl_Model.generic_decl_nonterminal2'Class) is null;

   procedure Before_generic_formal_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is null;
   procedure Visit_generic_formal_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is abstract;
   procedure After_generic_formal_part_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is null;

   procedure Before_generic_formal_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is null;
   procedure Visit_generic_formal_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is abstract;
   procedure After_generic_formal_part_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is null;

   procedure Before_generic_formal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal1'Class) is null;
   procedure Visit_generic_formal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal1'Class) is abstract;
   procedure After_generic_formal_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal1'Class) is null;

   procedure Before_generic_formal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal2'Class) is null;
   procedure Visit_generic_formal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal2'Class) is abstract;
   procedure After_generic_formal_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal2'Class) is null;

   procedure Before_generic_formal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal3'Class) is null;
   procedure Visit_generic_formal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal3'Class) is abstract;
   procedure After_generic_formal_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal3'Class) is null;

   procedure Before_generic_formal_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal4'Class) is null;
   procedure Visit_generic_formal_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal4'Class) is abstract;
   procedure After_generic_formal_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal4'Class) is null;

   procedure Before_generic_formal_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal5'Class) is null;
   procedure Visit_generic_formal_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal5'Class) is abstract;
   procedure After_generic_formal_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal5'Class) is null;

   procedure Before_generic_formal_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal6'Class) is null;
   procedure Visit_generic_formal_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal6'Class) is abstract;
   procedure After_generic_formal_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal6'Class) is null;

   procedure Before_generic_formal_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal7'Class) is null;
   procedure Visit_generic_formal_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal7'Class) is abstract;
   procedure After_generic_formal_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_formal_Model.generic_formal_nonterminal7'Class) is null;

   procedure Before_generic_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is null;
   procedure Visit_generic_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is abstract;
   procedure After_generic_discrim_part_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is null;

   procedure Before_generic_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is null;
   procedure Visit_generic_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is abstract;
   procedure After_generic_discrim_part_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is null;

   procedure Before_generic_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is null;
   procedure Visit_generic_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is abstract;
   procedure After_generic_discrim_part_opt_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is null;

   procedure Before_subp_default_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal1'Class) is null;
   procedure Visit_subp_default_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal1'Class) is abstract;
   procedure After_subp_default_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal1'Class) is null;

   procedure Before_subp_default_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal2'Class) is null;
   procedure Visit_subp_default_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal2'Class) is abstract;
   procedure After_subp_default_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal2'Class) is null;

   procedure Before_subp_default_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal3'Class) is null;
   procedure Visit_subp_default_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal3'Class) is abstract;
   procedure After_subp_default_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access subp_default_Model.subp_default_nonterminal3'Class) is null;

   procedure Before_generic_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is null;
   procedure Visit_generic_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is abstract;
   procedure After_generic_type_def_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is null;

   procedure Before_generic_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is null;
   procedure Visit_generic_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is abstract;
   procedure After_generic_type_def_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is null;

   procedure Before_generic_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is null;
   procedure Visit_generic_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is abstract;
   procedure After_generic_type_def_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is null;

   procedure Before_generic_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is null;
   procedure Visit_generic_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is abstract;
   procedure After_generic_type_def_nonterminal4(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is null;

   procedure Before_generic_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is null;
   procedure Visit_generic_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is abstract;
   procedure After_generic_type_def_nonterminal5(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is null;

   procedure Before_generic_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is null;
   procedure Visit_generic_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is abstract;
   procedure After_generic_type_def_nonterminal6(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is null;

   procedure Before_generic_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is null;
   procedure Visit_generic_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is abstract;
   procedure After_generic_type_def_nonterminal7(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is null;

   procedure Before_generic_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is null;
   procedure Visit_generic_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is abstract;
   procedure After_generic_type_def_nonterminal8(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is null;

   procedure Before_generic_type_def_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is null;
   procedure Visit_generic_type_def_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is abstract;
   procedure After_generic_type_def_nonterminal9(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is null;

   procedure Before_generic_type_def_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is null;
   procedure Visit_generic_type_def_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is abstract;
   procedure After_generic_type_def_nonterminal10(
      I : access Visit_ada95_Interface;
      N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is null;

   procedure Before_generic_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is null;
   procedure Visit_generic_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is abstract;
   procedure After_generic_derived_type_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is null;

   procedure Before_generic_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is null;
   procedure Visit_generic_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is abstract;
   procedure After_generic_derived_type_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is null;

   procedure Before_generic_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is null;
   procedure Visit_generic_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is abstract;
   procedure After_generic_derived_type_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is null;

   procedure Before_generic_subp_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is null;
   procedure Visit_generic_subp_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is abstract;
   procedure After_generic_subp_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is null;

   procedure Before_generic_pkg_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is null;
   procedure Visit_generic_pkg_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is abstract;
   procedure After_generic_pkg_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is null;

   procedure Before_generic_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_inst_Model.generic_inst_nonterminal'Class) is null;
   procedure Visit_generic_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_inst_Model.generic_inst_nonterminal'Class) is abstract;
   procedure After_generic_inst_nonterminal(
      I : access Visit_ada95_Interface;
      N : access generic_inst_Model.generic_inst_nonterminal'Class) is null;

   procedure Before_rep_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal1'Class) is null;
   procedure Visit_rep_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal1'Class) is abstract;
   procedure After_rep_spec_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal1'Class) is null;

   procedure Before_rep_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal2'Class) is null;
   procedure Visit_rep_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal2'Class) is abstract;
   procedure After_rep_spec_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal2'Class) is null;

   procedure Before_rep_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal3'Class) is null;
   procedure Visit_rep_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal3'Class) is abstract;
   procedure After_rep_spec_nonterminal3(
      I : access Visit_ada95_Interface;
      N : access rep_spec_Model.rep_spec_nonterminal3'Class) is null;

   procedure Before_attrib_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attrib_def_Model.attrib_def_nonterminal'Class) is null;
   procedure Visit_attrib_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attrib_def_Model.attrib_def_nonterminal'Class) is abstract;
   procedure After_attrib_def_nonterminal(
      I : access Visit_ada95_Interface;
      N : access attrib_def_Model.attrib_def_nonterminal'Class) is null;

   procedure Before_record_type_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is null;
   procedure Visit_record_type_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is abstract;
   procedure After_record_type_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is null;

   procedure Before_align_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal1'Class) is null;
   procedure Visit_align_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal1'Class) is abstract;
   procedure After_align_opt_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal1'Class) is null;

   procedure Before_align_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal2'Class) is null;
   procedure Visit_align_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal2'Class) is abstract;
   procedure After_align_opt_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access align_opt_Model.align_opt_nonterminal2'Class) is null;

   procedure Before_comp_loc_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is null;
   procedure Visit_comp_loc_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is abstract;
   procedure After_comp_loc_s_nonterminal1(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is null;

   procedure Before_comp_loc_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is null;
   procedure Visit_comp_loc_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is abstract;
   procedure After_comp_loc_s_nonterminal2(
      I : access Visit_ada95_Interface;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is null;

   procedure Before_address_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access address_spec_Model.address_spec_nonterminal'Class) is null;
   procedure Visit_address_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access address_spec_Model.address_spec_nonterminal'Class) is abstract;
   procedure After_address_spec_nonterminal(
      I : access Visit_ada95_Interface;
      N : access address_spec_Model.address_spec_nonterminal'Class) is null;

   procedure Before_code_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access code_stmt_Model.code_stmt_nonterminal'Class) is null;
   procedure Visit_code_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access code_stmt_Model.code_stmt_nonterminal'Class) is abstract;
   procedure After_code_stmt_nonterminal(
      I : access Visit_ada95_Interface;
      N : access code_stmt_Model.code_stmt_nonterminal'Class) is null;

end ada95_Visitor_Interface;
