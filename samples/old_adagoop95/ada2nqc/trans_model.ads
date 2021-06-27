-- Automatically generated AdaGOOP output
-- (by Martin C. Carlisle)
-- If you modify, be careful about losing your work!
with trans;
with lego_builtins;
with ada.strings.unbounded; use ada.strings.unbounded;

package trans_Model is

   type Decl_Search_Result_Type is (Not_Found_In_Decls, Found_In_Decls, Added_To_Decls, Decls_Are_Empty);   --BSF
   
   type String_Ptr is access all String;

   type Parseable is abstract tagged null record;
   procedure Translate(This : in out Parseable) is abstract;
   type Parseable_Ptr is access all Parseable'Class;
   type Parseable_Token is new Parseable with record
      Line         : Natural;
      Column       : Natural;
      Token_String : String_Ptr;
      Token_Type   : trans.Token;
   end record;
   procedure Check_For_Supported_Package(This : in Parseable_Token);
   procedure Get_LC(This : in Parseable_Token; Line, Column : out integer);
   procedure Set_Input_Filename(Name : in Unbounded_String);
   procedure Translate(This : in out Parseable_Token);
   type Parseable_Token_Ptr is access all Parseable_Token'Class;
   
   Parse_Error_Exception : exception;   --raised if there's a translation error, handled in main program
   
   type code_stmt_nonterminal;
   type code_stmt_nonterminal_ptr is access all code_stmt_nonterminal'Class;
   type address_spec_nonterminal;
   type address_spec_nonterminal_ptr is access all address_spec_nonterminal'Class;
   type comp_loc_s_nonterminal;
   type comp_loc_s_nonterminal_ptr is access all comp_loc_s_nonterminal'Class;
   type align_opt_nonterminal;
   type align_opt_nonterminal_ptr is access all align_opt_nonterminal'Class;
   type record_type_spec_nonterminal;
   type record_type_spec_nonterminal_ptr is access all record_type_spec_nonterminal'Class;
   type attrib_def_nonterminal;
   type attrib_def_nonterminal_ptr is access all attrib_def_nonterminal'Class;
   type rep_spec_nonterminal;
   type rep_spec_nonterminal_ptr is access all rep_spec_nonterminal'Class;
   type generic_inst_nonterminal;
   type generic_inst_nonterminal_ptr is access all generic_inst_nonterminal'Class;
   type generic_pkg_inst_nonterminal;
   type generic_pkg_inst_nonterminal_ptr is access all generic_pkg_inst_nonterminal'Class;
   type generic_subp_inst_nonterminal;
   type generic_subp_inst_nonterminal_ptr is access all generic_subp_inst_nonterminal'Class;
   type generic_derived_type_nonterminal;
   type generic_derived_type_nonterminal_ptr is access all generic_derived_type_nonterminal'Class;
   type generic_type_def_nonterminal;
   type generic_type_def_nonterminal_ptr is access all generic_type_def_nonterminal'Class;
   type subp_default_nonterminal;
   type subp_default_nonterminal_ptr is access all subp_default_nonterminal'Class;
   type generic_discrim_part_opt_nonterminal;
   type generic_discrim_part_opt_nonterminal_ptr is access all generic_discrim_part_opt_nonterminal'Class;
   type generic_formal_nonterminal;
   type generic_formal_nonterminal_ptr is access all generic_formal_nonterminal'Class;
   type generic_formal_part_nonterminal;
   type generic_formal_part_nonterminal_ptr is access all generic_formal_part_nonterminal'Class;
   type generic_decl_nonterminal;
   type generic_decl_nonterminal_ptr is access all generic_decl_nonterminal'Class;
   type requeue_stmt_nonterminal;
   type requeue_stmt_nonterminal_ptr is access all requeue_stmt_nonterminal'Class;
   type raise_stmt_nonterminal;
   type raise_stmt_nonterminal_ptr is access all raise_stmt_nonterminal'Class;
   type except_choice_nonterminal;
   type except_choice_nonterminal_ptr is access all except_choice_nonterminal'Class;
   type except_choice_s_nonterminal;
   type except_choice_s_nonterminal_ptr is access all except_choice_s_nonterminal'Class;
   type exception_handler_nonterminal;
   type exception_handler_nonterminal_ptr is access all exception_handler_nonterminal'Class;
   type except_handler_part_nonterminal;
   type except_handler_part_nonterminal_ptr is access all except_handler_part_nonterminal'Class;
   type exception_decl_nonterminal;
   type exception_decl_nonterminal_ptr is access all exception_decl_nonterminal'Class;
   type body_stub_nonterminal;
   type body_stub_nonterminal_ptr is access all body_stub_nonterminal'Class;
   type subunit_body_nonterminal;
   type subunit_body_nonterminal_ptr is access all subunit_body_nonterminal'Class;
   type subunit_nonterminal;
   type subunit_nonterminal_ptr is access all subunit_nonterminal'Class;
   type unit_nonterminal;
   type unit_nonterminal_ptr is access all unit_nonterminal'Class;
   type use_clause_opt_nonterminal;
   type use_clause_opt_nonterminal_ptr is access all use_clause_opt_nonterminal'Class;
   type with_clause_nonterminal;
   type with_clause_nonterminal_ptr is access all with_clause_nonterminal'Class;
   type context_spec_nonterminal;
   type context_spec_nonterminal_ptr is access all context_spec_nonterminal'Class;
   type private_opt_nonterminal;
   type private_opt_nonterminal_ptr is access all private_opt_nonterminal'Class;
   type comp_unit_nonterminal;
   type comp_unit_nonterminal_ptr is access all comp_unit_nonterminal'Class;
   type compilation_nonterminal;
   type compilation_nonterminal_ptr is access all compilation_nonterminal'Class;
   type abort_stmt_nonterminal;
   type abort_stmt_nonterminal_ptr is access all abort_stmt_nonterminal'Class;
   type stmts_opt_nonterminal;
   type stmts_opt_nonterminal_ptr is access all stmts_opt_nonterminal'Class;
   type cond_entry_call_nonterminal;
   type cond_entry_call_nonterminal_ptr is access all cond_entry_call_nonterminal'Class;
   type timed_entry_call_nonterminal;
   type timed_entry_call_nonterminal_ptr is access all timed_entry_call_nonterminal'Class;
   type async_select_nonterminal;
   type async_select_nonterminal_ptr is access all async_select_nonterminal'Class;
   type delay_or_entry_alt_nonterminal;
   type delay_or_entry_alt_nonterminal_ptr is access all delay_or_entry_alt_nonterminal'Class;
   type select_alt_nonterminal;
   type select_alt_nonterminal_ptr is access all select_alt_nonterminal'Class;
   type or_select_nonterminal;
   type or_select_nonterminal_ptr is access all or_select_nonterminal'Class;
   type guarded_select_alt_nonterminal;
   type guarded_select_alt_nonterminal_ptr is access all guarded_select_alt_nonterminal'Class;
   type select_wait_nonterminal;
   type select_wait_nonterminal_ptr is access all select_wait_nonterminal'Class;
   type select_stmt_nonterminal;
   type select_stmt_nonterminal_ptr is access all select_stmt_nonterminal'Class;
   type delay_stmt_nonterminal;
   type delay_stmt_nonterminal_ptr is access all delay_stmt_nonterminal'Class;
   type entry_name_nonterminal;
   type entry_name_nonterminal_ptr is access all entry_name_nonterminal'Class;
   type accept_hdr_nonterminal;
   type accept_hdr_nonterminal_ptr is access all accept_hdr_nonterminal'Class;
   type accept_stmt_nonterminal;
   type accept_stmt_nonterminal_ptr is access all accept_stmt_nonterminal'Class;
   type entry_call_nonterminal;
   type entry_call_nonterminal_ptr is access all entry_call_nonterminal'Class;
   type rep_spec_s_nonterminal;
   type rep_spec_s_nonterminal_ptr is access all rep_spec_s_nonterminal'Class;
   type entry_body_part_nonterminal;
   type entry_body_part_nonterminal_ptr is access all entry_body_part_nonterminal'Class;
   type entry_body_nonterminal;
   type entry_body_nonterminal_ptr is access all entry_body_nonterminal'Class;
   type entry_decl_nonterminal;
   type entry_decl_nonterminal_ptr is access all entry_decl_nonterminal'Class;
   type entry_decl_s_nonterminal;
   type entry_decl_s_nonterminal_ptr is access all entry_decl_s_nonterminal'Class;
   type prot_op_body_nonterminal;
   type prot_op_body_nonterminal_ptr is access all prot_op_body_nonterminal'Class;
   type prot_op_body_s_nonterminal;
   type prot_op_body_s_nonterminal_ptr is access all prot_op_body_s_nonterminal'Class;
   type prot_body_nonterminal;
   type prot_body_nonterminal_ptr is access all prot_body_nonterminal'Class;
   type prot_elem_decl_nonterminal;
   type prot_elem_decl_nonterminal_ptr is access all prot_elem_decl_nonterminal'Class;
   type prot_elem_decl_s_nonterminal;
   type prot_elem_decl_s_nonterminal_ptr is access all prot_elem_decl_s_nonterminal'Class;
   type prot_op_decl_nonterminal;
   type prot_op_decl_nonterminal_ptr is access all prot_op_decl_nonterminal'Class;
   type prot_op_decl_s_nonterminal;
   type prot_op_decl_s_nonterminal_ptr is access all prot_op_decl_s_nonterminal'Class;
   type prot_private_opt_nonterminal;
   type prot_private_opt_nonterminal_ptr is access all prot_private_opt_nonterminal'Class;
   type prot_def_nonterminal;
   type prot_def_nonterminal_ptr is access all prot_def_nonterminal'Class;
   type prot_spec_nonterminal;
   type prot_spec_nonterminal_ptr is access all prot_spec_nonterminal'Class;
   type prot_decl_nonterminal;
   type prot_decl_nonterminal_ptr is access all prot_decl_nonterminal'Class;
   type task_body_nonterminal;
   type task_body_nonterminal_ptr is access all task_body_nonterminal'Class;
   type task_private_opt_nonterminal;
   type task_private_opt_nonterminal_ptr is access all task_private_opt_nonterminal'Class;
   type task_def_nonterminal;
   type task_def_nonterminal_ptr is access all task_def_nonterminal'Class;
   type task_spec_nonterminal;
   type task_spec_nonterminal_ptr is access all task_spec_nonterminal'Class;
   type task_decl_nonterminal;
   type task_decl_nonterminal_ptr is access all task_decl_nonterminal'Class;
   type renaming_nonterminal;
   type renaming_nonterminal_ptr is access all renaming_nonterminal'Class;
   type rename_unit_nonterminal;
   type rename_unit_nonterminal_ptr is access all rename_unit_nonterminal'Class;
   type rename_decl_nonterminal;
   type rename_decl_nonterminal_ptr is access all rename_decl_nonterminal'Class;
   type name_s_nonterminal;
   type name_s_nonterminal_ptr is access all name_s_nonterminal'Class;
   type use_clause_nonterminal;
   type use_clause_nonterminal_ptr is access all use_clause_nonterminal'Class;
   type limited_opt_nonterminal;
   type limited_opt_nonterminal_ptr is access all limited_opt_nonterminal'Class;
   type private_type_nonterminal;
   type private_type_nonterminal_ptr is access all private_type_nonterminal'Class;
   type body_opt_nonterminal;
   type body_opt_nonterminal_ptr is access all body_opt_nonterminal'Class;
   type pkg_body_nonterminal;
   type pkg_body_nonterminal_ptr is access all pkg_body_nonterminal'Class;
   type c_id_opt_nonterminal;
   type c_id_opt_nonterminal_ptr is access all c_id_opt_nonterminal'Class;
   type private_part_nonterminal;
   type private_part_nonterminal_ptr is access all private_part_nonterminal'Class;
   type pkg_spec_nonterminal;
   type pkg_spec_nonterminal_ptr is access all pkg_spec_nonterminal'Class;
   type pkg_decl_nonterminal;
   type pkg_decl_nonterminal_ptr is access all pkg_decl_nonterminal'Class;
   type procedure_call_nonterminal;
   type procedure_call_nonterminal_ptr is access all procedure_call_nonterminal'Class;
   type subprog_body_nonterminal;
   type subprog_body_nonterminal_ptr is access all subprog_body_nonterminal'Class;
   type subprog_spec_is_push_nonterminal;
   type subprog_spec_is_push_nonterminal_ptr is access all subprog_spec_is_push_nonterminal'Class;
   type mode_nonterminal;
   type mode_nonterminal_ptr is access all mode_nonterminal'Class;
   type param_nonterminal;
   type param_nonterminal_ptr is access all param_nonterminal'Class;
   type param_s_nonterminal;
   type param_s_nonterminal_ptr is access all param_s_nonterminal'Class;
   type formal_part_nonterminal;
   type formal_part_nonterminal_ptr is access all formal_part_nonterminal'Class;
   type formal_part_opt_nonterminal;
   type formal_part_opt_nonterminal_ptr is access all formal_part_opt_nonterminal'Class;
   type designator_nonterminal;
   type designator_nonterminal_ptr is access all designator_nonterminal'Class;
   type subprog_spec_nonterminal;
   type subprog_spec_nonterminal_ptr is access all subprog_spec_nonterminal'Class;
   type subprog_decl_nonterminal;
   type subprog_decl_nonterminal_ptr is access all subprog_decl_nonterminal'Class;
   type goto_stmt_nonterminal;
   type goto_stmt_nonterminal_ptr is access all goto_stmt_nonterminal'Class;
   type return_stmt_nonterminal;
   type return_stmt_nonterminal_ptr is access all return_stmt_nonterminal'Class;
   type when_opt_nonterminal;
   type when_opt_nonterminal_ptr is access all when_opt_nonterminal'Class;
   type name_opt_nonterminal;
   type name_opt_nonterminal_ptr is access all name_opt_nonterminal'Class;
   type exit_stmt_nonterminal;
   type exit_stmt_nonterminal_ptr is access all exit_stmt_nonterminal'Class;
   type except_handler_part_opt_nonterminal;
   type except_handler_part_opt_nonterminal_ptr is access all except_handler_part_opt_nonterminal'Class;
   type handled_stmt_s_nonterminal;
   type handled_stmt_s_nonterminal_ptr is access all handled_stmt_s_nonterminal'Class;
   type block_body_nonterminal;
   type block_body_nonterminal_ptr is access all block_body_nonterminal'Class;
   type block_decl_nonterminal;
   type block_decl_nonterminal_ptr is access all block_decl_nonterminal'Class;
   type block_nonterminal;
   type block_nonterminal_ptr is access all block_nonterminal'Class;
   type id_opt_nonterminal;
   type id_opt_nonterminal_ptr is access all id_opt_nonterminal'Class;
   type basic_loop_nonterminal;
   type basic_loop_nonterminal_ptr is access all basic_loop_nonterminal'Class;
   type reverse_opt_nonterminal;
   type reverse_opt_nonterminal_ptr is access all reverse_opt_nonterminal'Class;
   type iter_part_nonterminal;
   type iter_part_nonterminal_ptr is access all iter_part_nonterminal'Class;
   type iteration_nonterminal;
   type iteration_nonterminal_ptr is access all iteration_nonterminal'Class;
   type label_opt_nonterminal;
   type label_opt_nonterminal_ptr is access all label_opt_nonterminal'Class;
   type loop_stmt_nonterminal;
   type loop_stmt_nonterminal_ptr is access all loop_stmt_nonterminal'Class;
   type alternative_nonterminal;
   type alternative_nonterminal_ptr is access all alternative_nonterminal'Class;
   type alternative_s_nonterminal;
   type alternative_s_nonterminal_ptr is access all alternative_s_nonterminal'Class;
   type case_hdr_nonterminal;
   type case_hdr_nonterminal_ptr is access all case_hdr_nonterminal'Class;
   type case_stmt_nonterminal;
   type case_stmt_nonterminal_ptr is access all case_stmt_nonterminal'Class;
   type else_opt_nonterminal;
   type else_opt_nonterminal_ptr is access all else_opt_nonterminal'Class;
   type condition_nonterminal;
   type condition_nonterminal_ptr is access all condition_nonterminal'Class;
   type cond_part_nonterminal;
   type cond_part_nonterminal_ptr is access all cond_part_nonterminal'Class;
   type cond_clause_nonterminal;
   type cond_clause_nonterminal_ptr is access all cond_clause_nonterminal'Class;
   type cond_clause_s_nonterminal;
   type cond_clause_s_nonterminal_ptr is access all cond_clause_s_nonterminal'Class;
   type if_stmt_nonterminal;
   type if_stmt_nonterminal_ptr is access all if_stmt_nonterminal'Class;
   type assign_stmt_nonterminal;
   type assign_stmt_nonterminal_ptr is access all assign_stmt_nonterminal'Class;
   type null_stmt_nonterminal;
   type null_stmt_nonterminal_ptr is access all null_stmt_nonterminal'Class;
   type label_nonterminal;
   type label_nonterminal_ptr is access all label_nonterminal'Class;
   type compound_stmt_nonterminal;
   type compound_stmt_nonterminal_ptr is access all compound_stmt_nonterminal'Class;
   type simple_stmt_nonterminal;
   type simple_stmt_nonterminal_ptr is access all simple_stmt_nonterminal'Class;
   type unlabeled_nonterminal;
   type unlabeled_nonterminal_ptr is access all unlabeled_nonterminal'Class;
   type statement_nonterminal;
   type statement_nonterminal_ptr is access all statement_nonterminal'Class;
   type statement_s_nonterminal;
   type statement_s_nonterminal_ptr is access all statement_s_nonterminal'Class;
   type allocator_nonterminal;
   type allocator_nonterminal_ptr is access all allocator_nonterminal'Class;
   type qualified_nonterminal;
   type qualified_nonterminal_ptr is access all qualified_nonterminal'Class;
   type parenthesized_primary_nonterminal;
   type parenthesized_primary_nonterminal_ptr is access all parenthesized_primary_nonterminal'Class;
   type primary_nonterminal;
   type primary_nonterminal_ptr is access all primary_nonterminal'Class;
   type factor_nonterminal;
   type factor_nonterminal_ptr is access all factor_nonterminal'Class;
   type multiplying_nonterminal;
   type multiplying_nonterminal_ptr is access all multiplying_nonterminal'Class;
   type term_nonterminal;
   type term_nonterminal_ptr is access all term_nonterminal'Class;
   type adding_nonterminal;
   type adding_nonterminal_ptr is access all adding_nonterminal'Class;
   type unary_nonterminal;
   type unary_nonterminal_ptr is access all unary_nonterminal'Class;
   type simple_expression_nonterminal;
   type simple_expression_nonterminal_ptr is access all simple_expression_nonterminal'Class;
   type membership_nonterminal;
   type membership_nonterminal_ptr is access all membership_nonterminal'Class;
   type relational_nonterminal;
   type relational_nonterminal_ptr is access all relational_nonterminal'Class;
   type relation_nonterminal;
   type relation_nonterminal_ptr is access all relation_nonterminal'Class;
   type short_circuit_nonterminal;
   type short_circuit_nonterminal_ptr is access all short_circuit_nonterminal'Class;
   type logical_nonterminal;
   type logical_nonterminal_ptr is access all logical_nonterminal'Class;
   type expression_nonterminal;
   type expression_nonterminal_ptr is access all expression_nonterminal'Class;
   type comp_assoc_nonterminal;
   type comp_assoc_nonterminal_ptr is access all comp_assoc_nonterminal'Class;
   type value_s_2_nonterminal;
   type value_s_2_nonterminal_ptr is access all value_s_2_nonterminal'Class;
   type aggregate_nonterminal;
   type aggregate_nonterminal_ptr is access all aggregate_nonterminal'Class;
   type literal_nonterminal;
   type literal_nonterminal_ptr is access all literal_nonterminal'Class;
   type attribute_id_nonterminal;
   type attribute_id_nonterminal_ptr is access all attribute_id_nonterminal'Class;
   type attribute_nonterminal;
   type attribute_nonterminal_ptr is access all attribute_nonterminal'Class;
   type selected_comp_nonterminal;
   type selected_comp_nonterminal_ptr is access all selected_comp_nonterminal'Class;
   type value_nonterminal;
   type value_nonterminal_ptr is access all value_nonterminal'Class;
   type value_s_nonterminal;
   type value_s_nonterminal_ptr is access all value_s_nonterminal'Class;
   type indexed_comp_nonterminal;
   type indexed_comp_nonterminal_ptr is access all indexed_comp_nonterminal'Class;
   type operator_symbol_nonterminal;
   type operator_symbol_nonterminal_ptr is access all operator_symbol_nonterminal'Class;
   type used_char_nonterminal;
   type used_char_nonterminal_ptr is access all used_char_nonterminal'Class;
   type c_name_list_nonterminal;
   type c_name_list_nonterminal_ptr is access all c_name_list_nonterminal'Class;
   type compound_name_nonterminal;
   type compound_name_nonterminal_ptr is access all compound_name_nonterminal'Class;
   type simple_name_nonterminal;
   type simple_name_nonterminal_ptr is access all simple_name_nonterminal'Class;
   type mark_nonterminal;
   type mark_nonterminal_ptr is access all mark_nonterminal'Class;
   type name_nonterminal;
   type name_nonterminal_ptr is access all name_nonterminal'Class;
   type body_nt_nonterminal;
   type body_nt_nonterminal_ptr is access all body_nt_nonterminal'Class;
   type decl_item_or_body_nonterminal;
   type decl_item_or_body_nonterminal_ptr is access all decl_item_or_body_nonterminal'Class;
   type decl_item_or_body_s1_nonterminal;
   type decl_item_or_body_s1_nonterminal_ptr is access all decl_item_or_body_s1_nonterminal'Class;
   type decl_item_nonterminal;
   type decl_item_nonterminal_ptr is access all decl_item_nonterminal'Class;
   type decl_item_s1_nonterminal;
   type decl_item_s1_nonterminal_ptr is access all decl_item_s1_nonterminal'Class;
   type decl_item_s_nonterminal;
   type decl_item_s_nonterminal_ptr is access all decl_item_s_nonterminal'Class;
   type decl_part_nonterminal;
   type decl_part_nonterminal_ptr is access all decl_part_nonterminal'Class;
   type prot_opt_nonterminal;
   type prot_opt_nonterminal_ptr is access all prot_opt_nonterminal'Class;
   type access_type_nonterminal;
   type access_type_nonterminal_ptr is access all access_type_nonterminal'Class;
   type discrete_with_range_nonterminal;
   type discrete_with_range_nonterminal_ptr is access all discrete_with_range_nonterminal'Class;
   type choice_nonterminal;
   type choice_nonterminal_ptr is access all choice_nonterminal'Class;
   type choice_s_nonterminal;
   type choice_s_nonterminal_ptr is access all choice_s_nonterminal'Class;
   type variant_nonterminal;
   type variant_nonterminal_ptr is access all variant_nonterminal'Class;
   type variant_s_nonterminal;
   type variant_s_nonterminal_ptr is access all variant_s_nonterminal'Class;
   type variant_part_nonterminal;
   type variant_part_nonterminal_ptr is access all variant_part_nonterminal'Class;
   type access_opt_nonterminal;
   type access_opt_nonterminal_ptr is access all access_opt_nonterminal'Class;
   type discrim_spec_nonterminal;
   type discrim_spec_nonterminal_ptr is access all discrim_spec_nonterminal'Class;
   type discrim_spec_s_nonterminal;
   type discrim_spec_s_nonterminal_ptr is access all discrim_spec_s_nonterminal'Class;
   type discrim_part_nonterminal;
   type discrim_part_nonterminal_ptr is access all discrim_part_nonterminal'Class;
   type comp_decl_nonterminal;
   type comp_decl_nonterminal_ptr is access all comp_decl_nonterminal'Class;
   type variant_part_opt_nonterminal;
   type variant_part_opt_nonterminal_ptr is access all variant_part_opt_nonterminal'Class;
   type comp_decl_s_nonterminal;
   type comp_decl_s_nonterminal_ptr is access all comp_decl_s_nonterminal'Class;
   type comp_list_nonterminal;
   type comp_list_nonterminal_ptr is access all comp_list_nonterminal'Class;
   type tagged_opt_nonterminal;
   type tagged_opt_nonterminal_ptr is access all tagged_opt_nonterminal'Class;
   type record_def_nonterminal;
   type record_def_nonterminal_ptr is access all record_def_nonterminal'Class;
   type record_type_nonterminal;
   type record_type_nonterminal_ptr is access all record_type_nonterminal'Class;
   type range_constr_opt_nonterminal;
   type range_constr_opt_nonterminal_ptr is access all range_constr_opt_nonterminal'Class;
   type discrete_range_nonterminal;
   type discrete_range_nonterminal_ptr is access all discrete_range_nonterminal'Class;
   type iter_discrete_range_s_nonterminal;
   type iter_discrete_range_s_nonterminal_ptr is access all iter_discrete_range_s_nonterminal'Class;
   type iter_index_constraint_nonterminal;
   type iter_index_constraint_nonterminal_ptr is access all iter_index_constraint_nonterminal'Class;
   type index_nonterminal;
   type index_nonterminal_ptr is access all index_nonterminal'Class;
   type index_s_nonterminal;
   type index_s_nonterminal_ptr is access all index_s_nonterminal'Class;
   type aliased_opt_nonterminal;
   type aliased_opt_nonterminal_ptr is access all aliased_opt_nonterminal'Class;
   type component_subtype_def_nonterminal;
   type component_subtype_def_nonterminal_ptr is access all component_subtype_def_nonterminal'Class;
   type constr_array_type_nonterminal;
   type constr_array_type_nonterminal_ptr is access all constr_array_type_nonterminal'Class;
   type unconstr_array_type_nonterminal;
   type unconstr_array_type_nonterminal_ptr is access all unconstr_array_type_nonterminal'Class;
   type array_type_nonterminal;
   type array_type_nonterminal_ptr is access all array_type_nonterminal'Class;
   type fixed_type_nonterminal;
   type fixed_type_nonterminal_ptr is access all fixed_type_nonterminal'Class;
   type float_type_nonterminal;
   type float_type_nonterminal_ptr is access all float_type_nonterminal'Class;
   type real_type_nonterminal;
   type real_type_nonterminal_ptr is access all real_type_nonterminal'Class;
   type range_spec_opt_nonterminal;
   type range_spec_opt_nonterminal_ptr is access all range_spec_opt_nonterminal'Class;
   type range_spec_nonterminal;
   type range_spec_nonterminal_ptr is access all range_spec_nonterminal'Class;
   type integer_type_nonterminal;
   type integer_type_nonterminal_ptr is access all integer_type_nonterminal'Class;
   type enum_id_nonterminal;
   type enum_id_nonterminal_ptr is access all enum_id_nonterminal'Class;
   type enum_id_s_nonterminal;
   type enum_id_s_nonterminal_ptr is access all enum_id_s_nonterminal'Class;
   type enumeration_type_nonterminal;
   type enumeration_type_nonterminal_ptr is access all enumeration_type_nonterminal'Class;
   type range_sym_nonterminal;
   type range_sym_nonterminal_ptr is access all range_sym_nonterminal'Class;
   type range_constraint_nonterminal;
   type range_constraint_nonterminal_ptr is access all range_constraint_nonterminal'Class;
   type derived_type_nonterminal;
   type derived_type_nonterminal_ptr is access all derived_type_nonterminal'Class;
   type decimal_digits_constraint_nonterminal;
   type decimal_digits_constraint_nonterminal_ptr is access all decimal_digits_constraint_nonterminal'Class;
   type constraint_nonterminal;
   type constraint_nonterminal_ptr is access all constraint_nonterminal'Class;
   type subtype_ind_nonterminal;
   type subtype_ind_nonterminal_ptr is access all subtype_ind_nonterminal'Class;
   type subtype_decl_nonterminal;
   type subtype_decl_nonterminal_ptr is access all subtype_decl_nonterminal'Class;
   type type_def_nonterminal;
   type type_def_nonterminal_ptr is access all type_def_nonterminal'Class;
   type type_completion_nonterminal;
   type type_completion_nonterminal_ptr is access all type_completion_nonterminal'Class;
   type discrim_part_opt_nonterminal;
   type discrim_part_opt_nonterminal_ptr is access all discrim_part_opt_nonterminal'Class;
   type type_decl_nonterminal;
   type type_decl_nonterminal_ptr is access all type_decl_nonterminal'Class;
   type number_decl_nonterminal;
   type number_decl_nonterminal_ptr is access all number_decl_nonterminal'Class;
   type init_opt_nonterminal;
   type init_opt_nonterminal_ptr is access all init_opt_nonterminal'Class;
   type object_subtype_def_nonterminal;
   type object_subtype_def_nonterminal_ptr is access all object_subtype_def_nonterminal'Class;
   type object_qualifier_opt_nonterminal;
   type object_qualifier_opt_nonterminal_ptr is access all object_qualifier_opt_nonterminal'Class;
   type def_id_nonterminal;
   type def_id_nonterminal_ptr is access all def_id_nonterminal'Class;
   type def_id_s_nonterminal;
   type def_id_s_nonterminal_ptr is access all def_id_s_nonterminal'Class;
   type object_decl_nonterminal;
   type object_decl_nonterminal_ptr is access all object_decl_nonterminal'Class;
   type decl_nonterminal;
   type decl_nonterminal_ptr is access all decl_nonterminal'Class;
   type pragma_s_nonterminal;
   type pragma_s_nonterminal_ptr is access all pragma_s_nonterminal'Class;
   type pragma_arg_nonterminal;
   type pragma_arg_nonterminal_ptr is access all pragma_arg_nonterminal'Class;
   type pragma_arg_s_nonterminal;
   type pragma_arg_s_nonterminal_ptr is access all pragma_arg_s_nonterminal'Class;
   type pragma_sym_nonterminal;
   type pragma_sym_nonterminal_ptr is access all pragma_sym_nonterminal'Class;
   type CHAR_STRING_nonterminal;
   type CHAR_STRING_nonterminal_ptr is access all CHAR_STRING_nonterminal'Class;
   type NE_nonterminal;
   type NE_nonterminal_ptr is access all NE_nonterminal'Class;
   type LT_EQ_nonterminal;
   type LT_EQ_nonterminal_ptr is access all LT_EQ_nonterminal'Class;
   type GE_nonterminal;
   type GE_nonterminal_ptr is access all GE_nonterminal'Class;
   type LT_LT_nonterminal;
   type LT_LT_nonterminal_ptr is access all LT_LT_nonterminal'Class;
   type GT_GT_nonterminal;
   type GT_GT_nonterminal_ptr is access all GT_GT_nonterminal'Class;
   type CHAR_LIT_nonterminal;
   type CHAR_LIT_nonterminal_ptr is access all CHAR_LIT_nonterminal'Class;
   type NUMERIC_LIT_nonterminal;
   type NUMERIC_LIT_nonterminal_ptr is access all NUMERIC_LIT_nonterminal'Class;

   type NUMERIC_LIT_nonterminal is abstract new Parseable with null record;
   type NUMERIC_LIT_nonterminal1 is new NUMERIC_LIT_nonterminal with record
      DECIMAL_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out NUMERIC_LIT_nonterminal1);
   type NUMERIC_LIT_nonterminal2 is new NUMERIC_LIT_nonterminal with record
      BASED_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out NUMERIC_LIT_nonterminal2);

   type CHAR_LIT_nonterminal is new Parseable with record
      CHAR_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out CHAR_LIT_nonterminal);

   type GT_GT_nonterminal is new Parseable with record
      RIGHT_LABEL_BRACKET_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out GT_GT_nonterminal);

   type LT_LT_nonterminal is new Parseable with record
      LEFT_LABEL_BRACKET_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out LT_LT_nonterminal);

   type GE_nonterminal is new Parseable with record
      GREATER_THAN_OR_EQUAL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out GE_nonterminal);

   type LT_EQ_nonterminal is new Parseable with record
      LESS_THAN_OR_EQUAL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out LT_EQ_nonterminal);

   type NE_nonterminal is new Parseable with record
      INEQUALITY_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out NE_nonterminal);

   type CHAR_STRING_nonterminal is new Parseable with record
      STRING_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Get_LC(This : in CHAR_STRING_nonterminal; Line, Column : out Integer);
   procedure Translate(This : in out CHAR_STRING_nonterminal);

   type pragma_sym_nonterminal is abstract new Parseable with null record;
   type pragma_sym_nonterminal1 is new pragma_sym_nonterminal with record
      PRAGMA_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out pragma_sym_nonterminal1);
   type pragma_sym_nonterminal2 is new pragma_sym_nonterminal with record
      PRAGMA_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      pragma_arg_s_part : pragma_arg_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out pragma_sym_nonterminal2);

   type pragma_arg_s_nonterminal is abstract new Parseable with null record;
   type pragma_arg_s_nonterminal1 is new pragma_arg_s_nonterminal with record
      pragma_arg_part : pragma_arg_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pragma_arg_s_nonterminal1);
   type pragma_arg_s_nonterminal2 is new pragma_arg_s_nonterminal with record
      pragma_arg_s_part : pragma_arg_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      pragma_arg_part : pragma_arg_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pragma_arg_s_nonterminal2);

   type pragma_arg_nonterminal is abstract new Parseable with null record;
   type pragma_arg_nonterminal1 is new pragma_arg_nonterminal with record
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pragma_arg_nonterminal1);
   type pragma_arg_nonterminal2 is new pragma_arg_nonterminal with record
      simple_name_part : simple_name_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pragma_arg_nonterminal2);

   type pragma_s_nonterminal is abstract new Parseable with null record;
   type pragma_s_nonterminal1 is new pragma_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out pragma_s_nonterminal1);
   type pragma_s_nonterminal2 is new pragma_s_nonterminal with record
      pragma_s_part : pragma_s_nonterminal_Ptr;
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pragma_s_nonterminal2);

   type decl_nonterminal is abstract new Parseable with null record;
   function Match(This : in decl_nonterminal; Id : Parseable_Token_Ptr) return boolean is abstract;

   type decl_nonterminal1 is new decl_nonterminal with record
      object_decl_part : object_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal1; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal1);
   
   type decl_nonterminal2 is new decl_nonterminal with record
      number_decl_part : number_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal2; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal2); 
   
   type decl_nonterminal3 is new decl_nonterminal with record
      type_decl_part : type_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal3; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal3);
   
   type decl_nonterminal4 is new decl_nonterminal with record
      subtype_decl_part : subtype_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal4; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal4);
   
   type decl_nonterminal5 is new decl_nonterminal with record
      subprog_decl_part : subprog_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal5; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal5);
   
   type decl_nonterminal6 is new decl_nonterminal with record
      pkg_decl_part : pkg_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal6; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal6);
   
   type decl_nonterminal7 is new decl_nonterminal with record
      task_decl_part : task_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal7; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal7);
   
   type decl_nonterminal8 is new decl_nonterminal with record
      prot_decl_part : prot_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal8; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal8);
   
   type decl_nonterminal9 is new decl_nonterminal with record
      exception_decl_part : exception_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal9; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal9);
   
   type decl_nonterminal10 is new decl_nonterminal with record
      rename_decl_part : rename_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal10; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal10);
   
   type decl_nonterminal11 is new decl_nonterminal with record
      generic_decl_part : generic_decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal11; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal11);
   
   type decl_nonterminal12 is new decl_nonterminal with record
      body_stub_part : body_stub_nonterminal_Ptr;
   end record;
   function Match(This : in decl_nonterminal12; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_nonterminal12);

   type object_decl_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      object_qualifier_opt_part : object_qualifier_opt_nonterminal_Ptr;
      object_subtype_def_part : object_subtype_def_nonterminal_Ptr;
      init_opt_part : init_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   function Match(This : in object_decl_nonterminal; Id : Parseable_Token_Ptr) return boolean;

   procedure Translate(This : in out object_decl_nonterminal);

   type def_id_s_nonterminal is abstract new Parseable with null record;
   function Get_Arity(This : in def_id_s_nonterminal) return integer is abstract;
   function In_Id_List(This : in def_id_s_nonterminal; Id : Parseable_Token_Ptr) return boolean is abstract;
   function Contains_Multiple_Ids(This: in def_id_s_nonterminal) return boolean is abstract;
   procedure Build_Formal_Parameter_List(This : in def_id_s_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is abstract;
   procedure Translate_First_Id(This: in def_id_s_nonterminal) is abstract;
   procedure Translate_Formal_Parameters(This : in out def_id_s_nonterminal; Reference : Boolean) 
      is abstract;
   
   type def_id_s_nonterminal1 is new def_id_s_nonterminal with record
      def_id_part : def_id_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in def_id_s_nonterminal1) return integer;
   function In_Id_List(This : in def_id_s_nonterminal1; Id : Parseable_Token_Ptr) return boolean;
   function Contains_Multiple_Ids(This: in def_id_s_nonterminal1) return boolean;
   procedure Build_Formal_Parameter_List(This : in def_id_s_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate_First_Id(This: in def_id_s_nonterminal1);
   procedure Translate(This : in out def_id_s_nonterminal1);
   procedure Translate_Formal_Parameters(This : in out def_id_s_nonterminal1; Reference : Boolean);
      
   type def_id_s_nonterminal2 is new def_id_s_nonterminal with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      def_id_part : def_id_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in def_id_s_nonterminal2) return integer;
   function In_Id_List(This : in def_id_s_nonterminal2; Id : Parseable_Token_Ptr) return boolean;
   function Contains_Multiple_Ids(This: in def_id_s_nonterminal2) return boolean;
   procedure Build_Formal_Parameter_List(This : in def_id_s_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate_First_Id(This: in def_id_s_nonterminal2);
   procedure Translate(This : in out def_id_s_nonterminal2);
   procedure Translate_Formal_Parameters(This : in out def_id_s_nonterminal2; Reference : Boolean);
   
   type def_id_nonterminal is new Parseable with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out def_id_nonterminal);

   type object_qualifier_opt_nonterminal is abstract new Parseable with null record;
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal) return boolean
      is abstract;
      
   type object_qualifier_opt_nonterminal1 is new object_qualifier_opt_nonterminal with record
      null;
   end record;
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal1) return boolean;
   procedure Translate(This : in out object_qualifier_opt_nonterminal1);
   
   type object_qualifier_opt_nonterminal2 is new object_qualifier_opt_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
   end record;
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal2) return boolean;
   procedure Translate(This : in out object_qualifier_opt_nonterminal2);
   
   type object_qualifier_opt_nonterminal3 is new object_qualifier_opt_nonterminal with record
      CONSTANT_part : Parseable_Token_Ptr;
   end record;
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal3) return boolean;
   procedure Translate(This : in out object_qualifier_opt_nonterminal3);
   
   type object_qualifier_opt_nonterminal4 is new object_qualifier_opt_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
   end record;
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal4) return boolean;
   procedure Translate(This : in out object_qualifier_opt_nonterminal4);

   type object_subtype_def_nonterminal is abstract new Parseable with null record;
   function Is_Supported_Constant_Type(This: in object_subtype_def_nonterminal) return boolean
      is abstract;
   function Is_Supported_Variable_Type(This: in object_subtype_def_nonterminal) return boolean
      is abstract;
      
   type object_subtype_def_nonterminal1 is new object_subtype_def_nonterminal with record
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   function Is_Supported_Constant_Type(This: in object_subtype_def_nonterminal1) return boolean;
   function Is_Supported_Variable_Type(This: in object_subtype_def_nonterminal1) return boolean;
   procedure Translate(This : in out object_subtype_def_nonterminal1);
   
   type object_subtype_def_nonterminal2 is new object_subtype_def_nonterminal with record
      array_type_part : array_type_nonterminal_Ptr;
   end record;
   function Is_Supported_Constant_Type(This: in object_subtype_def_nonterminal2) return boolean;
   function Is_Supported_Variable_Type(This: in object_subtype_def_nonterminal2) return boolean;
   procedure Translate(This : in out object_subtype_def_nonterminal2);

   type init_opt_nonterminal is abstract new Parseable with null record;
   function Is_Empty(This : in init_opt_nonterminal) return boolean is abstract;
   procedure Translate_Expression(This : in init_opt_nonterminal) is abstract;
   
   type init_opt_nonterminal1 is new init_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out init_opt_nonterminal1);
   procedure Translate_Expression(This : in init_opt_nonterminal1);
   function Is_Empty(This : in init_opt_nonterminal1) return boolean;
   
   type init_opt_nonterminal2 is new init_opt_nonterminal with record
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out init_opt_nonterminal2);
   procedure Translate_Expression(This : in init_opt_nonterminal2);
   function Is_Empty(This : in init_opt_nonterminal2) return boolean;

   type number_decl_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   function Match(This : in number_decl_nonterminal; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out number_decl_nonterminal);

   type type_decl_nonterminal is new Parseable with record
      TYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      discrim_part_opt_part : discrim_part_opt_nonterminal_Ptr;
      type_completion_part : type_completion_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out type_decl_nonterminal);

   type discrim_part_opt_nonterminal is abstract new Parseable with null record;
   type discrim_part_opt_nonterminal1 is new discrim_part_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out discrim_part_opt_nonterminal1);
   type discrim_part_opt_nonterminal2 is new discrim_part_opt_nonterminal with record
      discrim_part_part : discrim_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrim_part_opt_nonterminal2);
   type discrim_part_opt_nonterminal3 is new discrim_part_opt_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out discrim_part_opt_nonterminal3);

   type type_completion_nonterminal is abstract new Parseable with null record;
   type type_completion_nonterminal1 is new type_completion_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out type_completion_nonterminal1);
   type type_completion_nonterminal2 is new type_completion_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      type_def_part : type_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_completion_nonterminal2);

   type type_def_nonterminal is abstract new Parseable with null record;
   type type_def_nonterminal1 is new type_def_nonterminal with record
      enumeration_type_part : enumeration_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal1);
   type type_def_nonterminal2 is new type_def_nonterminal with record
      integer_type_part : integer_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal2);
   type type_def_nonterminal3 is new type_def_nonterminal with record
      real_type_part : real_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal3);
   type type_def_nonterminal4 is new type_def_nonterminal with record
      array_type_part : array_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal4);
   type type_def_nonterminal5 is new type_def_nonterminal with record
      record_type_part : record_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal5);
   type type_def_nonterminal6 is new type_def_nonterminal with record
      access_type_part : access_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal6);
   type type_def_nonterminal7 is new type_def_nonterminal with record
      derived_type_part : derived_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal7);
   type type_def_nonterminal8 is new type_def_nonterminal with record
      private_type_part : private_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out type_def_nonterminal8);

   type subtype_decl_nonterminal is new Parseable with record
      SUBTYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IS_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subtype_decl_nonterminal);

   type subtype_ind_nonterminal is abstract new Parseable with null record;
   function Is_Supported_Constant_Type(This: in subtype_ind_nonterminal) return boolean is abstract;
   function Is_Supported_Variable_Type(This: in subtype_ind_nonterminal) return boolean is abstract;
   
   type subtype_ind_nonterminal1 is new subtype_ind_nonterminal with record
      name_part : name_nonterminal_Ptr;
      constraint_part : constraint_nonterminal_Ptr;
   end record;
   function Is_Supported_Constant_Type(This: in subtype_ind_nonterminal1) return boolean;
   function Is_Supported_Variable_Type(This: in subtype_ind_nonterminal1) return boolean;
   procedure Translate(This : in out subtype_ind_nonterminal1);
   
   type subtype_ind_nonterminal2 is new subtype_ind_nonterminal with record
      name_part : name_nonterminal_Ptr;
   end record;
   function Is_Supported_Constant_Type(This: in subtype_ind_nonterminal2) return boolean;
   function Is_Supported_Variable_Type(This: in subtype_ind_nonterminal2) return boolean;
   procedure Translate(This : in out subtype_ind_nonterminal2);

   type constraint_nonterminal is abstract new Parseable with null record;
   type constraint_nonterminal1 is new constraint_nonterminal with record
      range_constraint_part : range_constraint_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out constraint_nonterminal1);
   type constraint_nonterminal2 is new constraint_nonterminal with record
      decimal_digits_constraint_part : decimal_digits_constraint_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out constraint_nonterminal2);

   type decimal_digits_constraint_nonterminal is new Parseable with record
      DIGITS_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      range_constr_opt_part : range_constr_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out decimal_digits_constraint_nonterminal);

   type derived_type_nonterminal is abstract new Parseable with null record;
   type derived_type_nonterminal1 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out derived_type_nonterminal1);
   type derived_type_nonterminal2 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out derived_type_nonterminal2);
   type derived_type_nonterminal3 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : record_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out derived_type_nonterminal3);
   type derived_type_nonterminal4 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out derived_type_nonterminal4);
   type derived_type_nonterminal5 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : record_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out derived_type_nonterminal5);

   type range_constraint_nonterminal is new Parseable with record
      RANGE_part : Parseable_Token_Ptr;
      range_sym_part : range_sym_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out range_constraint_nonterminal);

   type range_sym_nonterminal is abstract new Parseable with null record;
   function Get_Left_Expression(This: in range_sym_nonterminal) return 
      simple_expression_nonterminal_ptr is abstract;
   function Get_Right_Expression(This: in range_sym_nonterminal) return 
      simple_expression_nonterminal_ptr is abstract;
      
   type range_sym_nonterminal1 is new range_sym_nonterminal with record
      simple_expression_part1 : simple_expression_nonterminal_Ptr;
      DOUBLE_DOT_part : Parseable_Token_Ptr;
      simple_expression_part2 : simple_expression_nonterminal_Ptr;
   end record;
   function Get_Left_Expression(This: in range_sym_nonterminal1) return 
      simple_expression_nonterminal_ptr;
   function Get_Right_Expression(This: in range_sym_nonterminal1) return 
      simple_expression_nonterminal_ptr;
   procedure Translate(This : in out range_sym_nonterminal1);
   
   type range_sym_nonterminal2 is new range_sym_nonterminal with record
      name_part : name_nonterminal_Ptr;
      TICK_part : Parseable_Token_Ptr;
      RANGE_part : Parseable_Token_Ptr;
   end record;
   function Get_Left_Expression(This: in range_sym_nonterminal2) return 
      simple_expression_nonterminal_ptr;
   function Get_Right_Expression(This: in range_sym_nonterminal2) return 
      simple_expression_nonterminal_ptr;
   procedure Translate(This : in out range_sym_nonterminal2);
   
   type range_sym_nonterminal3 is new range_sym_nonterminal with record
      name_part : name_nonterminal_Ptr;
      TICK_part : Parseable_Token_Ptr;
      RANGE_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   function Get_Left_Expression(This: in range_sym_nonterminal3) return 
      simple_expression_nonterminal_ptr;
   function Get_Right_Expression(This: in range_sym_nonterminal3) return 
      simple_expression_nonterminal_ptr;
   procedure Translate(This : in out range_sym_nonterminal3);

   type enumeration_type_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      enum_id_s_part : enum_id_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out enumeration_type_nonterminal);

   type enum_id_s_nonterminal is abstract new Parseable with null record;
   type enum_id_s_nonterminal1 is new enum_id_s_nonterminal with record
      enum_id_part : enum_id_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out enum_id_s_nonterminal1);
   type enum_id_s_nonterminal2 is new enum_id_s_nonterminal with record
      enum_id_s_part : enum_id_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      enum_id_part : enum_id_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out enum_id_s_nonterminal2);

   type enum_id_nonterminal is abstract new Parseable with null record;
   type enum_id_nonterminal1 is new enum_id_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out enum_id_nonterminal1);
   type enum_id_nonterminal2 is new enum_id_nonterminal with record
      char_lit_part : char_lit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out enum_id_nonterminal2);

   type integer_type_nonterminal is abstract new Parseable with null record;
   type integer_type_nonterminal1 is new integer_type_nonterminal with record
      range_spec_part : range_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out integer_type_nonterminal1);
   type integer_type_nonterminal2 is new integer_type_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out integer_type_nonterminal2);

   type range_spec_nonterminal is new Parseable with record
      range_constraint_part : range_constraint_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out range_spec_nonterminal);

   type range_spec_opt_nonterminal is abstract new Parseable with null record;
   type range_spec_opt_nonterminal1 is new range_spec_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out range_spec_opt_nonterminal1);
   type range_spec_opt_nonterminal2 is new range_spec_opt_nonterminal with record
      range_spec_part : range_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out range_spec_opt_nonterminal2);

   type real_type_nonterminal is abstract new Parseable with null record;
   type real_type_nonterminal1 is new real_type_nonterminal with record
      float_type_part : float_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out real_type_nonterminal1);
   type real_type_nonterminal2 is new real_type_nonterminal with record
      fixed_type_part : fixed_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out real_type_nonterminal2);

   type float_type_nonterminal is new Parseable with record
      DIGITS_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      range_spec_opt_part : range_spec_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out float_type_nonterminal);

   type fixed_type_nonterminal is abstract new Parseable with null record;
   type fixed_type_nonterminal1 is new fixed_type_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      range_spec_part : range_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out fixed_type_nonterminal1);
   type fixed_type_nonterminal2 is new fixed_type_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      expression_part1 : expression_nonterminal_Ptr;
      DIGITS_part : Parseable_Token_Ptr;
      expression_part2 : expression_nonterminal_Ptr;
      range_spec_opt_part : range_spec_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out fixed_type_nonterminal2);

   type array_type_nonterminal is abstract new Parseable with null record;
   type array_type_nonterminal1 is new array_type_nonterminal with record
      unconstr_array_type_part : unconstr_array_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out array_type_nonterminal1);
   type array_type_nonterminal2 is new array_type_nonterminal with record
      constr_array_type_part : constr_array_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out array_type_nonterminal2);

   type unconstr_array_type_nonterminal is new Parseable with record
      ARRAY_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      index_s_part : index_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      OF_part : Parseable_Token_Ptr;
      component_subtype_def_part : component_subtype_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unconstr_array_type_nonterminal);

   type constr_array_type_nonterminal is new Parseable with record
      ARRAY_part : Parseable_Token_Ptr;
      iter_index_constraint_part : iter_index_constraint_nonterminal_Ptr;
      OF_part : Parseable_Token_Ptr;
      component_subtype_def_part : component_subtype_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out constr_array_type_nonterminal);

   type component_subtype_def_nonterminal is new Parseable with record
      aliased_opt_part : aliased_opt_nonterminal_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out component_subtype_def_nonterminal);

   type aliased_opt_nonterminal is abstract new Parseable with null record;
   type aliased_opt_nonterminal1 is new aliased_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out aliased_opt_nonterminal1);
   type aliased_opt_nonterminal2 is new aliased_opt_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aliased_opt_nonterminal2);

   type index_s_nonterminal is abstract new Parseable with null record;
   type index_s_nonterminal1 is new index_s_nonterminal with record
      index_part : index_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out index_s_nonterminal1);
   type index_s_nonterminal2 is new index_s_nonterminal with record
      index_s_part : index_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      index_part : index_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out index_s_nonterminal2);

   type index_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      RANGE_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out index_nonterminal);

   type iter_index_constraint_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      iter_discrete_range_s_part : iter_discrete_range_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out iter_index_constraint_nonterminal);

   type iter_discrete_range_s_nonterminal is abstract new Parseable with null record;
   type iter_discrete_range_s_nonterminal1 is new iter_discrete_range_s_nonterminal with record
      discrete_range_part : discrete_range_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out iter_discrete_range_s_nonterminal1);
   type iter_discrete_range_s_nonterminal2 is new iter_discrete_range_s_nonterminal with record
      iter_discrete_range_s_part : iter_discrete_range_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      discrete_range_part : discrete_range_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out iter_discrete_range_s_nonterminal2);

   type discrete_range_nonterminal is abstract new Parseable with null record;
   function Get_Left_Expression(This: in discrete_range_nonterminal) return 
      simple_expression_nonterminal_ptr is abstract;
   function Get_Right_Expression(This: in discrete_range_nonterminal) return 
      simple_expression_nonterminal_ptr is abstract;
      
   type discrete_range_nonterminal1 is new discrete_range_nonterminal with record
      name_part : name_nonterminal_Ptr;
      range_constr_opt_part : range_constr_opt_nonterminal_Ptr;
   end record;
   function Get_Left_Expression(This: in discrete_range_nonterminal1) return 
      simple_expression_nonterminal_ptr;
   function Get_Right_Expression(This: in discrete_range_nonterminal1) return 
      simple_expression_nonterminal_ptr;
   procedure Translate(This : in out discrete_range_nonterminal1);
   
   type discrete_range_nonterminal2 is new discrete_range_nonterminal with record
      range_sym_part : range_sym_nonterminal_Ptr;
   end record;
   function Get_Left_Expression(This: in discrete_range_nonterminal2) return 
      simple_expression_nonterminal_ptr;
   function Get_Right_Expression(This: in discrete_range_nonterminal2) return 
      simple_expression_nonterminal_ptr;
   procedure Translate(This : in out discrete_range_nonterminal2);

   type range_constr_opt_nonterminal is abstract new Parseable with null record;
   type range_constr_opt_nonterminal1 is new range_constr_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out range_constr_opt_nonterminal1);
   type range_constr_opt_nonterminal2 is new range_constr_opt_nonterminal with record
      range_constraint_part : range_constraint_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out range_constr_opt_nonterminal2);

   type record_type_nonterminal is new Parseable with record
      tagged_opt_part : tagged_opt_nonterminal_Ptr;
      limited_opt_part : limited_opt_nonterminal_Ptr;
      record_def_part : record_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out record_type_nonterminal);

   type record_def_nonterminal is abstract new Parseable with null record;
   type record_def_nonterminal1 is new record_def_nonterminal with record
      RECORD_part1 : Parseable_Token_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
      comp_list_part : comp_list_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      RECORD_part2 : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out record_def_nonterminal1);
   type record_def_nonterminal2 is new record_def_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out record_def_nonterminal2);

   type tagged_opt_nonterminal is abstract new Parseable with null record;
   type tagged_opt_nonterminal1 is new tagged_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out tagged_opt_nonterminal1);
   type tagged_opt_nonterminal2 is new tagged_opt_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out tagged_opt_nonterminal2);
   type tagged_opt_nonterminal3 is new tagged_opt_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      TAGGED_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out tagged_opt_nonterminal3);

   type comp_list_nonterminal is abstract new Parseable with null record;
   type comp_list_nonterminal1 is new comp_list_nonterminal with record
      comp_decl_s_part : comp_decl_s_nonterminal_Ptr;
      variant_part_opt_part : variant_part_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_list_nonterminal1);
   type comp_list_nonterminal2 is new comp_list_nonterminal with record
      variant_part_part : variant_part_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_list_nonterminal2);
   type comp_list_nonterminal3 is new comp_list_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_list_nonterminal3);

   type comp_decl_s_nonterminal is abstract new Parseable with null record;
   type comp_decl_s_nonterminal1 is new comp_decl_s_nonterminal with record
      comp_decl_part : comp_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_decl_s_nonterminal1);
   type comp_decl_s_nonterminal2 is new comp_decl_s_nonterminal with record
      comp_decl_s_part : comp_decl_s_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
      comp_decl_part : comp_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_decl_s_nonterminal2);

   type variant_part_opt_nonterminal is abstract new Parseable with null record;
   type variant_part_opt_nonterminal1 is new variant_part_opt_nonterminal with record
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out variant_part_opt_nonterminal1);
   type variant_part_opt_nonterminal2 is new variant_part_opt_nonterminal with record
      pragma_s_part1 : pragma_s_nonterminal_Ptr;
      variant_part_part : variant_part_nonterminal_Ptr;
      pragma_s_part2 : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out variant_part_opt_nonterminal2);

   type comp_decl_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      component_subtype_def_part : component_subtype_def_nonterminal_Ptr;
      init_opt_part : init_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out comp_decl_nonterminal);

   type discrim_part_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      discrim_spec_s_part : discrim_spec_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out discrim_part_nonterminal);

   type discrim_spec_s_nonterminal is abstract new Parseable with null record;
   type discrim_spec_s_nonterminal1 is new discrim_spec_s_nonterminal with record
      discrim_spec_part : discrim_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrim_spec_s_nonterminal1);
   type discrim_spec_s_nonterminal2 is new discrim_spec_s_nonterminal with record
      discrim_spec_s_part : discrim_spec_s_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
      discrim_spec_part : discrim_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrim_spec_s_nonterminal2);

   type discrim_spec_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      access_opt_part : access_opt_nonterminal_Ptr;
      mark_part : mark_nonterminal_Ptr;
      init_opt_part : init_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrim_spec_nonterminal);

   type access_opt_nonterminal is abstract new Parseable with null record;
   type access_opt_nonterminal1 is new access_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out access_opt_nonterminal1);
   type access_opt_nonterminal2 is new access_opt_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out access_opt_nonterminal2);

   type variant_part_nonterminal is new Parseable with record
      CASE_part1 : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
      variant_s_part : variant_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      CASE_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out variant_part_nonterminal);

   type variant_s_nonterminal is abstract new Parseable with null record;
   type variant_s_nonterminal1 is new variant_s_nonterminal with record
      variant_part : variant_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out variant_s_nonterminal1);
   type variant_s_nonterminal2 is new variant_s_nonterminal with record
      variant_s_part : variant_s_nonterminal_Ptr;
      variant_part : variant_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out variant_s_nonterminal2);

   type variant_nonterminal is new Parseable with record
      WHEN_part : Parseable_Token_Ptr;
      choice_s_part : choice_s_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
      comp_list_part : comp_list_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out variant_nonterminal);

   type choice_s_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in choice_s_nonterminal) return Unbounded_String is abstract;
   
   type choice_s_nonterminal1 is new choice_s_nonterminal with record
      choice_part : choice_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in choice_s_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out choice_s_nonterminal1);
   
   type choice_s_nonterminal2 is new choice_s_nonterminal with record
      choice_s_part : choice_s_nonterminal_Ptr;
      PIPE_part : Parseable_Token_Ptr;
      choice_part : choice_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in choice_s_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out choice_s_nonterminal2);

   type choice_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in choice_nonterminal) return Unbounded_String is abstract;
   
   type choice_nonterminal1 is new choice_nonterminal with record
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out choice_nonterminal1);
   function LHS_Of_Assoc(This : in choice_nonterminal1) return Unbounded_String;
   
   type choice_nonterminal2 is new choice_nonterminal with record
      discrete_with_range_part : discrete_with_range_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in choice_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out choice_nonterminal2);
   
   type choice_nonterminal3 is new choice_nonterminal with record
      OTHERS_part : Parseable_Token_Ptr;
   end record;
   function LHS_Of_Assoc(This : in choice_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out choice_nonterminal3);

   type discrete_with_range_nonterminal is abstract new Parseable with null record;
   type discrete_with_range_nonterminal1 is new discrete_with_range_nonterminal with record
      name_part : name_nonterminal_Ptr;
      range_constraint_part : range_constraint_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrete_with_range_nonterminal1);
   type discrete_with_range_nonterminal2 is new discrete_with_range_nonterminal with record
      range_sym_part : range_sym_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out discrete_with_range_nonterminal2);

   type access_type_nonterminal is abstract new Parseable with null record;
   type access_type_nonterminal1 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out access_type_nonterminal1);
   type access_type_nonterminal2 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out access_type_nonterminal2);
   type access_type_nonterminal3 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      all_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out access_type_nonterminal3);
   type access_type_nonterminal4 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      prot_opt_part : prot_opt_nonterminal_Ptr;
      PROCEDURE_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out access_type_nonterminal4);
   type access_type_nonterminal5 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      prot_opt_part : prot_opt_nonterminal_Ptr;
      FUNCTION_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      RETURN_part : Parseable_Token_Ptr;
      mark_part : mark_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out access_type_nonterminal5);

   type prot_opt_nonterminal is abstract new Parseable with null record;
   type prot_opt_nonterminal1 is new prot_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out prot_opt_nonterminal1);
   type prot_opt_nonterminal2 is new prot_opt_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out prot_opt_nonterminal2);

   type decl_part_nonterminal is abstract new Parseable with null record;
   procedure Search_And_Insert(This : in out decl_part_nonterminal; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type) is abstract;
   
   type decl_part_nonterminal1 is new decl_part_nonterminal with record
      null;
   end record;
   procedure Search_And_Insert(This : in out decl_part_nonterminal1; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type);   
   procedure Translate(This : in out decl_part_nonterminal1);
   
   type decl_part_nonterminal2 is new decl_part_nonterminal with record
      decl_item_or_body_s1_part : decl_item_or_body_s1_nonterminal_Ptr;
   end record;
   procedure Search_And_Insert(This : in out decl_part_nonterminal2; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type);  
   procedure Translate(This : in out decl_part_nonterminal2);

   type decl_item_s_nonterminal is abstract new Parseable with null record;
   type decl_item_s_nonterminal1 is new decl_item_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out decl_item_s_nonterminal1);
   type decl_item_s_nonterminal2 is new decl_item_s_nonterminal with record
      decl_item_s1_part : decl_item_s1_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out decl_item_s_nonterminal2);

   type decl_item_s1_nonterminal is abstract new Parseable with null record;
   type decl_item_s1_nonterminal1 is new decl_item_s1_nonterminal with record
      decl_item_part : decl_item_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out decl_item_s1_nonterminal1);
   type decl_item_s1_nonterminal2 is new decl_item_s1_nonterminal with record
      decl_item_s1_part : decl_item_s1_nonterminal_Ptr;
      decl_item_part : decl_item_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out decl_item_s1_nonterminal2);

   type decl_item_nonterminal is abstract new Parseable with null record;
   function Match(This : in decl_item_nonterminal; Id : Parseable_Token_Ptr) return boolean is abstract;
   
   type decl_item_nonterminal1 is new decl_item_nonterminal with record
      decl_part : decl_nonterminal_Ptr;
   end record;
   function Match(This : in decl_item_nonterminal1; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_nonterminal1);
   
   type decl_item_nonterminal2 is new decl_item_nonterminal with record
      use_clause_part : use_clause_nonterminal_Ptr;
   end record;
   function Match(This : in decl_item_nonterminal2; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_nonterminal2);
   
   type decl_item_nonterminal3 is new decl_item_nonterminal with record
      rep_spec_part : rep_spec_nonterminal_Ptr;
   end record;
   function Match(This : in decl_item_nonterminal3; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_nonterminal3);
   
   type decl_item_nonterminal4 is new decl_item_nonterminal with record
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
   end record;
   function Match(This : in decl_item_nonterminal4; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_nonterminal4);

   type decl_item_or_body_s1_nonterminal is abstract new Parseable with null record;
   procedure Search(This : in decl_item_or_body_s1_nonterminal; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type) is abstract;
   
   type decl_item_or_body_s1_nonterminal1 is new decl_item_or_body_s1_nonterminal with record
      decl_item_or_body_part : decl_item_or_body_nonterminal_Ptr;
   end record;
   procedure Search(This : in decl_item_or_body_s1_nonterminal1; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type);
   procedure Translate(This : in out decl_item_or_body_s1_nonterminal1);
   
   type decl_item_or_body_s1_nonterminal2 is new decl_item_or_body_s1_nonterminal with record
      decl_item_or_body_s1_part : decl_item_or_body_s1_nonterminal_Ptr;
      decl_item_or_body_part : decl_item_or_body_nonterminal_Ptr;
   end record;
   procedure Search(This : in decl_item_or_body_s1_nonterminal2; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type);
   procedure Translate(This : in out decl_item_or_body_s1_nonterminal2);

   type decl_item_or_body_nonterminal is abstract new Parseable with null record;
   function Match(This : in decl_item_or_body_nonterminal; Id : Parseable_Token_Ptr) return boolean is abstract;
   
   type decl_item_or_body_nonterminal1 is new decl_item_or_body_nonterminal with record
      body_nt_part : body_nt_nonterminal_ptr;
   end record;
   function Match(This : in decl_item_or_body_nonterminal1; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_or_body_nonterminal1);
   
   type decl_item_or_body_nonterminal2 is new decl_item_or_body_nonterminal with record
      decl_item_part : decl_item_nonterminal_Ptr;
   end record;
   function Match(This : in decl_item_or_body_nonterminal2; Id : Parseable_Token_Ptr) return boolean;
   procedure Translate(This : in out decl_item_or_body_nonterminal2);

   type body_nt_nonterminal is abstract new Parseable with null record;
   type body_nt_nonterminal1 is new body_nt_nonterminal with record
      subprog_body_part : subprog_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out body_nt_nonterminal1);
   type body_nt_nonterminal2 is new body_nt_nonterminal with record
      pkg_body_part : pkg_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out body_nt_nonterminal2);
   type body_nt_nonterminal3 is new body_nt_nonterminal with record
      task_body_part : task_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out body_nt_nonterminal3);
   type body_nt_nonterminal4 is new body_nt_nonterminal with record
      prot_body_part : prot_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out body_nt_nonterminal4);

   type name_nonterminal is abstract new Parseable with null record;
   function Get_Arity(This : in name_nonterminal) return integer is abstract;
   function Is_Supported_Constant_Type(This: in name_nonterminal) return boolean is abstract;
   function Is_Supported_Variable_Type(This: in name_nonterminal) return boolean is abstract;
   function LHS_Of_Assoc(This : in name_nonterminal) return Unbounded_String is abstract;
   procedure Check_For_Supported_Package(This : in name_nonterminal) is abstract;
   procedure Get_LC(This : in name_nonterminal; Line, Column : out integer) is abstract;
   
   type name_nonterminal1 is new name_nonterminal with record
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in name_nonterminal1) return integer;
   function Is_Supported_Constant_Type(This: in name_nonterminal1) return boolean;
   function Is_Supported_Variable_Type(This: in name_nonterminal1) return boolean;
   function LHS_Of_Assoc(This : in name_nonterminal1) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in name_nonterminal1);
   procedure Get_LC(This : in name_nonterminal1; Line, Column : out integer);
   procedure Translate(This : in out name_nonterminal1);
   
   type name_nonterminal2 is new name_nonterminal with record
      indexed_comp_part : indexed_comp_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in name_nonterminal2) return integer;
   function Is_Supported_Constant_Type(This: in name_nonterminal2) return boolean;
   function Is_Supported_Variable_Type(This: in name_nonterminal2) return boolean;
   function LHS_Of_Assoc(This : in name_nonterminal2) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in name_nonterminal2);
   procedure Get_LC(This : in name_nonterminal2; Line, Column : out integer);
   procedure Translate(This : in out name_nonterminal2);
   
   type name_nonterminal3 is new name_nonterminal with record
      selected_comp_part : selected_comp_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in name_nonterminal3) return integer;
   function Is_Supported_Constant_Type(This: in name_nonterminal3) return boolean;
   function Is_Supported_Variable_Type(This: in name_nonterminal3) return boolean;
   function LHS_Of_Assoc(This : in name_nonterminal3) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in name_nonterminal3);
   procedure Get_LC(This : in name_nonterminal3; Line, Column : out integer);
   procedure Translate(This : in out name_nonterminal3);
   
   type name_nonterminal4 is new name_nonterminal with record
      attribute_part : attribute_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in name_nonterminal4) return integer;
   function Is_Supported_Constant_Type(This: in name_nonterminal4) return boolean;
   function Is_Supported_Variable_Type(This: in name_nonterminal4) return boolean;
   function LHS_Of_Assoc(This : in name_nonterminal4) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in name_nonterminal4);
   procedure Get_LC(This : in name_nonterminal4; Line, Column : out integer);
   procedure Translate(This : in out name_nonterminal4);
   
   type name_nonterminal5 is new name_nonterminal with record
      operator_symbol_part : operator_symbol_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in name_nonterminal5) return integer;
   function Is_Supported_Constant_Type(This: in name_nonterminal5) return boolean;
   function Is_Supported_Variable_Type(This: in name_nonterminal5) return boolean;
   function LHS_Of_Assoc(This : in name_nonterminal5) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in name_nonterminal5);
   procedure Get_LC(This : in name_nonterminal5; Line, Column : out integer);
   procedure Translate(This : in out name_nonterminal5);

   type mark_nonterminal is abstract new Parseable with null record;
   function Is_Supported_Variable_Type(This : in mark_nonterminal) return boolean is abstract;
    
   type mark_nonterminal1 is new mark_nonterminal with record
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out mark_nonterminal1);
   function Is_Supported_Variable_Type(This : in mark_nonterminal1) return boolean;
   
   type mark_nonterminal2 is new mark_nonterminal with record
      mark_part : mark_nonterminal_Ptr;
      TICK_part : Parseable_Token_Ptr;
      attribute_id_part : attribute_id_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out mark_nonterminal2);
   function Is_Supported_Variable_Type(This : in mark_nonterminal2) return boolean;
   
   type mark_nonterminal3 is new mark_nonterminal with record
      mark_part : mark_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out mark_nonterminal3);
   function Is_Supported_Variable_Type(This : in mark_nonterminal3) return boolean;

   type simple_name_nonterminal is new Parseable with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   function Get_Arity(This : in simple_name_nonterminal) return integer;
   function Is_Supported_Constant_Type(This : in simple_name_nonterminal) return boolean;
   function Is_Supported_Variable_Type(This : in simple_name_nonterminal) return boolean;
   function LHS_Of_Assoc(This : in simple_name_nonterminal) return Unbounded_String;
   procedure Check_For_Supported_Package(This : in simple_name_nonterminal);
   procedure Get_LC(This : in simple_name_nonterminal; Line, Column : out integer);
   procedure Translate(This : in out simple_name_nonterminal);

   type compound_name_nonterminal is abstract new Parseable with null record;
   function Get_Simple_Name(This : in compound_name_nonterminal) return Parseable_Token_Ptr is abstract;
   procedure Check_For_Supported_Package(This : in compound_name_nonterminal) is abstract;
   
   type compound_name_nonterminal1 is new compound_name_nonterminal with record
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   function Get_Simple_Name(This : in compound_name_nonterminal1) return Parseable_Token_Ptr;
   procedure Check_For_Supported_Package(This : in compound_name_nonterminal1);
   procedure Translate(This : in out compound_name_nonterminal1);
   
   type compound_name_nonterminal2 is new compound_name_nonterminal with record
      compound_name_part : compound_name_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   function Get_Simple_Name(This : in compound_name_nonterminal2) return Parseable_Token_Ptr;
   procedure Check_For_Supported_Package(This : in compound_name_nonterminal2);
   procedure Translate(This : in out compound_name_nonterminal2);

   type c_name_list_nonterminal is abstract new Parseable with null record;
   procedure Check_For_Supported_Package(This: in c_name_list_nonterminal) is abstract;
   
   type c_name_list_nonterminal1 is new c_name_list_nonterminal with record
      compound_name_part : compound_name_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Package(This: in c_name_list_nonterminal1);
   procedure Translate(This : in out c_name_list_nonterminal1);
   
   type c_name_list_nonterminal2 is new c_name_list_nonterminal with record
      c_name_list_part : c_name_list_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Package(This: in c_name_list_nonterminal2);
   procedure Translate(This : in out c_name_list_nonterminal2);

   type used_char_nonterminal is new Parseable with record
      char_lit_part : char_lit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out used_char_nonterminal);

   type operator_symbol_nonterminal is new Parseable with record
      char_string_part : char_string_nonterminal_Ptr;
   end record;
   procedure Get_LC (This : in operator_symbol_nonterminal; Line, Column : out integer);
   procedure Translate(This : in out operator_symbol_nonterminal);

   type indexed_comp_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      value_s_part : value_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   function Get_Arity(This : in indexed_comp_nonterminal) return integer;
   procedure Get_LC(This : in indexed_comp_nonterminal; Line, Column : out integer);
   procedure Translate(This : in out indexed_comp_nonterminal);

   type value_s_nonterminal is abstract new Parseable with null record;
   function Find_Nth_Argument(This : in value_s_nonterminal; Target, Arity : in integer) 
      return value_nonterminal_Ptr is abstract;
   function Find_Nth_Argument_From_Right(This : in value_s_nonterminal; Target, Current : in integer) 
      return value_nonterminal_Ptr is abstract;
   function Get_Arity(This : in value_s_nonterminal) return integer is abstract;
   function Get_Value_S_Part(This : in value_s_nonterminal) return value_s_nonterminal_ptr is abstract;
   procedure Set_Value_Part(This : in out value_s_nonterminal; Val : in value_nonterminal_ptr) is abstract;
   
   type value_s_nonterminal1 is new value_s_nonterminal with record
      value_part : value_nonterminal_Ptr;
   end record;
   function Find_Nth_Argument(This : in value_s_nonterminal1; Target, Arity : in integer)
      return value_nonterminal_Ptr;
   function Find_Nth_Argument_From_Right(This : in value_s_nonterminal1; Target, Current : in integer) 
      return value_nonterminal_Ptr;
   function Get_Arity(This : in value_s_nonterminal1) return integer;
   function Get_Value_S_Part(This : in value_s_nonterminal1) return value_s_nonterminal_ptr;
   procedure Set_Value_Part(This : in out value_s_nonterminal1; Val : in value_nonterminal_ptr);
   procedure Translate(This : in out value_s_nonterminal1);
   
   type value_s_nonterminal2 is new value_s_nonterminal with record
      value_s_part : value_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      value_part : value_nonterminal_Ptr;
   end record;
   function Find_Nth_Argument(This : in value_s_nonterminal2; Target, Arity : in integer)
      return value_nonterminal_Ptr;
   function Find_Nth_Argument_From_Right(This : in value_s_nonterminal2; Target, Current : in integer) 
      return value_nonterminal_Ptr;
   function Get_Arity(This : in value_s_nonterminal2) return integer;
   function Get_Value_S_Part(This : in value_s_nonterminal2) return value_s_nonterminal_ptr;
   procedure Set_Value_Part(This : in out value_s_nonterminal2; Val : in value_nonterminal_ptr);
   procedure Translate(This : in out value_s_nonterminal2);

   type value_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in value_nonterminal) return Unbounded_String is abstract;
   function Is_Named_Association(This : in value_nonterminal) return boolean is abstract;
   
   type value_nonterminal1 is new value_nonterminal with record
      expression_part : expression_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in value_nonterminal1) return Unbounded_String;
   function Is_Named_Association(This : in value_nonterminal1) return boolean;
   procedure Translate(This : in out value_nonterminal1);
   
   type value_nonterminal2 is new value_nonterminal with record
      comp_assoc_part : comp_assoc_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in value_nonterminal2) return Unbounded_String;
   function Is_Named_Association(This : in value_nonterminal2) return boolean;
   procedure Translate(This : in out value_nonterminal2);
   
   type value_nonterminal3 is new value_nonterminal with record
      discrete_with_range_part : discrete_with_range_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in value_nonterminal3) return Unbounded_String;
   function Is_Named_Association(This : in value_nonterminal3) return boolean;
   procedure Translate(This : in out value_nonterminal3);

   type selected_comp_nonterminal is abstract new Parseable with null record;
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal) is abstract;
   procedure Get_LC(This : in selected_comp_nonterminal; Line, Column : out integer) is abstract;

   type selected_comp_nonterminal1 is new selected_comp_nonterminal with record
      name_part : name_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal1);
   procedure Get_LC(This : in selected_comp_nonterminal1; Line, Column : out integer);
   procedure Translate(This : in out selected_comp_nonterminal1);
   
   type selected_comp_nonterminal2 is new selected_comp_nonterminal with record
      name_part : name_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      used_char_part : used_char_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal2);
   procedure Get_LC(This : in selected_comp_nonterminal2; Line, Column : out integer);
   procedure Translate(This : in out selected_comp_nonterminal2);
   
   type selected_comp_nonterminal3 is new selected_comp_nonterminal with record
      name_part : name_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      operator_symbol_part : operator_symbol_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal3);
   procedure Get_LC(This : in selected_comp_nonterminal3; Line, Column : out integer);
   procedure Translate(This : in out selected_comp_nonterminal3);
   
   type selected_comp_nonterminal4 is new selected_comp_nonterminal with record
      name_part : name_nonterminal_Ptr;
      DOT_part : Parseable_Token_Ptr;
      all_part : Parseable_Token_Ptr;
   end record;
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal4);
   procedure Get_LC(This : in selected_comp_nonterminal4; Line, Column : out integer);
   procedure Translate(This : in out selected_comp_nonterminal4);

   type attribute_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      TICK_part : Parseable_Token_Ptr;
      attribute_id_part : attribute_id_nonterminal_Ptr;
   end record;
   procedure Get_LC(This : in attribute_nonterminal; Line, Column : out integer);
   procedure Translate(This : in out attribute_nonterminal);

   type attribute_id_nonterminal is abstract new Parseable with null record;
   type attribute_id_nonterminal1 is new attribute_id_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out attribute_id_nonterminal1);
   type attribute_id_nonterminal2 is new attribute_id_nonterminal with record
      DIGITS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out attribute_id_nonterminal2);
   type attribute_id_nonterminal3 is new attribute_id_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out attribute_id_nonterminal3);
   type attribute_id_nonterminal4 is new attribute_id_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out attribute_id_nonterminal4);

   type literal_nonterminal is abstract new Parseable with null record;
   type literal_nonterminal1 is new literal_nonterminal with record
      numeric_lit_part : numeric_lit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out literal_nonterminal1);
   type literal_nonterminal2 is new literal_nonterminal with record
      used_char_part : used_char_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out literal_nonterminal2);
   type literal_nonterminal3 is new literal_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out literal_nonterminal3);

   type aggregate_nonterminal is abstract new Parseable with null record;
   type aggregate_nonterminal1 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      comp_assoc_part : comp_assoc_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aggregate_nonterminal1);
   type aggregate_nonterminal2 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      value_s_2_part : value_s_2_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aggregate_nonterminal2);
   type aggregate_nonterminal3 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      value_s_part : value_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aggregate_nonterminal3);
   type aggregate_nonterminal4 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aggregate_nonterminal4);
   type aggregate_nonterminal5 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out aggregate_nonterminal5);

   type value_s_2_nonterminal is abstract new Parseable with null record;
   type value_s_2_nonterminal1 is new value_s_2_nonterminal with record
      value_part1 : value_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      value_part2 : value_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out value_s_2_nonterminal1);
   type value_s_2_nonterminal2 is new value_s_2_nonterminal with record
      value_s_2_part : value_s_2_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      value_part : value_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out value_s_2_nonterminal2);

   type comp_assoc_nonterminal is new Parseable with record
      choice_s_part : choice_s_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in comp_assoc_nonterminal) return Unbounded_String;
   procedure Translate(This : in out comp_assoc_nonterminal);

   type expression_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in expression_nonterminal) return Unbounded_String is abstract;
   
   type expression_nonterminal1 is new expression_nonterminal with record
      relation_part : relation_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in expression_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out expression_nonterminal1);
   
   type expression_nonterminal2 is new expression_nonterminal with record
      expression_part : expression_nonterminal_Ptr;
      logical_part : logical_nonterminal_Ptr;
      relation_part : relation_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in expression_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out expression_nonterminal2);
   
   type expression_nonterminal3 is new expression_nonterminal with record
      expression_part : expression_nonterminal_Ptr;
      short_circuit_part : short_circuit_nonterminal_Ptr;
      relation_part : relation_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in expression_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out expression_nonterminal3);

   type logical_nonterminal is abstract new Parseable with null record;
   type logical_nonterminal1 is new logical_nonterminal with record
      and_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out logical_nonterminal1);
   type logical_nonterminal2 is new logical_nonterminal with record
      OR_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out logical_nonterminal2);
   type logical_nonterminal3 is new logical_nonterminal with record
      XOR_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out logical_nonterminal3);

   type short_circuit_nonterminal is abstract new Parseable with null record;
   type short_circuit_nonterminal1 is new short_circuit_nonterminal with record
      and_part : Parseable_Token_Ptr;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out short_circuit_nonterminal1);
   type short_circuit_nonterminal2 is new short_circuit_nonterminal with record
      OR_part : Parseable_Token_Ptr;
      ELSE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out short_circuit_nonterminal2);

   type relation_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This: in relation_nonterminal) return Unbounded_String is abstract;
   
   type relation_nonterminal1 is new relation_nonterminal with record
      simple_expression_part : simple_expression_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in relation_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out relation_nonterminal1);
   type relation_nonterminal2 is new relation_nonterminal with record
      simple_expression_part1 : simple_expression_nonterminal_Ptr;
      relational_part : relational_nonterminal_Ptr;
      simple_expression_part2 : simple_expression_nonterminal_Ptr;
   end record;
   
   function LHS_Of_Assoc(This: in relation_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out relation_nonterminal2);
   type relation_nonterminal3 is new relation_nonterminal with record
      simple_expression_part : simple_expression_nonterminal_Ptr;
      membership_part : membership_nonterminal_Ptr;
      range_sym_part : range_sym_nonterminal_Ptr;
   end record;
   
   function LHS_Of_Assoc(This: in relation_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out relation_nonterminal3);
   type relation_nonterminal4 is new relation_nonterminal with record
      simple_expression_part : simple_expression_nonterminal_Ptr;
      membership_part : membership_nonterminal_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   
   function LHS_Of_Assoc(This: in relation_nonterminal4) return Unbounded_String;
   procedure Translate(This : in out relation_nonterminal4);

   type relational_nonterminal is abstract new Parseable with null record;
   type relational_nonterminal1 is new relational_nonterminal with record
      EQ_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal1);
   type relational_nonterminal2 is new relational_nonterminal with record
      NE_part : NE_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal2);
   type relational_nonterminal3 is new relational_nonterminal with record
      LT_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal3);
   type relational_nonterminal4 is new relational_nonterminal with record
      LT_EQ_part : LT_EQ_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal4);
   type relational_nonterminal5 is new relational_nonterminal with record
      GT_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal5);
   type relational_nonterminal6 is new relational_nonterminal with record
      GE_part : GE_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out relational_nonterminal6);

   type membership_nonterminal is abstract new Parseable with null record;
   type membership_nonterminal1 is new membership_nonterminal with record
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out membership_nonterminal1);
   type membership_nonterminal2 is new membership_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out membership_nonterminal2);

   type simple_expression_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This: in simple_expression_nonterminal) return Unbounded_String is abstract;
   
   type simple_expression_nonterminal1 is new simple_expression_nonterminal with record
      unary_part : unary_nonterminal_Ptr;
      term_part : term_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in simple_expression_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out simple_expression_nonterminal1);
   
   type simple_expression_nonterminal2 is new simple_expression_nonterminal with record
      term_part : term_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in simple_expression_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out simple_expression_nonterminal2);
   
   type simple_expression_nonterminal3 is new simple_expression_nonterminal with record
      simple_expression_part : simple_expression_nonterminal_Ptr;
      adding_part : adding_nonterminal_Ptr;
      term_part : term_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in simple_expression_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out simple_expression_nonterminal3);

   type unary_nonterminal is abstract new Parseable with null record;
   type unary_nonterminal1 is new unary_nonterminal with record
      PLUS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out unary_nonterminal1);
   type unary_nonterminal2 is new unary_nonterminal with record
      MINUS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out unary_nonterminal2);

   type adding_nonterminal is abstract new Parseable with null record;
   type adding_nonterminal1 is new adding_nonterminal with record
      PLUS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out adding_nonterminal1);
   type adding_nonterminal2 is new adding_nonterminal with record
      MINUS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out adding_nonterminal2);
   type adding_nonterminal3 is new adding_nonterminal with record
      CONCAT_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out adding_nonterminal3);

   type term_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This: in term_nonterminal) return Unbounded_String is abstract;
   
   type term_nonterminal1 is new term_nonterminal with record
      factor_part : factor_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in term_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out term_nonterminal1);
   
   type term_nonterminal2 is new term_nonterminal with record
      term_part : term_nonterminal_Ptr;
      multiplying_part : multiplying_nonterminal_Ptr;
      factor_part : factor_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This: in term_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out term_nonterminal2);

   type multiplying_nonterminal is abstract new Parseable with null record;
   type multiplying_nonterminal1 is new multiplying_nonterminal with record
      star_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out multiplying_nonterminal1);
   type multiplying_nonterminal2 is new multiplying_nonterminal with record
      SLASH_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out multiplying_nonterminal2);
   type multiplying_nonterminal3 is new multiplying_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out multiplying_nonterminal3);
   type multiplying_nonterminal4 is new multiplying_nonterminal with record
      REM_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out multiplying_nonterminal4);

   type factor_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in factor_nonterminal) return Unbounded_String is abstract;
   
   type factor_nonterminal1 is new factor_nonterminal with record
      primary_part : primary_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in factor_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out factor_nonterminal1);
   
   type factor_nonterminal2 is new factor_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      primary_part : primary_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in factor_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out factor_nonterminal2);
   
   type factor_nonterminal3 is new factor_nonterminal with record
      abs_part : Parseable_Token_Ptr;
      primary_part : primary_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in factor_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out factor_nonterminal3);
   
   type factor_nonterminal4 is new factor_nonterminal with record
      primary_part1 : primary_nonterminal_Ptr;
      EXPONENT_part : Parseable_Token_Ptr;
      primary_part2 : primary_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in factor_nonterminal4) return Unbounded_String;
   procedure Translate(This : in out factor_nonterminal4);

   type primary_nonterminal is abstract new Parseable with null record;
   function LHS_Of_Assoc(This : in primary_nonterminal) return Unbounded_String is abstract;
   
   type primary_nonterminal1 is new primary_nonterminal with record
      literal_part : literal_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in primary_nonterminal1) return Unbounded_String;
   procedure Translate(This : in out primary_nonterminal1);
   
   type primary_nonterminal2 is new primary_nonterminal with record
      name_part : name_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in primary_nonterminal2) return Unbounded_String;
   procedure Translate(This : in out primary_nonterminal2);
   
   type primary_nonterminal3 is new primary_nonterminal with record
      allocator_part : allocator_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in primary_nonterminal3) return Unbounded_String;
   procedure Translate(This : in out primary_nonterminal3);
   
   type primary_nonterminal4 is new primary_nonterminal with record
      qualified_part : qualified_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in primary_nonterminal4) return Unbounded_String;
   procedure Translate(This : in out primary_nonterminal4);
   
   type primary_nonterminal5 is new primary_nonterminal with record
      parenthesized_primary_part : parenthesized_primary_nonterminal_Ptr;
   end record;
   function LHS_Of_Assoc(This : in primary_nonterminal5) return Unbounded_String;
   procedure Translate(This : in out primary_nonterminal5);

   type parenthesized_primary_nonterminal is abstract new Parseable with null record;
   type parenthesized_primary_nonterminal1 is new parenthesized_primary_nonterminal with record
      aggregate_part : aggregate_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out parenthesized_primary_nonterminal1);
   type parenthesized_primary_nonterminal2 is new parenthesized_primary_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out parenthesized_primary_nonterminal2);

   type qualified_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      TICK_part : Parseable_Token_Ptr;
      parenthesized_primary_part : parenthesized_primary_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out qualified_nonterminal);

   type allocator_nonterminal is abstract new Parseable with null record;
   type allocator_nonterminal1 is new allocator_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out allocator_nonterminal1);
   type allocator_nonterminal2 is new allocator_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      qualified_part : qualified_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out allocator_nonterminal2);

   type statement_s_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in statement_s_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type statement_s_nonterminal1 is new statement_s_nonterminal with record
      statement_part : statement_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in statement_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out statement_s_nonterminal1);
   
   type statement_s_nonterminal2 is new statement_s_nonterminal with record
      statement_s_part : statement_s_nonterminal_Ptr;
      statement_part : statement_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in statement_s_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out statement_s_nonterminal2);

   type statement_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in statement_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type statement_nonterminal1 is new statement_nonterminal with record
      unlabeled_part : unlabeled_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in statement_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   
   procedure Translate(This : in out statement_nonterminal1);
   type statement_nonterminal2 is new statement_nonterminal with record
      label_part : label_nonterminal_Ptr;
      statement_part : statement_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in statement_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out statement_nonterminal2);

   type unlabeled_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in unlabeled_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
      
   type unlabeled_nonterminal1 is new unlabeled_nonterminal with record
      simple_stmt_part : simple_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in unlabeled_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out unlabeled_nonterminal1);
   
   type unlabeled_nonterminal2 is new unlabeled_nonterminal with record
      compound_stmt_part : compound_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in unlabeled_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out unlabeled_nonterminal2);
   
   type unlabeled_nonterminal3 is new unlabeled_nonterminal with record
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in unlabeled_nonterminal3;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out unlabeled_nonterminal3);

   type simple_stmt_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in simple_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   
   type simple_stmt_nonterminal1 is new simple_stmt_nonterminal with record
      null_stmt_part : null_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal1);
   type simple_stmt_nonterminal2 is new simple_stmt_nonterminal with record
      assign_stmt_part : assign_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal2);
   type simple_stmt_nonterminal3 is new simple_stmt_nonterminal with record
      exit_stmt_part : exit_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal3);
   type simple_stmt_nonterminal4 is new simple_stmt_nonterminal with record
      return_stmt_part : return_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal4);
   type simple_stmt_nonterminal5 is new simple_stmt_nonterminal with record
      goto_stmt_part : goto_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal5);
   type simple_stmt_nonterminal6 is new simple_stmt_nonterminal with record
      procedure_call_part : procedure_call_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal6);
   type simple_stmt_nonterminal7 is new simple_stmt_nonterminal with record
      delay_stmt_part : delay_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal7);
   type simple_stmt_nonterminal8 is new simple_stmt_nonterminal with record
      abort_stmt_part : abort_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal8);
   type simple_stmt_nonterminal9 is new simple_stmt_nonterminal with record
      raise_stmt_part : raise_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal9);
   type simple_stmt_nonterminal10 is new simple_stmt_nonterminal with record
      code_stmt_part : code_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal10);
   type simple_stmt_nonterminal11 is new simple_stmt_nonterminal with record
      requeue_stmt_part : requeue_stmt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out simple_stmt_nonterminal11);

   type compound_stmt_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type compound_stmt_nonterminal1 is new compound_stmt_nonterminal with record
      if_stmt_part : if_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal1);
   
   type compound_stmt_nonterminal2 is new compound_stmt_nonterminal with record
      case_stmt_part : case_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal2);
   
   type compound_stmt_nonterminal3 is new compound_stmt_nonterminal with record
      loop_stmt_part : loop_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal3;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal3);
   
   type compound_stmt_nonterminal4 is new compound_stmt_nonterminal with record
      block_part : block_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal4;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal4);
   
   type compound_stmt_nonterminal5 is new compound_stmt_nonterminal with record
      accept_stmt_part : accept_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal5;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal5);
   
   type compound_stmt_nonterminal6 is new compound_stmt_nonterminal with record
      select_stmt_part : select_stmt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in compound_stmt_nonterminal6;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out compound_stmt_nonterminal6);

   type label_nonterminal is new Parseable with record
      LT_LT_part : LT_LT_nonterminal_Ptr;
      identifier_part : Parseable_Token_Ptr;
      GT_GT_part : GT_GT_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out label_nonterminal);

   type null_stmt_nonterminal is new Parseable with record
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out null_stmt_nonterminal);

   type assign_stmt_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out assign_stmt_nonterminal);

   type if_stmt_nonterminal is new Parseable with record
      IF_part1 : Parseable_Token_Ptr;
      cond_clause_s_part : cond_clause_s_nonterminal_Ptr;
      else_opt_part : else_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      IF_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in if_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out if_stmt_nonterminal);

   type cond_clause_s_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in cond_clause_s_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type cond_clause_s_nonterminal1 is new cond_clause_s_nonterminal with record
      cond_clause_part : cond_clause_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in cond_clause_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out cond_clause_s_nonterminal1);
   
   type cond_clause_s_nonterminal2 is new cond_clause_s_nonterminal with record
      cond_clause_s_part : cond_clause_s_nonterminal_Ptr;
      ELSIF_part : Parseable_Token_Ptr;
      cond_clause_part : cond_clause_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in cond_clause_s_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out cond_clause_s_nonterminal2);

   type cond_clause_nonterminal is new Parseable with record
      cond_part_part : cond_part_nonterminal_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in cond_clause_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out cond_clause_nonterminal);

   type cond_part_nonterminal is new Parseable with record
      condition_part : condition_nonterminal_Ptr;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out cond_part_nonterminal);

   type condition_nonterminal is new Parseable with record
      expression_part : expression_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out condition_nonterminal);

   type else_opt_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in else_opt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type else_opt_nonterminal1 is new else_opt_nonterminal with record
      null;
   end record;
   procedure Mark_For_Loops(This : in else_opt_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out else_opt_nonterminal1);
   
   type else_opt_nonterminal2 is new else_opt_nonterminal with record
      ELSE_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in else_opt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out else_opt_nonterminal2);

   type case_stmt_nonterminal is new Parseable with record
      case_hdr_part : case_hdr_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
      alternative_s_part : alternative_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      CASE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in case_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out case_stmt_nonterminal);

   type case_hdr_nonterminal is new Parseable with record
      CASE_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out case_hdr_nonterminal);

   type alternative_s_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in alternative_s_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type alternative_s_nonterminal1 is new alternative_s_nonterminal with record
      null;
   end record;
   procedure Mark_For_Loops(This : in alternative_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out alternative_s_nonterminal1);
   
   type alternative_s_nonterminal2 is new alternative_s_nonterminal with record
      alternative_s_part : alternative_s_nonterminal_Ptr;
      alternative_part : alternative_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in alternative_s_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out alternative_s_nonterminal2);

   type alternative_nonterminal is new Parseable with record
      WHEN_part : Parseable_Token_Ptr;
      choice_s_part : choice_s_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in alternative_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out alternative_nonterminal);

   type loop_stmt_nonterminal is new Parseable with record
      label_opt_part : label_opt_nonterminal_Ptr;
      iteration_part : iteration_nonterminal_Ptr;
      basic_loop_part : basic_loop_nonterminal_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in loop_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out loop_stmt_nonterminal);

   type label_opt_nonterminal is abstract new Parseable with null record;
   type label_opt_nonterminal1 is new label_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out label_opt_nonterminal1);
   type label_opt_nonterminal2 is new label_opt_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
      COLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out label_opt_nonterminal2);

   type iteration_nonterminal is abstract new Parseable with null record;
   function Is_Reverse_For_Loop(This : in iteration_nonterminal) return boolean is abstract;
   function Get_Right_Expression(This : in iteration_nonterminal) return Simple_Expression_Nonterminal_Ptr is abstract;
   function Get_Left_Expression(This : in iteration_nonterminal) return Simple_Expression_Nonterminal_Ptr is abstract;
   function Is_While_Loop(This: in iteration_nonterminal) return boolean is abstract;
   function Is_For_Loop(This: in iteration_nonterminal) return boolean is abstract;
   function Get_Range_Identifier(This: in iteration_nonterminal) return Parseable_Token_Ptr is abstract;
   
   type iteration_nonterminal1 is new iteration_nonterminal with record
      null;
   end record;
   function Is_Reverse_For_Loop(This : in iteration_nonterminal1) return boolean;
   function Is_While_Loop(This: in iteration_nonterminal1) return boolean;
   function Is_For_Loop(This: in iteration_nonterminal1) return boolean;
   function Get_Range_Identifier(This: in iteration_nonterminal1) return Parseable_Token_Ptr;
   function Get_Right_Expression(This : in iteration_nonterminal1) return Simple_Expression_Nonterminal_Ptr;
   function Get_Left_Expression(This : in iteration_nonterminal1) return Simple_Expression_Nonterminal_Ptr;
   procedure Translate(This : in out iteration_nonterminal1);
      
   type iteration_nonterminal2 is new iteration_nonterminal with record
      WHILE_part : Parseable_Token_Ptr;
      condition_part : condition_nonterminal_Ptr;
   end record;
   function Is_Reverse_For_Loop(This : in iteration_nonterminal2) return boolean;
   function Is_While_Loop(This: in iteration_nonterminal2) return boolean;
   function Is_For_Loop(This: in iteration_nonterminal2) return boolean;
   function Get_Range_Identifier(This: in iteration_nonterminal2) return Parseable_Token_Ptr;
   function Get_Right_Expression(This : in iteration_nonterminal2) return Simple_Expression_Nonterminal_Ptr;
   function Get_Left_Expression(This : in iteration_nonterminal2) return Simple_Expression_Nonterminal_Ptr;
   procedure Translate(This : in out iteration_nonterminal2);
   
   type iteration_nonterminal3 is new iteration_nonterminal with record
      iter_part_part : iter_part_nonterminal_Ptr;
      reverse_opt_part : reverse_opt_nonterminal_Ptr;
      discrete_range_part : discrete_range_nonterminal_Ptr;
   end record;
   function Is_Reverse_For_Loop(This : in iteration_nonterminal3) return boolean;
   function Is_While_Loop(This: in iteration_nonterminal3) return boolean;
   function Is_For_Loop(This: in iteration_nonterminal3) return boolean;
   function Get_Range_Identifier(This: in iteration_nonterminal3) return Parseable_Token_Ptr;
   function Get_Right_Expression(This : in iteration_nonterminal3) return Simple_Expression_Nonterminal_Ptr;
   function Get_Left_Expression(This : in iteration_nonterminal3) return Simple_Expression_Nonterminal_Ptr;
   procedure Translate(This : in out iteration_nonterminal3);

   type iter_part_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out iter_part_nonterminal);

   type reverse_opt_nonterminal is abstract new Parseable with null record;
   function Is_Empty(This : in reverse_opt_nonterminal) return boolean is abstract;
   
   type reverse_opt_nonterminal1 is new reverse_opt_nonterminal with record
      null;
   end record;
   function Is_Empty(This : in reverse_opt_nonterminal1) return boolean;
   procedure Translate(This : in out reverse_opt_nonterminal1);
   
   type reverse_opt_nonterminal2 is new reverse_opt_nonterminal with record
      REVERSE_part : Parseable_Token_Ptr;
   end record;
   function Is_Empty(This : in reverse_opt_nonterminal2) return boolean;
   procedure Translate(This : in out reverse_opt_nonterminal2);

   type basic_loop_nonterminal is new Parseable with record
      LOOP_part1 : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      LOOP_part2 : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in basic_loop_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate_Statements(This: in out basic_loop_nonterminal);
   procedure Translate(This : in out basic_loop_nonterminal);

   type id_opt_nonterminal is abstract new Parseable with null record;
   type id_opt_nonterminal1 is new id_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out id_opt_nonterminal1);
   type id_opt_nonterminal2 is new id_opt_nonterminal with record
      designator_part : designator_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out id_opt_nonterminal2);

   type block_nonterminal is new Parseable with record
      label_opt_part : label_opt_nonterminal_Ptr;
      block_decl_part : block_decl_nonterminal_Ptr;
      block_body_part : block_body_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in block_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out block_nonterminal);

   type block_decl_nonterminal is abstract new Parseable with null record;
   type block_decl_nonterminal1 is new block_decl_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out block_decl_nonterminal1);
   type block_decl_nonterminal2 is new block_decl_nonterminal with record
      DECLARE_part : Parseable_Token_Ptr;
      decl_part_part : decl_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out block_decl_nonterminal2);

   type block_body_nonterminal is new Parseable with record
      BEGIN_part : Parseable_Token_Ptr;
      handled_stmt_s_part : handled_stmt_s_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in block_body_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out block_body_nonterminal);

   type handled_stmt_s_nonterminal is new Parseable with record
      statement_s_part : statement_s_nonterminal_Ptr;
      except_handler_part_opt_part : except_handler_part_opt_nonterminal_Ptr;
   end record;
   procedure Mark_For_Loops(This : in handled_stmt_s_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out handled_stmt_s_nonterminal);

   type except_handler_part_opt_nonterminal is abstract new Parseable with null record;
   type except_handler_part_opt_nonterminal1 is new except_handler_part_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out except_handler_part_opt_nonterminal1);
   type except_handler_part_opt_nonterminal2 is new except_handler_part_opt_nonterminal with record
      except_handler_part_part : except_handler_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_handler_part_opt_nonterminal2);

   type exit_stmt_nonterminal is new Parseable with record
      EXIT_part : Parseable_Token_Ptr;
      name_opt_part : name_opt_nonterminal_Ptr;
      when_opt_part : when_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out exit_stmt_nonterminal);

   type name_opt_nonterminal is abstract new Parseable with null record;
   type name_opt_nonterminal1 is new name_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out name_opt_nonterminal1);
   type name_opt_nonterminal2 is new name_opt_nonterminal with record
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out name_opt_nonterminal2);

   type when_opt_nonterminal is abstract new Parseable with null record;
   function Is_Empty(This: in when_opt_nonterminal) return boolean is abstract;
   procedure Translate_Condition(This: in when_opt_nonterminal) is abstract;
   
   type when_opt_nonterminal1 is new when_opt_nonterminal with record
      null;
   end record;
   function Is_Empty(This: in when_opt_nonterminal1) return boolean;
   procedure Translate(This : in out when_opt_nonterminal1);
   procedure Translate_Condition(This: in when_opt_nonterminal1);
   
   type when_opt_nonterminal2 is new when_opt_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      condition_part : condition_nonterminal_Ptr;
   end record;
   function Is_Empty(This: in when_opt_nonterminal2) return boolean;
   procedure Translate_Condition(This: in when_opt_nonterminal2);
   procedure Translate(This : in out when_opt_nonterminal2);

   type return_stmt_nonterminal is abstract new Parseable with null record;
   type return_stmt_nonterminal1 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out return_stmt_nonterminal1);
   type return_stmt_nonterminal2 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out return_stmt_nonterminal2);

   type goto_stmt_nonterminal is new Parseable with record
      GOTO_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out goto_stmt_nonterminal);

   type subprog_decl_nonterminal is abstract new Parseable with null record;
   type subprog_decl_nonterminal1 is new subprog_decl_nonterminal with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subprog_decl_nonterminal1);
   type subprog_decl_nonterminal2 is new subprog_decl_nonterminal with record
      generic_subp_inst_part : generic_subp_inst_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subprog_decl_nonterminal2);
   type subprog_decl_nonterminal3 is new subprog_decl_nonterminal with record
      subprog_spec_is_push_part : subprog_spec_is_push_nonterminal_Ptr;
      abstract_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subprog_decl_nonterminal3);

   type subprog_spec_nonterminal is abstract new Parseable with null record;
   type subprog_spec_nonterminal1 is new subprog_spec_nonterminal with record
      PROCEDURE_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subprog_spec_nonterminal1);
   type subprog_spec_nonterminal2 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : designator_nonterminal_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      RETURN_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subprog_spec_nonterminal2);
   type subprog_spec_nonterminal3 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : designator_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subprog_spec_nonterminal3);

   type designator_nonterminal is abstract new Parseable with null record;
   type designator_nonterminal1 is new designator_nonterminal with record
      compound_name_part : compound_name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out designator_nonterminal1);
   type designator_nonterminal2 is new designator_nonterminal with record
      char_string_part : char_string_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out designator_nonterminal2);

   type formal_part_opt_nonterminal is abstract new Parseable with null record;
   function Get_Arity(This : in formal_part_opt_nonterminal) return integer is abstract;
   procedure Build_Formal_Parameter_List(This : in formal_part_opt_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is abstract;
   
   type formal_part_opt_nonterminal1 is new formal_part_opt_nonterminal with record
      null;
   end record;
   function Get_Arity(This : in formal_part_opt_nonterminal1) return integer;
   procedure Build_Formal_Parameter_List(This : in formal_part_opt_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate(This : in out formal_part_opt_nonterminal1);
   
   type formal_part_opt_nonterminal2 is new formal_part_opt_nonterminal with record
      formal_part_part : formal_part_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in formal_part_opt_nonterminal2) return integer;
   procedure Build_Formal_Parameter_List(This : in formal_part_opt_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate(This : in out formal_part_opt_nonterminal2);

   type formal_part_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      param_s_part : param_s_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Build_Formal_Parameter_List(This : in formal_part_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   function Get_Arity(This : in formal_part_nonterminal) return integer;
   procedure Translate(This : in out formal_part_nonterminal);

   type param_s_nonterminal is abstract new Parseable with null record;
   function Get_Arity(This : in param_s_nonterminal) return integer is abstract;
   procedure Build_Formal_Parameter_List(This : in param_s_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is abstract;
   
   type param_s_nonterminal1 is new param_s_nonterminal with record
      param_part : param_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in param_s_nonterminal1) return integer;
   procedure Build_Formal_Parameter_List(This : in param_s_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate(This : in out param_s_nonterminal1);
   
   type param_s_nonterminal2 is new param_s_nonterminal with record
      param_s_part : param_s_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
      param_part : param_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in param_s_nonterminal2) return integer;
   procedure Build_Formal_Parameter_List(This : in param_s_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);
   procedure Translate(This : in out param_s_nonterminal2);

   type param_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      mode_part : mode_nonterminal_Ptr;
      mark_part : mark_nonterminal_Ptr;
      init_opt_part : init_opt_nonterminal_Ptr;
   end record;
   function Get_Arity(This : in param_nonterminal) return integer;
   procedure Build_Formal_Parameter_List(This : in param_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer);   
   procedure Translate(This : in out param_nonterminal);

   type mode_nonterminal is abstract new Parseable with null record;
   function Is_Out(This : in mode_nonterminal) return boolean is abstract;
   
   type mode_nonterminal1 is new mode_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out mode_nonterminal1);
   function Is_Out(This : in mode_nonterminal1) return boolean;
   
   type mode_nonterminal2 is new mode_nonterminal with record
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out mode_nonterminal2);
   function Is_Out(This : in mode_nonterminal2) return boolean;
   
   type mode_nonterminal3 is new mode_nonterminal with record
      OUT_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out mode_nonterminal3);
   function Is_Out(This : in mode_nonterminal3) return boolean;
   
   type mode_nonterminal4 is new mode_nonterminal with record
      IN_part : Parseable_Token_Ptr;
      OUT_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out mode_nonterminal4);
   function Is_Out(This : in mode_nonterminal4) return boolean;
   
   type mode_nonterminal5 is new mode_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out mode_nonterminal5);
   function Is_Out(This : in mode_nonterminal5) return boolean;

   type subprog_spec_is_push_nonterminal is new Parseable with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subprog_spec_is_push_nonterminal);

   type subprog_body_nonterminal is new Parseable with record
      subprog_spec_is_push_part : subprog_spec_is_push_nonterminal_Ptr;
      decl_part_part : decl_part_nonterminal_Ptr;
      block_body_part : block_body_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subprog_body_nonterminal);

   type procedure_call_nonterminal is new Parseable with record
      name_part : name_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out procedure_call_nonterminal);

   type pkg_decl_nonterminal is abstract new Parseable with null record;
   type pkg_decl_nonterminal1 is new pkg_decl_nonterminal with record
      pkg_spec_part : pkg_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out pkg_decl_nonterminal1);
   type pkg_decl_nonterminal2 is new pkg_decl_nonterminal with record
      generic_pkg_inst_part : generic_pkg_inst_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out pkg_decl_nonterminal2);

   type pkg_spec_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      decl_item_s_part : decl_item_s_nonterminal_Ptr;
      private_part_part : private_part_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      c_id_opt_part : c_id_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out pkg_spec_nonterminal);

   type private_part_nonterminal is abstract new Parseable with null record;
   type private_part_nonterminal1 is new private_part_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out private_part_nonterminal1);
   type private_part_nonterminal2 is new private_part_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      decl_item_s_part : decl_item_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out private_part_nonterminal2);

   type c_id_opt_nonterminal is abstract new Parseable with null record;
   type c_id_opt_nonterminal1 is new c_id_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out c_id_opt_nonterminal1);
   type c_id_opt_nonterminal2 is new c_id_opt_nonterminal with record
      compound_name_part : compound_name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out c_id_opt_nonterminal2);

   type pkg_body_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      decl_part_part : decl_part_nonterminal_Ptr;
      body_opt_part : body_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      c_id_opt_part : c_id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out pkg_body_nonterminal);

   type body_opt_nonterminal is abstract new Parseable with null record;
   type body_opt_nonterminal1 is new body_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out body_opt_nonterminal1);
   type body_opt_nonterminal2 is new body_opt_nonterminal with record
      block_body_part : block_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out body_opt_nonterminal2);

   type private_type_nonterminal is new Parseable with record
      tagged_opt_part : tagged_opt_nonterminal_Ptr;
      limited_opt_part : limited_opt_nonterminal_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out private_type_nonterminal);

   type limited_opt_nonterminal is abstract new Parseable with null record;
   type limited_opt_nonterminal1 is new limited_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out limited_opt_nonterminal1);
   type limited_opt_nonterminal2 is new limited_opt_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out limited_opt_nonterminal2);

   type use_clause_nonterminal is abstract new Parseable with null record;
   type use_clause_nonterminal1 is new use_clause_nonterminal with record
      USE_part : Parseable_Token_Ptr;
      name_s_part : name_s_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out use_clause_nonterminal1);
   type use_clause_nonterminal2 is new use_clause_nonterminal with record
      USE_part : Parseable_Token_Ptr;
      TYPE_part : Parseable_Token_Ptr;
      name_s_part : name_s_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out use_clause_nonterminal2);

   type name_s_nonterminal is abstract new Parseable with null record;
   procedure Check_For_Supported_Packages(This : in name_s_nonterminal) is abstract;
   
   type name_s_nonterminal1 is new name_s_nonterminal with record
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Packages(This : in name_s_nonterminal1);
   procedure Translate(This : in out name_s_nonterminal1);
   
   type name_s_nonterminal2 is new name_s_nonterminal with record
      name_s_part : name_s_nonterminal_Ptr;
      COMMA_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Check_For_Supported_Packages(This : in name_s_nonterminal2);
   procedure Translate(This : in out name_s_nonterminal2);

   type rename_decl_nonterminal is abstract new Parseable with null record;
   type rename_decl_nonterminal1 is new rename_decl_nonterminal with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      object_qualifier_opt_part : object_qualifier_opt_nonterminal_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_decl_nonterminal1);
   type rename_decl_nonterminal2 is new rename_decl_nonterminal with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      EXCEPTION_part : Parseable_Token_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_decl_nonterminal2);
   type rename_decl_nonterminal3 is new rename_decl_nonterminal with record
      rename_unit_part : rename_unit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out rename_decl_nonterminal3);

   type rename_unit_nonterminal is abstract new Parseable with null record;
   type rename_unit_nonterminal1 is new rename_unit_nonterminal with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_unit_nonterminal1);
   type rename_unit_nonterminal2 is new rename_unit_nonterminal with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_unit_nonterminal2);
   type rename_unit_nonterminal3 is new rename_unit_nonterminal with record
      generic_formal_part_part : generic_formal_part_nonterminal_Ptr;
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_unit_nonterminal3);
   type rename_unit_nonterminal4 is new rename_unit_nonterminal with record
      generic_formal_part_part : generic_formal_part_nonterminal_Ptr;
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      renaming_part : renaming_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out rename_unit_nonterminal4);

   type renaming_nonterminal is new Parseable with record
      RENAMES_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out renaming_nonterminal);

   type task_decl_nonterminal is new Parseable with record
      task_spec_part : task_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out task_decl_nonterminal);

   type task_spec_nonterminal is abstract new Parseable with null record;
   type task_spec_nonterminal1 is new task_spec_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      task_def_part : task_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out task_spec_nonterminal1);
   type task_spec_nonterminal2 is new task_spec_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      TYPE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      discrim_part_opt_part : discrim_part_opt_nonterminal_Ptr;
      task_def_part : task_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out task_spec_nonterminal2);

   type task_def_nonterminal is abstract new Parseable with null record;
   type task_def_nonterminal1 is new task_def_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out task_def_nonterminal1);
   type task_def_nonterminal2 is new task_def_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      entry_decl_s_part : entry_decl_s_nonterminal_Ptr;
      rep_spec_s_part : rep_spec_s_nonterminal_Ptr;
      task_private_opt_part : task_private_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out task_def_nonterminal2);

   type task_private_opt_nonterminal is abstract new Parseable with null record;
   type task_private_opt_nonterminal1 is new task_private_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out task_private_opt_nonterminal1);
   type task_private_opt_nonterminal2 is new task_private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      entry_decl_s_part : entry_decl_s_nonterminal_Ptr;
      rep_spec_s_part : rep_spec_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out task_private_opt_nonterminal2);

   type task_body_nonterminal is new Parseable with record
      TASK_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      decl_part_part : decl_part_nonterminal_Ptr;
      block_body_part : block_body_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out task_body_nonterminal);

   type prot_decl_nonterminal is new Parseable with record
      prot_spec_part : prot_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out prot_decl_nonterminal);

   type prot_spec_nonterminal is abstract new Parseable with null record;
   type prot_spec_nonterminal1 is new prot_spec_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      prot_def_part : prot_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_spec_nonterminal1);
   type prot_spec_nonterminal2 is new prot_spec_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
      TYPE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      discrim_part_opt_part : discrim_part_opt_nonterminal_Ptr;
      prot_def_part : prot_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_spec_nonterminal2);

   type prot_def_nonterminal is new Parseable with record
      IS_part : Parseable_Token_Ptr;
      prot_op_decl_s_part : prot_op_decl_s_nonterminal_Ptr;
      prot_private_opt_part : prot_private_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_def_nonterminal);

   type prot_private_opt_nonterminal is abstract new Parseable with null record;
   type prot_private_opt_nonterminal1 is new prot_private_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out prot_private_opt_nonterminal1);
   type prot_private_opt_nonterminal2 is new prot_private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      prot_elem_decl_s_part : prot_elem_decl_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_private_opt_nonterminal2);

   type prot_op_decl_s_nonterminal is abstract new Parseable with null record;
   type prot_op_decl_s_nonterminal1 is new prot_op_decl_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out prot_op_decl_s_nonterminal1);
   type prot_op_decl_s_nonterminal2 is new prot_op_decl_s_nonterminal with record
      prot_op_decl_s_part : prot_op_decl_s_nonterminal_Ptr;
      prot_op_decl_part : prot_op_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_decl_s_nonterminal2);

   type prot_op_decl_nonterminal is abstract new Parseable with null record;
   type prot_op_decl_nonterminal1 is new prot_op_decl_nonterminal with record
      entry_decl_part : entry_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_decl_nonterminal1);
   type prot_op_decl_nonterminal2 is new prot_op_decl_nonterminal with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out prot_op_decl_nonterminal2);
   type prot_op_decl_nonterminal3 is new prot_op_decl_nonterminal with record
      rep_spec_part : rep_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_decl_nonterminal3);
   type prot_op_decl_nonterminal4 is new prot_op_decl_nonterminal with record
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_decl_nonterminal4);

   type prot_elem_decl_s_nonterminal is abstract new Parseable with null record;
   type prot_elem_decl_s_nonterminal1 is new prot_elem_decl_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out prot_elem_decl_s_nonterminal1);
   type prot_elem_decl_s_nonterminal2 is new prot_elem_decl_s_nonterminal with record
      prot_elem_decl_s_part : prot_elem_decl_s_nonterminal_Ptr;
      prot_elem_decl_part : prot_elem_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_elem_decl_s_nonterminal2);

   type prot_elem_decl_nonterminal is abstract new Parseable with null record;
   type prot_elem_decl_nonterminal1 is new prot_elem_decl_nonterminal with record
      prot_op_decl_part : prot_op_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_elem_decl_nonterminal1);
   type prot_elem_decl_nonterminal2 is new prot_elem_decl_nonterminal with record
      comp_decl_part : comp_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_elem_decl_nonterminal2);

   type prot_body_nonterminal is new Parseable with record
      PROTECTED_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      prot_op_body_s_part : prot_op_body_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out prot_body_nonterminal);

   type prot_op_body_s_nonterminal is abstract new Parseable with null record;
   type prot_op_body_s_nonterminal1 is new prot_op_body_s_nonterminal with record
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_body_s_nonterminal1);
   type prot_op_body_s_nonterminal2 is new prot_op_body_s_nonterminal with record
      prot_op_body_s_part : prot_op_body_s_nonterminal_Ptr;
      prot_op_body_part : prot_op_body_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_body_s_nonterminal2);

   type prot_op_body_nonterminal is abstract new Parseable with null record;
   type prot_op_body_nonterminal1 is new prot_op_body_nonterminal with record
      entry_body_part : entry_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_body_nonterminal1);
   type prot_op_body_nonterminal2 is new prot_op_body_nonterminal with record
      subprog_body_part : subprog_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out prot_op_body_nonterminal2);
   type prot_op_body_nonterminal3 is new prot_op_body_nonterminal with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out prot_op_body_nonterminal3);

   type entry_decl_s_nonterminal is abstract new Parseable with null record;
   type entry_decl_s_nonterminal1 is new entry_decl_s_nonterminal with record
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_decl_s_nonterminal1);
   type entry_decl_s_nonterminal2 is new entry_decl_s_nonterminal with record
      entry_decl_s_part : entry_decl_s_nonterminal_Ptr;
      entry_decl_part : entry_decl_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_decl_s_nonterminal2);

   type entry_decl_nonterminal is abstract new Parseable with null record;
   type entry_decl_nonterminal1 is new entry_decl_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out entry_decl_nonterminal1);
   type entry_decl_nonterminal2 is new entry_decl_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      discrete_range_part : discrete_range_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out entry_decl_nonterminal2);

   type entry_body_nonterminal is abstract new Parseable with null record;
   type entry_body_nonterminal1 is new entry_body_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      WHEN_part : Parseable_Token_Ptr;
      condition_part : condition_nonterminal_Ptr;
      entry_body_part_part : entry_body_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_body_nonterminal1);
   type entry_body_nonterminal2 is new entry_body_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      iter_part_part : iter_part_nonterminal_Ptr;
      discrete_range_part : discrete_range_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      WHEN_part : Parseable_Token_Ptr;
      condition_part : condition_nonterminal_Ptr;
      entry_body_part_part : entry_body_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_body_nonterminal2);

   type entry_body_part_nonterminal is abstract new Parseable with null record;
   type entry_body_part_nonterminal1 is new entry_body_part_nonterminal with record
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out entry_body_part_nonterminal1);
   type entry_body_part_nonterminal2 is new entry_body_part_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      decl_part_part : decl_part_nonterminal_Ptr;
      block_body_part : block_body_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out entry_body_part_nonterminal2);

   type rep_spec_s_nonterminal is abstract new Parseable with null record;
   type rep_spec_s_nonterminal1 is new rep_spec_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out rep_spec_s_nonterminal1);
   type rep_spec_s_nonterminal2 is new rep_spec_s_nonterminal with record
      rep_spec_s_part : rep_spec_s_nonterminal_Ptr;
      rep_spec_part : rep_spec_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out rep_spec_s_nonterminal2);

   type entry_call_nonterminal is new Parseable with record
      procedure_call_part : procedure_call_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_call_nonterminal);

   type accept_stmt_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in accept_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is abstract;
   
   type accept_stmt_nonterminal1 is new accept_stmt_nonterminal with record
      accept_hdr_part : accept_hdr_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in accept_stmt_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out accept_stmt_nonterminal1);
   
   type accept_stmt_nonterminal2 is new accept_stmt_nonterminal with record
      accept_hdr_part : accept_hdr_nonterminal_Ptr;
      DO_part : Parseable_Token_Ptr;
      handled_stmt_s_part : handled_stmt_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      id_opt_part : id_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Mark_For_Loops(This : in accept_stmt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr);
   procedure Translate(This : in out accept_stmt_nonterminal2);

   type accept_hdr_nonterminal is new Parseable with record
      accept_part : Parseable_Token_Ptr;
      entry_name_part : entry_name_nonterminal_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out accept_hdr_nonterminal);

   type entry_name_nonterminal is abstract new Parseable with null record;
   type entry_name_nonterminal1 is new entry_name_nonterminal with record
      simple_name_part : simple_name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out entry_name_nonterminal1);
   type entry_name_nonterminal2 is new entry_name_nonterminal with record
      entry_name_part : entry_name_nonterminal_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out entry_name_nonterminal2);

   type delay_stmt_nonterminal is abstract new Parseable with null record;
   type delay_stmt_nonterminal1 is new delay_stmt_nonterminal with record
      DELAY_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out delay_stmt_nonterminal1);
   type delay_stmt_nonterminal2 is new delay_stmt_nonterminal with record
      DELAY_part : Parseable_Token_Ptr;
      UNTIL_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out delay_stmt_nonterminal2);

   type select_stmt_nonterminal is abstract new Parseable with null record;
   procedure Mark_For_Loops(This : in select_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr);
   
   type select_stmt_nonterminal1 is new select_stmt_nonterminal with record
      select_wait_part : select_wait_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_stmt_nonterminal1);
   type select_stmt_nonterminal2 is new select_stmt_nonterminal with record
      async_select_part : async_select_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_stmt_nonterminal2);
   type select_stmt_nonterminal3 is new select_stmt_nonterminal with record
      timed_entry_call_part : timed_entry_call_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_stmt_nonterminal3);
   type select_stmt_nonterminal4 is new select_stmt_nonterminal with record
      cond_entry_call_part : cond_entry_call_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_stmt_nonterminal4);

   type select_wait_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      guarded_select_alt_part : guarded_select_alt_nonterminal_Ptr;
      or_select_part : or_select_nonterminal_Ptr;
      else_opt_part : else_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out select_wait_nonterminal);

   type guarded_select_alt_nonterminal is abstract new Parseable with null record;
   type guarded_select_alt_nonterminal1 is new guarded_select_alt_nonterminal with record
      select_alt_part : select_alt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out guarded_select_alt_nonterminal1);
   type guarded_select_alt_nonterminal2 is new guarded_select_alt_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      condition_part : condition_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      select_alt_part : select_alt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out guarded_select_alt_nonterminal2);

   type or_select_nonterminal is abstract new Parseable with null record;
   type or_select_nonterminal1 is new or_select_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out or_select_nonterminal1);
   type or_select_nonterminal2 is new or_select_nonterminal with record
      or_select_part : or_select_nonterminal_Ptr;
      OR_part : Parseable_Token_Ptr;
      guarded_select_alt_part : guarded_select_alt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out or_select_nonterminal2);

   type select_alt_nonterminal is abstract new Parseable with null record;
   type select_alt_nonterminal1 is new select_alt_nonterminal with record
      accept_stmt_part : accept_stmt_nonterminal_Ptr;
      stmts_opt_part : stmts_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_alt_nonterminal1);
   type select_alt_nonterminal2 is new select_alt_nonterminal with record
      delay_stmt_part : delay_stmt_nonterminal_Ptr;
      stmts_opt_part : stmts_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out select_alt_nonterminal2);
   type select_alt_nonterminal3 is new select_alt_nonterminal with record
      TERMINATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out select_alt_nonterminal3);

   type delay_or_entry_alt_nonterminal is abstract new Parseable with null record;
   type delay_or_entry_alt_nonterminal1 is new delay_or_entry_alt_nonterminal with record
      delay_stmt_part : delay_stmt_nonterminal_Ptr;
      stmts_opt_part : stmts_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out delay_or_entry_alt_nonterminal1);
   type delay_or_entry_alt_nonterminal2 is new delay_or_entry_alt_nonterminal with record
      entry_call_part : entry_call_nonterminal_Ptr;
      stmts_opt_part : stmts_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out delay_or_entry_alt_nonterminal2);

   type async_select_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      delay_or_entry_alt_part : delay_or_entry_alt_nonterminal_Ptr;
      THEN_part : Parseable_Token_Ptr;
      abort_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out async_select_nonterminal);

   type timed_entry_call_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      entry_call_part : entry_call_nonterminal_Ptr;
      stmts_opt_part1 : stmts_opt_nonterminal_Ptr;
      OR_part : Parseable_Token_Ptr;
      delay_stmt_part : delay_stmt_nonterminal_Ptr;
      stmts_opt_part2 : stmts_opt_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out timed_entry_call_nonterminal);

   type cond_entry_call_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      entry_call_part : entry_call_nonterminal_Ptr;
      stmts_opt_part : stmts_opt_nonterminal_Ptr;
      ELSE_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out cond_entry_call_nonterminal);

   type stmts_opt_nonterminal is abstract new Parseable with null record;
   type stmts_opt_nonterminal1 is new stmts_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out stmts_opt_nonterminal1);
   type stmts_opt_nonterminal2 is new stmts_opt_nonterminal with record
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out stmts_opt_nonterminal2);

   type abort_stmt_nonterminal is new Parseable with record
      abort_part : Parseable_Token_Ptr;
      name_s_part : name_s_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out abort_stmt_nonterminal);

   type compilation_nonterminal is abstract new Parseable with null record;
   type compilation_nonterminal1 is new compilation_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out compilation_nonterminal1);
   type compilation_nonterminal2 is new compilation_nonterminal with record
      compilation_part : compilation_nonterminal_Ptr;
      comp_unit_part : comp_unit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out compilation_nonterminal2);
   type compilation_nonterminal3 is new compilation_nonterminal with record
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out compilation_nonterminal3);

   type comp_unit_nonterminal is abstract new Parseable with null record;
   type comp_unit_nonterminal1 is new comp_unit_nonterminal with record
      context_spec_part : context_spec_nonterminal_Ptr;
      private_opt_part : private_opt_nonterminal_Ptr;
      unit_part : unit_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_unit_nonterminal1);
   type comp_unit_nonterminal2 is new comp_unit_nonterminal with record
      private_opt_part : private_opt_nonterminal_Ptr;
      unit_part : unit_nonterminal_Ptr;
      pragma_s_part : pragma_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out comp_unit_nonterminal2);

   type private_opt_nonterminal is abstract new Parseable with null record;
   type private_opt_nonterminal1 is new private_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out private_opt_nonterminal1);
   type private_opt_nonterminal2 is new private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out private_opt_nonterminal2);

   type context_spec_nonterminal is abstract new Parseable with null record;
   type context_spec_nonterminal1 is new context_spec_nonterminal with record
      with_clause_part : with_clause_nonterminal_Ptr;
      use_clause_opt_part : use_clause_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out context_spec_nonterminal1);
   type context_spec_nonterminal2 is new context_spec_nonterminal with record
      context_spec_part : context_spec_nonterminal_Ptr;
      with_clause_part : with_clause_nonterminal_Ptr;
      use_clause_opt_part : use_clause_opt_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out context_spec_nonterminal2);
   type context_spec_nonterminal3 is new context_spec_nonterminal with record
      context_spec_part : context_spec_nonterminal_Ptr;
      pragma_sym_part : pragma_sym_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out context_spec_nonterminal3);

   type with_clause_nonterminal is new Parseable with record
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : c_name_list_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out with_clause_nonterminal);

   type use_clause_opt_nonterminal is abstract new Parseable with null record;
   type use_clause_opt_nonterminal1 is new use_clause_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out use_clause_opt_nonterminal1);
   type use_clause_opt_nonterminal2 is new use_clause_opt_nonterminal with record
      use_clause_opt_part : use_clause_opt_nonterminal_Ptr;
      use_clause_part : use_clause_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out use_clause_opt_nonterminal2);

   type unit_nonterminal is abstract new Parseable with null record;
   type unit_nonterminal1 is new unit_nonterminal with record
      pkg_decl_part : pkg_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal1);
   type unit_nonterminal2 is new unit_nonterminal with record
      pkg_body_part : pkg_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal2);
   type unit_nonterminal3 is new unit_nonterminal with record
      subprog_decl_part : subprog_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal3);
   type unit_nonterminal4 is new unit_nonterminal with record
      subprog_body_part : subprog_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal4);
   type unit_nonterminal5 is new unit_nonterminal with record
      subunit_part : subunit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal5);
   type unit_nonterminal6 is new unit_nonterminal with record
      generic_decl_part : generic_decl_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal6);
   type unit_nonterminal7 is new unit_nonterminal with record
      rename_unit_part : rename_unit_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out unit_nonterminal7);

   type subunit_nonterminal is new Parseable with record
      SEPARATE_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      subunit_body_part : subunit_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subunit_nonterminal);

   type subunit_body_nonterminal is abstract new Parseable with null record;
   type subunit_body_nonterminal1 is new subunit_body_nonterminal with record
      subprog_body_part : subprog_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subunit_body_nonterminal1);
   type subunit_body_nonterminal2 is new subunit_body_nonterminal with record
      pkg_body_part : pkg_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subunit_body_nonterminal2);
   type subunit_body_nonterminal3 is new subunit_body_nonterminal with record
      task_body_part : task_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subunit_body_nonterminal3);
   type subunit_body_nonterminal4 is new subunit_body_nonterminal with record
      prot_body_part : prot_body_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subunit_body_nonterminal4);

   type body_stub_nonterminal is abstract new Parseable with null record;
   type body_stub_nonterminal1 is new body_stub_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out body_stub_nonterminal1);
   type body_stub_nonterminal2 is new body_stub_nonterminal with record
      PACKAGE_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out body_stub_nonterminal2);
   type body_stub_nonterminal3 is new body_stub_nonterminal with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out body_stub_nonterminal3);
   type body_stub_nonterminal4 is new body_stub_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out body_stub_nonterminal4);

   type exception_decl_nonterminal is new Parseable with record
      def_id_s_part : def_id_s_nonterminal_Ptr;
      COLON_part : Parseable_Token_Ptr;
      EXCEPTION_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out exception_decl_nonterminal);

   type except_handler_part_nonterminal is abstract new Parseable with null record;
   type except_handler_part_nonterminal1 is new except_handler_part_nonterminal with record
      EXCEPTION_part : Parseable_Token_Ptr;
      exception_handler_part : exception_handler_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_handler_part_nonterminal1);
   type except_handler_part_nonterminal2 is new except_handler_part_nonterminal with record
      except_handler_part_part : except_handler_part_nonterminal_Ptr;
      exception_handler_part : exception_handler_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_handler_part_nonterminal2);

   type exception_handler_nonterminal is abstract new Parseable with null record;
   type exception_handler_nonterminal1 is new exception_handler_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      except_choice_s_part : except_choice_s_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out exception_handler_nonterminal1);
   type exception_handler_nonterminal2 is new exception_handler_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      COLON_part : Parseable_Token_Ptr;
      except_choice_s_part : except_choice_s_nonterminal_Ptr;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : statement_s_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out exception_handler_nonterminal2);

   type except_choice_s_nonterminal is abstract new Parseable with null record;
   type except_choice_s_nonterminal1 is new except_choice_s_nonterminal with record
      except_choice_part : except_choice_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_choice_s_nonterminal1);
   type except_choice_s_nonterminal2 is new except_choice_s_nonterminal with record
      except_choice_s_part : except_choice_s_nonterminal_Ptr;
      PIPE_part : Parseable_Token_Ptr;
      except_choice_part : except_choice_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_choice_s_nonterminal2);

   type except_choice_nonterminal is abstract new Parseable with null record;
   type except_choice_nonterminal1 is new except_choice_nonterminal with record
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out except_choice_nonterminal1);
   type except_choice_nonterminal2 is new except_choice_nonterminal with record
      OTHERS_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out except_choice_nonterminal2);

   type raise_stmt_nonterminal is new Parseable with record
      RAISE_part : Parseable_Token_Ptr;
      name_opt_part : name_opt_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out raise_stmt_nonterminal);

   type requeue_stmt_nonterminal is abstract new Parseable with null record;
   type requeue_stmt_nonterminal1 is new requeue_stmt_nonterminal with record
      REQUEUE_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out requeue_stmt_nonterminal1);
   type requeue_stmt_nonterminal2 is new requeue_stmt_nonterminal with record
      REQUEUE_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      abort_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out requeue_stmt_nonterminal2);

   type generic_decl_nonterminal is abstract new Parseable with null record;
   type generic_decl_nonterminal1 is new generic_decl_nonterminal with record
      generic_formal_part_part : generic_formal_part_nonterminal_Ptr;
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_decl_nonterminal1);
   type generic_decl_nonterminal2 is new generic_decl_nonterminal with record
      generic_formal_part_part : generic_formal_part_nonterminal_Ptr;
      pkg_spec_part : pkg_spec_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_decl_nonterminal2);

   type generic_formal_part_nonterminal is abstract new Parseable with null record;
   type generic_formal_part_nonterminal1 is new generic_formal_part_nonterminal with record
      GENERIC_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_part_nonterminal1);
   type generic_formal_part_nonterminal2 is new generic_formal_part_nonterminal with record
      generic_formal_part_part : generic_formal_part_nonterminal_Ptr;
      generic_formal_part : generic_formal_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_part_nonterminal2);

   type generic_formal_nonterminal is abstract new Parseable with null record;
   type generic_formal_nonterminal1 is new generic_formal_nonterminal with record
      param_part : param_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal1);
   type generic_formal_nonterminal2 is new generic_formal_nonterminal with record
      TYPE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      generic_discrim_part_opt_part : generic_discrim_part_opt_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      generic_type_def_part : generic_type_def_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal2);
   type generic_formal_nonterminal3 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PROCEDURE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      subp_default_part : subp_default_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal3);
   type generic_formal_nonterminal4 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : designator_nonterminal_Ptr;
      formal_part_opt_part : formal_part_opt_nonterminal_Ptr;
      RETURN_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      subp_default_part : subp_default_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal4);
   type generic_formal_nonterminal5 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PACKAGE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal5);
   type generic_formal_nonterminal6 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PACKAGE_part : Parseable_Token_Ptr;
      simple_name_part : simple_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal6);
   type generic_formal_nonterminal7 is new generic_formal_nonterminal with record
      use_clause_part : use_clause_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_formal_nonterminal7);

   type generic_discrim_part_opt_nonterminal is abstract new Parseable with null record;
   type generic_discrim_part_opt_nonterminal1 is new generic_discrim_part_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out generic_discrim_part_opt_nonterminal1);
   type generic_discrim_part_opt_nonterminal2 is new generic_discrim_part_opt_nonterminal with record
      discrim_part_part : discrim_part_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_discrim_part_opt_nonterminal2);
   type generic_discrim_part_opt_nonterminal3 is new generic_discrim_part_opt_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_discrim_part_opt_nonterminal3);

   type subp_default_nonterminal is abstract new Parseable with null record;
   type subp_default_nonterminal1 is new subp_default_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out subp_default_nonterminal1);
   type subp_default_nonterminal2 is new subp_default_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out subp_default_nonterminal2);
   type subp_default_nonterminal3 is new subp_default_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out subp_default_nonterminal3);

   type generic_type_def_nonterminal is abstract new Parseable with null record;
   type generic_type_def_nonterminal1 is new generic_type_def_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal1);
   type generic_type_def_nonterminal2 is new generic_type_def_nonterminal with record
      RANGE_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal2);
   type generic_type_def_nonterminal3 is new generic_type_def_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal3);
   type generic_type_def_nonterminal4 is new generic_type_def_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal4);
   type generic_type_def_nonterminal5 is new generic_type_def_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      BOX_part1 : Parseable_Token_Ptr;
      DIGITS_part : Parseable_Token_Ptr;
      BOX_part2 : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal5);
   type generic_type_def_nonterminal6 is new generic_type_def_nonterminal with record
      DIGITS_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal6);
   type generic_type_def_nonterminal7 is new generic_type_def_nonterminal with record
      array_type_part : array_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal7);
   type generic_type_def_nonterminal8 is new generic_type_def_nonterminal with record
      access_type_part : access_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal8);
   type generic_type_def_nonterminal9 is new generic_type_def_nonterminal with record
      private_type_part : private_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal9);
   type generic_type_def_nonterminal10 is new generic_type_def_nonterminal with record
      generic_derived_type_part : generic_derived_type_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_type_def_nonterminal10);

   type generic_derived_type_nonterminal is abstract new Parseable with null record;
   type generic_derived_type_nonterminal1 is new generic_derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_derived_type_nonterminal1);
   type generic_derived_type_nonterminal2 is new generic_derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_derived_type_nonterminal2);
   type generic_derived_type_nonterminal3 is new generic_derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : subtype_ind_nonterminal_Ptr;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out generic_derived_type_nonterminal3);

   type generic_subp_inst_nonterminal is new Parseable with record
      subprog_spec_part : subprog_spec_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : generic_inst_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_subp_inst_nonterminal);

   type generic_pkg_inst_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : compound_name_nonterminal_Ptr;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : generic_inst_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_pkg_inst_nonterminal);

   type generic_inst_nonterminal is new Parseable with record
      NEW_part : Parseable_Token_Ptr;
      name_part : name_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out generic_inst_nonterminal);

   type rep_spec_nonterminal is abstract new Parseable with null record;
   type rep_spec_nonterminal1 is new rep_spec_nonterminal with record
      attrib_def_part : attrib_def_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out rep_spec_nonterminal1);
   type rep_spec_nonterminal2 is new rep_spec_nonterminal with record
      record_type_spec_part : record_type_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out rep_spec_nonterminal2);
   type rep_spec_nonterminal3 is new rep_spec_nonterminal with record
      address_spec_part : address_spec_nonterminal_Ptr;
   end record;
   procedure Translate(This : in out rep_spec_nonterminal3);

   type attrib_def_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : mark_nonterminal_Ptr;
      USE_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out attrib_def_nonterminal);

   type record_type_spec_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : mark_nonterminal_Ptr;
      USE_part : Parseable_Token_Ptr;
      RECORD_part1 : Parseable_Token_Ptr;
      align_opt_part : align_opt_nonterminal_Ptr;
      comp_loc_s_part : comp_loc_s_nonterminal_Ptr;
      END_part : Parseable_Token_Ptr;
      RECORD_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out record_type_spec_nonterminal);

   type align_opt_nonterminal is abstract new Parseable with null record;
   type align_opt_nonterminal1 is new align_opt_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out align_opt_nonterminal1);
   type align_opt_nonterminal2 is new align_opt_nonterminal with record
      AT_part : Parseable_Token_Ptr;
      MOD_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out align_opt_nonterminal2);

   type comp_loc_s_nonterminal is abstract new Parseable with null record;
   type comp_loc_s_nonterminal1 is new comp_loc_s_nonterminal with record
      null;
   end record;
   procedure Translate(This : in out comp_loc_s_nonterminal1);
   type comp_loc_s_nonterminal2 is new comp_loc_s_nonterminal with record
      comp_loc_s_part : comp_loc_s_nonterminal_Ptr;
      mark_part : mark_nonterminal_Ptr;
      AT_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      RANGE_part : Parseable_Token_Ptr;
      range_sym_part : range_sym_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out comp_loc_s_nonterminal2);

   type address_spec_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : mark_nonterminal_Ptr;
      USE_part : Parseable_Token_Ptr;
      AT_part : Parseable_Token_Ptr;
      expression_part : expression_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out address_spec_nonterminal);

   type code_stmt_nonterminal is new Parseable with record
      qualified_part : qualified_nonterminal_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Translate(This : in out code_stmt_nonterminal);
end trans_Model;