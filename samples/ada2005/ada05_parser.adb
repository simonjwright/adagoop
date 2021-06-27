
with Text_IO;
use Text_IO;
with ada05;
use ada05;
with ada05_Goto;
use ada05_Goto;
with ada05_Shift_Reduce;
use ada05_Shift_Reduce;
with ada05_Tokens;
use ada05_Tokens;
with code_stmt_model;
use code_stmt_model;
with address_spec_model;
use address_spec_model;
with comp_loc_s_model;
use comp_loc_s_model;
with align_opt_model;
use align_opt_model;
with record_type_spec_model;
use record_type_spec_model;
with attrib_def_model;
use attrib_def_model;
with rep_spec_model;
use rep_spec_model;
with generic_inst_model;
use generic_inst_model;
with generic_pkg_inst_model;
use generic_pkg_inst_model;
with generic_subp_inst_model;
use generic_subp_inst_model;
with generic_derived_type_model;
use generic_derived_type_model;
with generic_type_def_model;
use generic_type_def_model;
with subp_default_model;
use subp_default_model;
with generic_discrim_part_opt_model;
use generic_discrim_part_opt_model;
with generic_formal_model;
use generic_formal_model;
with generic_formal_part_model;
use generic_formal_part_model;
with generic_decl_model;
use generic_decl_model;
with requeue_stmt_model;
use requeue_stmt_model;
with raise_stmt_model;
use raise_stmt_model;
with except_choice_model;
use except_choice_model;
with except_choice_s_model;
use except_choice_s_model;
with exception_handler_model;
use exception_handler_model;
with except_handler_part_model;
use except_handler_part_model;
with exception_decl_model;
use exception_decl_model;
with body_stub_model;
use body_stub_model;
with subunit_body_model;
use subunit_body_model;
with subunit_model;
use subunit_model;
with unit_model;
use unit_model;
with use_clause_opt_model;
use use_clause_opt_model;
with with_clause_model;
use with_clause_model;
with context_spec_model;
use context_spec_model;
with private_opt_model;
use private_opt_model;
with comp_unit_model;
use comp_unit_model;
with compilation_model;
use compilation_model;
with abort_stmt_model;
use abort_stmt_model;
with stmts_opt_model;
use stmts_opt_model;
with cond_entry_call_model;
use cond_entry_call_model;
with timed_entry_call_model;
use timed_entry_call_model;
with async_select_model;
use async_select_model;
with delay_or_entry_alt_model;
use delay_or_entry_alt_model;
with select_alt_model;
use select_alt_model;
with or_select_model;
use or_select_model;
with guarded_select_alt_model;
use guarded_select_alt_model;
with select_wait_model;
use select_wait_model;
with select_stmt_model;
use select_stmt_model;
with delay_stmt_model;
use delay_stmt_model;
with entry_name_model;
use entry_name_model;
with accept_hdr_model;
use accept_hdr_model;
with accept_stmt_model;
use accept_stmt_model;
with entry_call_model;
use entry_call_model;
with rep_spec_s_model;
use rep_spec_s_model;
with entry_body_part_model;
use entry_body_part_model;
with entry_body_model;
use entry_body_model;
with entry_decl_model;
use entry_decl_model;
with entry_decl_s_model;
use entry_decl_s_model;
with prot_op_body_model;
use prot_op_body_model;
with prot_op_body_s_model;
use prot_op_body_s_model;
with prot_body_model;
use prot_body_model;
with prot_elem_decl_model;
use prot_elem_decl_model;
with prot_elem_decl_s_model;
use prot_elem_decl_s_model;
with prot_op_decl_model;
use prot_op_decl_model;
with prot_op_decl_s_model;
use prot_op_decl_s_model;
with prot_private_opt_model;
use prot_private_opt_model;
with prot_def_model;
use prot_def_model;
with prot_spec_model;
use prot_spec_model;
with prot_decl_model;
use prot_decl_model;
with task_body_model;
use task_body_model;
with task_private_opt_model;
use task_private_opt_model;
with task_def_model;
use task_def_model;
with opt_task_interfaces_model;
use opt_task_interfaces_model;
with task_spec_model;
use task_spec_model;
with task_decl_model;
use task_decl_model;
with renaming_model;
use renaming_model;
with rename_unit_model;
use rename_unit_model;
with rename_decl_model;
use rename_decl_model;
with name_s_model;
use name_s_model;
with use_clause_model;
use use_clause_model;
with limited_opt_model;
use limited_opt_model;
with private_type_model;
use private_type_model;
with body_opt_model;
use body_opt_model;
with pkg_body_model;
use pkg_body_model;
with c_id_opt_model;
use c_id_opt_model;
with private_part_model;
use private_part_model;
with pkg_spec_model;
use pkg_spec_model;
with pkg_decl_model;
use pkg_decl_model;
with procedure_call_model;
use procedure_call_model;
with subprog_body_model;
use subprog_body_model;
with subprog_spec_is_push_model;
use subprog_spec_is_push_model;
with mode_model;
use mode_model;
with param_model;
use param_model;
with param_s_model;
use param_s_model;
with formal_part_model;
use formal_part_model;
with formal_part_opt_model;
use formal_part_opt_model;
with designator_model;
use designator_model;
with subprog_spec_model;
use subprog_spec_model;
with subprog_decl_model;
use subprog_decl_model;
with goto_stmt_model;
use goto_stmt_model;
with return_stmt_model;
use return_stmt_model;
with opt_do_block_model;
use opt_do_block_model;
with return_subtype_model;
use return_subtype_model;
with opt_assign_model;
use opt_assign_model;
with opt_aliased_model;
use opt_aliased_model;
with when_opt_model;
use when_opt_model;
with name_opt_model;
use name_opt_model;
with exit_stmt_model;
use exit_stmt_model;
with except_handler_part_opt_model;
use except_handler_part_opt_model;
with handled_stmt_s_model;
use handled_stmt_s_model;
with block_body_model;
use block_body_model;
with block_decl_model;
use block_decl_model;
with block_model;
use block_model;
with id_opt_model;
use id_opt_model;
with basic_loop_model;
use basic_loop_model;
with reverse_opt_model;
use reverse_opt_model;
with iter_part_model;
use iter_part_model;
with iteration_model;
use iteration_model;
with label_opt_model;
use label_opt_model;
with loop_stmt_model;
use loop_stmt_model;
with alternative_model;
use alternative_model;
with alternative_s_model;
use alternative_s_model;
with case_hdr_model;
use case_hdr_model;
with case_stmt_model;
use case_stmt_model;
with else_opt_model;
use else_opt_model;
with condition_model;
use condition_model;
with cond_part_model;
use cond_part_model;
with cond_clause_model;
use cond_clause_model;
with cond_clause_s_model;
use cond_clause_s_model;
with if_stmt_model;
use if_stmt_model;
with assign_stmt_model;
use assign_stmt_model;
with null_stmt_model;
use null_stmt_model;
with label_model;
use label_model;
with compound_stmt_model;
use compound_stmt_model;
with simple_stmt_model;
use simple_stmt_model;
with unlabeled_model;
use unlabeled_model;
with statement_model;
use statement_model;
with statement_s_model;
use statement_s_model;
with allocator_model;
use allocator_model;
with qualified_model;
use qualified_model;
with parenthesized_primary_model;
use parenthesized_primary_model;
with primary_model;
use primary_model;
with factor_model;
use factor_model;
with multiplying_model;
use multiplying_model;
with term_model;
use term_model;
with adding_model;
use adding_model;
with unary_model;
use unary_model;
with simple_expression_model;
use simple_expression_model;
with membership_model;
use membership_model;
with relational_model;
use relational_model;
with relation_model;
use relation_model;
with logical_model;
use logical_model;
with expression_model;
use expression_model;
with comp_assoc_model;
use comp_assoc_model;
with value_s_2_model;
use value_s_2_model;
with aggregate_model;
use aggregate_model;
with literal_model;
use literal_model;
with attribute_id_model;
use attribute_id_model;
with attribute_model;
use attribute_model;
with selected_comp_model;
use selected_comp_model;
with value_model;
use value_model;
with value_s_model;
use value_s_model;
with indexed_comp_model;
use indexed_comp_model;
with operator_symbol_model;
use operator_symbol_model;
with used_char_model;
use used_char_model;
with c_name_list_model;
use c_name_list_model;
with compound_name_model;
use compound_name_model;
with simple_name_model;
use simple_name_model;
with mark_model;
use mark_model;
with name_model;
use name_model;
with body_nt_model;
use body_nt_model;
with decl_item_or_body_model;
use decl_item_or_body_model;
with decl_item_or_body_s1_model;
use decl_item_or_body_s1_model;
with decl_item_model;
use decl_item_model;
with decl_item_s1_model;
use decl_item_s1_model;
with decl_item_s_model;
use decl_item_s_model;
with decl_part_model;
use decl_part_model;
with prot_opt_model;
use prot_opt_model;
with access_type_model;
use access_type_model;
with not_null_opt_access_model;
use not_null_opt_access_model;
with not_null_opt_model;
use not_null_opt_model;
with discrete_with_range_model;
use discrete_with_range_model;
with choice_model;
use choice_model;
with choice_s_model;
use choice_s_model;
with variant_model;
use variant_model;
with variant_s_model;
use variant_s_model;
with variant_part_model;
use variant_part_model;
with access_opt_model;
use access_opt_model;
with discrim_spec_model;
use discrim_spec_model;
with discrim_spec_s_model;
use discrim_spec_s_model;
with discrim_part_model;
use discrim_part_model;
with comp_decl_model;
use comp_decl_model;
with variant_part_opt_model;
use variant_part_opt_model;
with comp_decl_s_model;
use comp_decl_s_model;
with comp_list_model;
use comp_list_model;
with tagged_opt_model;
use tagged_opt_model;
with record_def_model;
use record_def_model;
with record_type_model;
use record_type_model;
with range_constr_opt_model;
use range_constr_opt_model;
with discrete_range_model;
use discrete_range_model;
with iter_discrete_range_s_model;
use iter_discrete_range_s_model;
with iter_index_constraint_model;
use iter_index_constraint_model;
with index_model;
use index_model;
with index_s_model;
use index_s_model;
with aliased_opt_model;
use aliased_opt_model;
with component_subtype_def_model;
use component_subtype_def_model;
with constr_array_type_model;
use constr_array_type_model;
with unconstr_array_type_model;
use unconstr_array_type_model;
with array_type_model;
use array_type_model;
with fixed_type_model;
use fixed_type_model;
with float_type_model;
use float_type_model;
with real_type_model;
use real_type_model;
with range_spec_opt_model;
use range_spec_opt_model;
with range_spec_model;
use range_spec_model;
with integer_type_model;
use integer_type_model;
with interface_type_model;
use interface_type_model;
with enum_id_model;
use enum_id_model;
with enum_id_s_model;
use enum_id_s_model;
with enumeration_type_model;
use enumeration_type_model;
with range_sym_model;
use range_sym_model;
with range_constraint_model;
use range_constraint_model;
with derived_type_model;
use derived_type_model;
with opt_interface_list_model;
use opt_interface_list_model;
with decimal_digits_constraint_model;
use decimal_digits_constraint_model;
with constraint_model;
use constraint_model;
with subtype_ind_model;
use subtype_ind_model;
with subtype_decl_model;
use subtype_decl_model;
with type_def_model;
use type_def_model;
with type_completion_model;
use type_completion_model;
with discrim_part_opt_model;
use discrim_part_opt_model;
with type_decl_model;
use type_decl_model;
with number_decl_model;
use number_decl_model;
with init_opt_model;
use init_opt_model;
with object_subtype_def_model;
use object_subtype_def_model;
with object_qualifier_opt_model;
use object_qualifier_opt_model;
with def_id_model;
use def_id_model;
with def_id_s_model;
use def_id_s_model;
with object_decl_model;
use object_decl_model;
with decl_model;
use decl_model;
with pragma_s_model;
use pragma_s_model;
with pragma_arg_model;
use pragma_arg_model;
with pragma_arg_s_model;
use pragma_arg_s_model;
with pragma_sym_model;
use pragma_sym_model;
with CHAR_STRING_model;
use CHAR_STRING_model;
with NE_model;
use NE_model;
with LT_EQ_model;
use LT_EQ_model;
with GE_model;
use GE_model;
with LT_LT_model;
use LT_LT_model;
with GT_GT_model;
use GT_GT_model;
with CHAR_LIT_model;
use CHAR_LIT_model;
with NUMERIC_LIT_model;
use NUMERIC_LIT_model;
package body ada05_Parser is
   package Language_YY2_Lexical_Analyzer renames ada05;
   use Language_YY2_Lexical_Analyzer;

   type code_stmt_Nonterminal_Ptr is access all
      code_stmt_model.code_stmt_Nonterminal'Class;
   type address_spec_Nonterminal_Ptr is access all
      address_spec_model.address_spec_Nonterminal'Class;
   type comp_loc_s_Nonterminal_Ptr is access all
      comp_loc_s_model.comp_loc_s_Nonterminal'Class;
   type align_opt_Nonterminal_Ptr is access all
      align_opt_model.align_opt_Nonterminal'Class;
   type record_type_spec_Nonterminal_Ptr is access all
      record_type_spec_model.record_type_spec_Nonterminal'Class;
   type attrib_def_Nonterminal_Ptr is access all
      attrib_def_model.attrib_def_Nonterminal'Class;
   type rep_spec_Nonterminal_Ptr is access all
      rep_spec_model.rep_spec_Nonterminal'Class;
   type generic_inst_Nonterminal_Ptr is access all
      generic_inst_model.generic_inst_Nonterminal'Class;
   type generic_pkg_inst_Nonterminal_Ptr is access all
      generic_pkg_inst_model.generic_pkg_inst_Nonterminal'Class;
   type generic_subp_inst_Nonterminal_Ptr is access all
      generic_subp_inst_model.generic_subp_inst_Nonterminal'Class;
   type generic_derived_type_Nonterminal_Ptr is access all
      generic_derived_type_model.generic_derived_type_Nonterminal'Class;
   type generic_type_def_Nonterminal_Ptr is access all
      generic_type_def_model.generic_type_def_Nonterminal'Class;
   type subp_default_Nonterminal_Ptr is access all
      subp_default_model.subp_default_Nonterminal'Class;
   type generic_discrim_part_opt_Nonterminal_Ptr is access all
      generic_discrim_part_opt_model.generic_discrim_part_opt_Nonterminal'Class;
   type generic_formal_Nonterminal_Ptr is access all
      generic_formal_model.generic_formal_Nonterminal'Class;
   type generic_formal_part_Nonterminal_Ptr is access all
      generic_formal_part_model.generic_formal_part_Nonterminal'Class;
   type generic_decl_Nonterminal_Ptr is access all
      generic_decl_model.generic_decl_Nonterminal'Class;
   type requeue_stmt_Nonterminal_Ptr is access all
      requeue_stmt_model.requeue_stmt_Nonterminal'Class;
   type raise_stmt_Nonterminal_Ptr is access all
      raise_stmt_model.raise_stmt_Nonterminal'Class;
   type except_choice_Nonterminal_Ptr is access all
      except_choice_model.except_choice_Nonterminal'Class;
   type except_choice_s_Nonterminal_Ptr is access all
      except_choice_s_model.except_choice_s_Nonterminal'Class;
   type exception_handler_Nonterminal_Ptr is access all
      exception_handler_model.exception_handler_Nonterminal'Class;
   type except_handler_part_Nonterminal_Ptr is access all
      except_handler_part_model.except_handler_part_Nonterminal'Class;
   type exception_decl_Nonterminal_Ptr is access all
      exception_decl_model.exception_decl_Nonterminal'Class;
   type body_stub_Nonterminal_Ptr is access all
      body_stub_model.body_stub_Nonterminal'Class;
   type subunit_body_Nonterminal_Ptr is access all
      subunit_body_model.subunit_body_Nonterminal'Class;
   type subunit_Nonterminal_Ptr is access all
      subunit_model.subunit_Nonterminal'Class;
   type unit_Nonterminal_Ptr is access all
      unit_model.unit_Nonterminal'Class;
   type use_clause_opt_Nonterminal_Ptr is access all
      use_clause_opt_model.use_clause_opt_Nonterminal'Class;
   type with_clause_Nonterminal_Ptr is access all
      with_clause_model.with_clause_Nonterminal'Class;
   type context_spec_Nonterminal_Ptr is access all
      context_spec_model.context_spec_Nonterminal'Class;
   type private_opt_Nonterminal_Ptr is access all
      private_opt_model.private_opt_Nonterminal'Class;
   type comp_unit_Nonterminal_Ptr is access all
      comp_unit_model.comp_unit_Nonterminal'Class;
   type compilation_Nonterminal_Ptr is access all
      compilation_model.compilation_Nonterminal'Class;
   type abort_stmt_Nonterminal_Ptr is access all
      abort_stmt_model.abort_stmt_Nonterminal'Class;
   type stmts_opt_Nonterminal_Ptr is access all
      stmts_opt_model.stmts_opt_Nonterminal'Class;
   type cond_entry_call_Nonterminal_Ptr is access all
      cond_entry_call_model.cond_entry_call_Nonterminal'Class;
   type timed_entry_call_Nonterminal_Ptr is access all
      timed_entry_call_model.timed_entry_call_Nonterminal'Class;
   type async_select_Nonterminal_Ptr is access all
      async_select_model.async_select_Nonterminal'Class;
   type delay_or_entry_alt_Nonterminal_Ptr is access all
      delay_or_entry_alt_model.delay_or_entry_alt_Nonterminal'Class;
   type select_alt_Nonterminal_Ptr is access all
      select_alt_model.select_alt_Nonterminal'Class;
   type or_select_Nonterminal_Ptr is access all
      or_select_model.or_select_Nonterminal'Class;
   type guarded_select_alt_Nonterminal_Ptr is access all
      guarded_select_alt_model.guarded_select_alt_Nonterminal'Class;
   type select_wait_Nonterminal_Ptr is access all
      select_wait_model.select_wait_Nonterminal'Class;
   type select_stmt_Nonterminal_Ptr is access all
      select_stmt_model.select_stmt_Nonterminal'Class;
   type delay_stmt_Nonterminal_Ptr is access all
      delay_stmt_model.delay_stmt_Nonterminal'Class;
   type entry_name_Nonterminal_Ptr is access all
      entry_name_model.entry_name_Nonterminal'Class;
   type accept_hdr_Nonterminal_Ptr is access all
      accept_hdr_model.accept_hdr_Nonterminal'Class;
   type accept_stmt_Nonterminal_Ptr is access all
      accept_stmt_model.accept_stmt_Nonterminal'Class;
   type entry_call_Nonterminal_Ptr is access all
      entry_call_model.entry_call_Nonterminal'Class;
   type rep_spec_s_Nonterminal_Ptr is access all
      rep_spec_s_model.rep_spec_s_Nonterminal'Class;
   type entry_body_part_Nonterminal_Ptr is access all
      entry_body_part_model.entry_body_part_Nonterminal'Class;
   type entry_body_Nonterminal_Ptr is access all
      entry_body_model.entry_body_Nonterminal'Class;
   type entry_decl_Nonterminal_Ptr is access all
      entry_decl_model.entry_decl_Nonterminal'Class;
   type entry_decl_s_Nonterminal_Ptr is access all
      entry_decl_s_model.entry_decl_s_Nonterminal'Class;
   type prot_op_body_Nonterminal_Ptr is access all
      prot_op_body_model.prot_op_body_Nonterminal'Class;
   type prot_op_body_s_Nonterminal_Ptr is access all
      prot_op_body_s_model.prot_op_body_s_Nonterminal'Class;
   type prot_body_Nonterminal_Ptr is access all
      prot_body_model.prot_body_Nonterminal'Class;
   type prot_elem_decl_Nonterminal_Ptr is access all
      prot_elem_decl_model.prot_elem_decl_Nonterminal'Class;
   type prot_elem_decl_s_Nonterminal_Ptr is access all
      prot_elem_decl_s_model.prot_elem_decl_s_Nonterminal'Class;
   type prot_op_decl_Nonterminal_Ptr is access all
      prot_op_decl_model.prot_op_decl_Nonterminal'Class;
   type prot_op_decl_s_Nonterminal_Ptr is access all
      prot_op_decl_s_model.prot_op_decl_s_Nonterminal'Class;
   type prot_private_opt_Nonterminal_Ptr is access all
      prot_private_opt_model.prot_private_opt_Nonterminal'Class;
   type prot_def_Nonterminal_Ptr is access all
      prot_def_model.prot_def_Nonterminal'Class;
   type prot_spec_Nonterminal_Ptr is access all
      prot_spec_model.prot_spec_Nonterminal'Class;
   type prot_decl_Nonterminal_Ptr is access all
      prot_decl_model.prot_decl_Nonterminal'Class;
   type task_body_Nonterminal_Ptr is access all
      task_body_model.task_body_Nonterminal'Class;
   type task_private_opt_Nonterminal_Ptr is access all
      task_private_opt_model.task_private_opt_Nonterminal'Class;
   type task_def_Nonterminal_Ptr is access all
      task_def_model.task_def_Nonterminal'Class;
   type opt_task_interfaces_Nonterminal_Ptr is access all
      opt_task_interfaces_model.opt_task_interfaces_Nonterminal'Class;
   type task_spec_Nonterminal_Ptr is access all
      task_spec_model.task_spec_Nonterminal'Class;
   type task_decl_Nonterminal_Ptr is access all
      task_decl_model.task_decl_Nonterminal'Class;
   type renaming_Nonterminal_Ptr is access all
      renaming_model.renaming_Nonterminal'Class;
   type rename_unit_Nonterminal_Ptr is access all
      rename_unit_model.rename_unit_Nonterminal'Class;
   type rename_decl_Nonterminal_Ptr is access all
      rename_decl_model.rename_decl_Nonterminal'Class;
   type name_s_Nonterminal_Ptr is access all
      name_s_model.name_s_Nonterminal'Class;
   type use_clause_Nonterminal_Ptr is access all
      use_clause_model.use_clause_Nonterminal'Class;
   type limited_opt_Nonterminal_Ptr is access all
      limited_opt_model.limited_opt_Nonterminal'Class;
   type private_type_Nonterminal_Ptr is access all
      private_type_model.private_type_Nonterminal'Class;
   type body_opt_Nonterminal_Ptr is access all
      body_opt_model.body_opt_Nonterminal'Class;
   type pkg_body_Nonterminal_Ptr is access all
      pkg_body_model.pkg_body_Nonterminal'Class;
   type c_id_opt_Nonterminal_Ptr is access all
      c_id_opt_model.c_id_opt_Nonterminal'Class;
   type private_part_Nonterminal_Ptr is access all
      private_part_model.private_part_Nonterminal'Class;
   type pkg_spec_Nonterminal_Ptr is access all
      pkg_spec_model.pkg_spec_Nonterminal'Class;
   type pkg_decl_Nonterminal_Ptr is access all
      pkg_decl_model.pkg_decl_Nonterminal'Class;
   type procedure_call_Nonterminal_Ptr is access all
      procedure_call_model.procedure_call_Nonterminal'Class;
   type subprog_body_Nonterminal_Ptr is access all
      subprog_body_model.subprog_body_Nonterminal'Class;
   type subprog_spec_is_push_Nonterminal_Ptr is access all
      subprog_spec_is_push_model.subprog_spec_is_push_Nonterminal'Class;
   type mode_Nonterminal_Ptr is access all
      mode_model.mode_Nonterminal'Class;
   type param_Nonterminal_Ptr is access all
      param_model.param_Nonterminal'Class;
   type param_s_Nonterminal_Ptr is access all
      param_s_model.param_s_Nonterminal'Class;
   type formal_part_Nonterminal_Ptr is access all
      formal_part_model.formal_part_Nonterminal'Class;
   type formal_part_opt_Nonterminal_Ptr is access all
      formal_part_opt_model.formal_part_opt_Nonterminal'Class;
   type designator_Nonterminal_Ptr is access all
      designator_model.designator_Nonterminal'Class;
   type subprog_spec_Nonterminal_Ptr is access all
      subprog_spec_model.subprog_spec_Nonterminal'Class;
   type subprog_decl_Nonterminal_Ptr is access all
      subprog_decl_model.subprog_decl_Nonterminal'Class;
   type goto_stmt_Nonterminal_Ptr is access all
      goto_stmt_model.goto_stmt_Nonterminal'Class;
   type return_stmt_Nonterminal_Ptr is access all
      return_stmt_model.return_stmt_Nonterminal'Class;
   type opt_do_block_Nonterminal_Ptr is access all
      opt_do_block_model.opt_do_block_Nonterminal'Class;
   type return_subtype_Nonterminal_Ptr is access all
      return_subtype_model.return_subtype_Nonterminal'Class;
   type opt_assign_Nonterminal_Ptr is access all
      opt_assign_model.opt_assign_Nonterminal'Class;
   type opt_aliased_Nonterminal_Ptr is access all
      opt_aliased_model.opt_aliased_Nonterminal'Class;
   type when_opt_Nonterminal_Ptr is access all
      when_opt_model.when_opt_Nonterminal'Class;
   type name_opt_Nonterminal_Ptr is access all
      name_opt_model.name_opt_Nonterminal'Class;
   type exit_stmt_Nonterminal_Ptr is access all
      exit_stmt_model.exit_stmt_Nonterminal'Class;
   type except_handler_part_opt_Nonterminal_Ptr is access all
      except_handler_part_opt_model.except_handler_part_opt_Nonterminal'Class;
   type handled_stmt_s_Nonterminal_Ptr is access all
      handled_stmt_s_model.handled_stmt_s_Nonterminal'Class;
   type block_body_Nonterminal_Ptr is access all
      block_body_model.block_body_Nonterminal'Class;
   type block_decl_Nonterminal_Ptr is access all
      block_decl_model.block_decl_Nonterminal'Class;
   type block_Nonterminal_Ptr is access all
      block_model.block_Nonterminal'Class;
   type id_opt_Nonterminal_Ptr is access all
      id_opt_model.id_opt_Nonterminal'Class;
   type basic_loop_Nonterminal_Ptr is access all
      basic_loop_model.basic_loop_Nonterminal'Class;
   type reverse_opt_Nonterminal_Ptr is access all
      reverse_opt_model.reverse_opt_Nonterminal'Class;
   type iter_part_Nonterminal_Ptr is access all
      iter_part_model.iter_part_Nonterminal'Class;
   type iteration_Nonterminal_Ptr is access all
      iteration_model.iteration_Nonterminal'Class;
   type label_opt_Nonterminal_Ptr is access all
      label_opt_model.label_opt_Nonterminal'Class;
   type loop_stmt_Nonterminal_Ptr is access all
      loop_stmt_model.loop_stmt_Nonterminal'Class;
   type alternative_Nonterminal_Ptr is access all
      alternative_model.alternative_Nonterminal'Class;
   type alternative_s_Nonterminal_Ptr is access all
      alternative_s_model.alternative_s_Nonterminal'Class;
   type case_hdr_Nonterminal_Ptr is access all
      case_hdr_model.case_hdr_Nonterminal'Class;
   type case_stmt_Nonterminal_Ptr is access all
      case_stmt_model.case_stmt_Nonterminal'Class;
   type else_opt_Nonterminal_Ptr is access all
      else_opt_model.else_opt_Nonterminal'Class;
   type condition_Nonterminal_Ptr is access all
      condition_model.condition_Nonterminal'Class;
   type cond_part_Nonterminal_Ptr is access all
      cond_part_model.cond_part_Nonterminal'Class;
   type cond_clause_Nonterminal_Ptr is access all
      cond_clause_model.cond_clause_Nonterminal'Class;
   type cond_clause_s_Nonterminal_Ptr is access all
      cond_clause_s_model.cond_clause_s_Nonterminal'Class;
   type if_stmt_Nonterminal_Ptr is access all
      if_stmt_model.if_stmt_Nonterminal'Class;
   type assign_stmt_Nonterminal_Ptr is access all
      assign_stmt_model.assign_stmt_Nonterminal'Class;
   type null_stmt_Nonterminal_Ptr is access all
      null_stmt_model.null_stmt_Nonterminal'Class;
   type label_Nonterminal_Ptr is access all
      label_model.label_Nonterminal'Class;
   type compound_stmt_Nonterminal_Ptr is access all
      compound_stmt_model.compound_stmt_Nonterminal'Class;
   type simple_stmt_Nonterminal_Ptr is access all
      simple_stmt_model.simple_stmt_Nonterminal'Class;
   type unlabeled_Nonterminal_Ptr is access all
      unlabeled_model.unlabeled_Nonterminal'Class;
   type statement_Nonterminal_Ptr is access all
      statement_model.statement_Nonterminal'Class;
   type statement_s_Nonterminal_Ptr is access all
      statement_s_model.statement_s_Nonterminal'Class;
   type allocator_Nonterminal_Ptr is access all
      allocator_model.allocator_Nonterminal'Class;
   type qualified_Nonterminal_Ptr is access all
      qualified_model.qualified_Nonterminal'Class;
   type parenthesized_primary_Nonterminal_Ptr is access all
      parenthesized_primary_model.parenthesized_primary_Nonterminal'Class;
   type primary_Nonterminal_Ptr is access all
      primary_model.primary_Nonterminal'Class;
   type factor_Nonterminal_Ptr is access all
      factor_model.factor_Nonterminal'Class;
   type multiplying_Nonterminal_Ptr is access all
      multiplying_model.multiplying_Nonterminal'Class;
   type term_Nonterminal_Ptr is access all
      term_model.term_Nonterminal'Class;
   type adding_Nonterminal_Ptr is access all
      adding_model.adding_Nonterminal'Class;
   type unary_Nonterminal_Ptr is access all
      unary_model.unary_Nonterminal'Class;
   type simple_expression_Nonterminal_Ptr is access all
      simple_expression_model.simple_expression_Nonterminal'Class;
   type membership_Nonterminal_Ptr is access all
      membership_model.membership_Nonterminal'Class;
   type relational_Nonterminal_Ptr is access all
      relational_model.relational_Nonterminal'Class;
   type relation_Nonterminal_Ptr is access all
      relation_model.relation_Nonterminal'Class;
   type logical_Nonterminal_Ptr is access all
      logical_model.logical_Nonterminal'Class;
   type expression_Nonterminal_Ptr is access all
      expression_model.expression_Nonterminal'Class;
   type comp_assoc_Nonterminal_Ptr is access all
      comp_assoc_model.comp_assoc_Nonterminal'Class;
   type value_s_2_Nonterminal_Ptr is access all
      value_s_2_model.value_s_2_Nonterminal'Class;
   type aggregate_Nonterminal_Ptr is access all
      aggregate_model.aggregate_Nonterminal'Class;
   type literal_Nonterminal_Ptr is access all
      literal_model.literal_Nonterminal'Class;
   type attribute_id_Nonterminal_Ptr is access all
      attribute_id_model.attribute_id_Nonterminal'Class;
   type attribute_Nonterminal_Ptr is access all
      attribute_model.attribute_Nonterminal'Class;
   type selected_comp_Nonterminal_Ptr is access all
      selected_comp_model.selected_comp_Nonterminal'Class;
   type value_Nonterminal_Ptr is access all
      value_model.value_Nonterminal'Class;
   type value_s_Nonterminal_Ptr is access all
      value_s_model.value_s_Nonterminal'Class;
   type indexed_comp_Nonterminal_Ptr is access all
      indexed_comp_model.indexed_comp_Nonterminal'Class;
   type operator_symbol_Nonterminal_Ptr is access all
      operator_symbol_model.operator_symbol_Nonterminal'Class;
   type used_char_Nonterminal_Ptr is access all
      used_char_model.used_char_Nonterminal'Class;
   type c_name_list_Nonterminal_Ptr is access all
      c_name_list_model.c_name_list_Nonterminal'Class;
   type compound_name_Nonterminal_Ptr is access all
      compound_name_model.compound_name_Nonterminal'Class;
   type simple_name_Nonterminal_Ptr is access all
      simple_name_model.simple_name_Nonterminal'Class;
   type mark_Nonterminal_Ptr is access all
      mark_model.mark_Nonterminal'Class;
   type name_Nonterminal_Ptr is access all
      name_model.name_Nonterminal'Class;
   type body_nt_Nonterminal_Ptr is access all
      body_nt_model.body_nt_Nonterminal'Class;
   type decl_item_or_body_Nonterminal_Ptr is access all
      decl_item_or_body_model.decl_item_or_body_Nonterminal'Class;
   type decl_item_or_body_s1_Nonterminal_Ptr is access all
      decl_item_or_body_s1_model.decl_item_or_body_s1_Nonterminal'Class;
   type decl_item_Nonterminal_Ptr is access all
      decl_item_model.decl_item_Nonterminal'Class;
   type decl_item_s1_Nonterminal_Ptr is access all
      decl_item_s1_model.decl_item_s1_Nonterminal'Class;
   type decl_item_s_Nonterminal_Ptr is access all
      decl_item_s_model.decl_item_s_Nonterminal'Class;
   type decl_part_Nonterminal_Ptr is access all
      decl_part_model.decl_part_Nonterminal'Class;
   type prot_opt_Nonterminal_Ptr is access all
      prot_opt_model.prot_opt_Nonterminal'Class;
   type access_type_Nonterminal_Ptr is access all
      access_type_model.access_type_Nonterminal'Class;
   type not_null_opt_access_Nonterminal_Ptr is access all
      not_null_opt_access_model.not_null_opt_access_Nonterminal'Class;
   type not_null_opt_Nonterminal_Ptr is access all
      not_null_opt_model.not_null_opt_Nonterminal'Class;
   type discrete_with_range_Nonterminal_Ptr is access all
      discrete_with_range_model.discrete_with_range_Nonterminal'Class;
   type choice_Nonterminal_Ptr is access all
      choice_model.choice_Nonterminal'Class;
   type choice_s_Nonterminal_Ptr is access all
      choice_s_model.choice_s_Nonterminal'Class;
   type variant_Nonterminal_Ptr is access all
      variant_model.variant_Nonterminal'Class;
   type variant_s_Nonterminal_Ptr is access all
      variant_s_model.variant_s_Nonterminal'Class;
   type variant_part_Nonterminal_Ptr is access all
      variant_part_model.variant_part_Nonterminal'Class;
   type access_opt_Nonterminal_Ptr is access all
      access_opt_model.access_opt_Nonterminal'Class;
   type discrim_spec_Nonterminal_Ptr is access all
      discrim_spec_model.discrim_spec_Nonterminal'Class;
   type discrim_spec_s_Nonterminal_Ptr is access all
      discrim_spec_s_model.discrim_spec_s_Nonterminal'Class;
   type discrim_part_Nonterminal_Ptr is access all
      discrim_part_model.discrim_part_Nonterminal'Class;
   type comp_decl_Nonterminal_Ptr is access all
      comp_decl_model.comp_decl_Nonterminal'Class;
   type variant_part_opt_Nonterminal_Ptr is access all
      variant_part_opt_model.variant_part_opt_Nonterminal'Class;
   type comp_decl_s_Nonterminal_Ptr is access all
      comp_decl_s_model.comp_decl_s_Nonterminal'Class;
   type comp_list_Nonterminal_Ptr is access all
      comp_list_model.comp_list_Nonterminal'Class;
   type tagged_opt_Nonterminal_Ptr is access all
      tagged_opt_model.tagged_opt_Nonterminal'Class;
   type record_def_Nonterminal_Ptr is access all
      record_def_model.record_def_Nonterminal'Class;
   type record_type_Nonterminal_Ptr is access all
      record_type_model.record_type_Nonterminal'Class;
   type range_constr_opt_Nonterminal_Ptr is access all
      range_constr_opt_model.range_constr_opt_Nonterminal'Class;
   type discrete_range_Nonterminal_Ptr is access all
      discrete_range_model.discrete_range_Nonterminal'Class;
   type iter_discrete_range_s_Nonterminal_Ptr is access all
      iter_discrete_range_s_model.iter_discrete_range_s_Nonterminal'Class;
   type iter_index_constraint_Nonterminal_Ptr is access all
      iter_index_constraint_model.iter_index_constraint_Nonterminal'Class;
   type index_Nonterminal_Ptr is access all
      index_model.index_Nonterminal'Class;
   type index_s_Nonterminal_Ptr is access all
      index_s_model.index_s_Nonterminal'Class;
   type aliased_opt_Nonterminal_Ptr is access all
      aliased_opt_model.aliased_opt_Nonterminal'Class;
   type component_subtype_def_Nonterminal_Ptr is access all
      component_subtype_def_model.component_subtype_def_Nonterminal'Class;
   type constr_array_type_Nonterminal_Ptr is access all
      constr_array_type_model.constr_array_type_Nonterminal'Class;
   type unconstr_array_type_Nonterminal_Ptr is access all
      unconstr_array_type_model.unconstr_array_type_Nonterminal'Class;
   type array_type_Nonterminal_Ptr is access all
      array_type_model.array_type_Nonterminal'Class;
   type fixed_type_Nonterminal_Ptr is access all
      fixed_type_model.fixed_type_Nonterminal'Class;
   type float_type_Nonterminal_Ptr is access all
      float_type_model.float_type_Nonterminal'Class;
   type real_type_Nonterminal_Ptr is access all
      real_type_model.real_type_Nonterminal'Class;
   type range_spec_opt_Nonterminal_Ptr is access all
      range_spec_opt_model.range_spec_opt_Nonterminal'Class;
   type range_spec_Nonterminal_Ptr is access all
      range_spec_model.range_spec_Nonterminal'Class;
   type integer_type_Nonterminal_Ptr is access all
      integer_type_model.integer_type_Nonterminal'Class;
   type interface_type_Nonterminal_Ptr is access all
      interface_type_model.interface_type_Nonterminal'Class;
   type enum_id_Nonterminal_Ptr is access all
      enum_id_model.enum_id_Nonterminal'Class;
   type enum_id_s_Nonterminal_Ptr is access all
      enum_id_s_model.enum_id_s_Nonterminal'Class;
   type enumeration_type_Nonterminal_Ptr is access all
      enumeration_type_model.enumeration_type_Nonterminal'Class;
   type range_sym_Nonterminal_Ptr is access all
      range_sym_model.range_sym_Nonterminal'Class;
   type range_constraint_Nonterminal_Ptr is access all
      range_constraint_model.range_constraint_Nonterminal'Class;
   type derived_type_Nonterminal_Ptr is access all
      derived_type_model.derived_type_Nonterminal'Class;
   type opt_interface_list_Nonterminal_Ptr is access all
      opt_interface_list_model.opt_interface_list_Nonterminal'Class;
   type decimal_digits_constraint_Nonterminal_Ptr is access all
      decimal_digits_constraint_model.decimal_digits_constraint_Nonterminal'Class;
   type constraint_Nonterminal_Ptr is access all
      constraint_model.constraint_Nonterminal'Class;
   type subtype_ind_Nonterminal_Ptr is access all
      subtype_ind_model.subtype_ind_Nonterminal'Class;
   type subtype_decl_Nonterminal_Ptr is access all
      subtype_decl_model.subtype_decl_Nonterminal'Class;
   type type_def_Nonterminal_Ptr is access all
      type_def_model.type_def_Nonterminal'Class;
   type type_completion_Nonterminal_Ptr is access all
      type_completion_model.type_completion_Nonterminal'Class;
   type discrim_part_opt_Nonterminal_Ptr is access all
      discrim_part_opt_model.discrim_part_opt_Nonterminal'Class;
   type type_decl_Nonterminal_Ptr is access all
      type_decl_model.type_decl_Nonterminal'Class;
   type number_decl_Nonterminal_Ptr is access all
      number_decl_model.number_decl_Nonterminal'Class;
   type init_opt_Nonterminal_Ptr is access all
      init_opt_model.init_opt_Nonterminal'Class;
   type object_subtype_def_Nonterminal_Ptr is access all
      object_subtype_def_model.object_subtype_def_Nonterminal'Class;
   type object_qualifier_opt_Nonterminal_Ptr is access all
      object_qualifier_opt_model.object_qualifier_opt_Nonterminal'Class;
   type def_id_Nonterminal_Ptr is access all
      def_id_model.def_id_Nonterminal'Class;
   type def_id_s_Nonterminal_Ptr is access all
      def_id_s_model.def_id_s_Nonterminal'Class;
   type object_decl_Nonterminal_Ptr is access all
      object_decl_model.object_decl_Nonterminal'Class;
   type decl_Nonterminal_Ptr is access all
      decl_model.decl_Nonterminal'Class;
   type pragma_s_Nonterminal_Ptr is access all
      pragma_s_model.pragma_s_Nonterminal'Class;
   type pragma_arg_Nonterminal_Ptr is access all
      pragma_arg_model.pragma_arg_Nonterminal'Class;
   type pragma_arg_s_Nonterminal_Ptr is access all
      pragma_arg_s_model.pragma_arg_s_Nonterminal'Class;
   type pragma_sym_Nonterminal_Ptr is access all
      pragma_sym_model.pragma_sym_Nonterminal'Class;
   type CHAR_STRING_Nonterminal_Ptr is access all
      CHAR_STRING_model.CHAR_STRING_Nonterminal'Class;
   type NE_Nonterminal_Ptr is access all
      NE_model.NE_Nonterminal'Class;
   type LT_EQ_Nonterminal_Ptr is access all
      LT_EQ_model.LT_EQ_Nonterminal'Class;
   type GE_Nonterminal_Ptr is access all
      GE_model.GE_Nonterminal'Class;
   type LT_LT_Nonterminal_Ptr is access all
      LT_LT_model.LT_LT_Nonterminal'Class;
   type GT_GT_Nonterminal_Ptr is access all
      GT_GT_model.GT_GT_Nonterminal'Class;
   type CHAR_LIT_Nonterminal_Ptr is access all
      CHAR_LIT_model.CHAR_LIT_Nonterminal'Class;
   type NUMERIC_LIT_Nonterminal_Ptr is access all
      NUMERIC_LIT_model.NUMERIC_LIT_Nonterminal'Class;
   Parse_Tree : Parseable_Ptr;
   Token_String : String_Ptr;

   procedure YYError(S : in String := "Syntax Error") is
   begin
      Put_Line(S & " on line " &          integer'image(ada05.Get_Current_Line));
   end YYError;

procedure YYParse is

   -- Rename User Defined Packages to Internal Names.
    package yy_goto_tables         renames
      Ada05_Goto;
    package yy_shift_reduce_tables renames
      Ada05_Shift_Reduce;
    package yy_tokens              renames
      Ada05_Tokens;

   package yy2_tokens renames Language_YY2_Lexical_Analyzer;
   use yy2_tokens;
   use yy_tokens, yy_goto_tables, yy_shift_reduce_tables;

   procedure yyerrok;
   procedure yyclearin;


   package yy is

       -- the size of the value and state stacks
       stack_size : constant Natural := 300;

       -- subtype rule         is natural;
       subtype parse_state  is natural;
       -- subtype nonterminal  is integer;

       -- encryption constants
       default           : constant := -1;
       first_shift_entry : constant :=  0;
       accept_code       : constant := -6001;
       error_code        : constant := -6000;

       -- stack data used by the parser
       tos                : natural := 0;
       value_stack        : array(0..stack_size) of yy_tokens.yystype;
       state_stack        : array(0..stack_size) of parse_state;

       -- current input symbol and action the parser is on
       action             : integer;
       rule_id            : rule;
       input_symbol       : yy2_tokens.token;


       -- error recovery flag
       error_flag : natural := 0;
          -- indicates  3 - (number of valid shifts after an error occurs)

       look_ahead : boolean := true;
       index      : integer;

       -- Is Debugging option on or off
        DEBUG : constant boolean := FALSE;

    end yy;


    function goto_state
      (state : yy.parse_state;
       sym   : nonterminal) return yy.parse_state;

    function parse_action
      (state : yy.parse_state;
       t     : yy2_tokens.token) return integer;

    pragma inline(goto_state, parse_action);


    function goto_state(state : yy.parse_state;
                        sym   : nonterminal) return yy.parse_state is
        index : integer;
    begin
        index := goto_offset(state);
        while  integer(goto_matrix(index).nonterm) /= sym loop
            index := index + 1;
        end loop;
        return integer(goto_matrix(index).newstate);
    end goto_state;


    function parse_action(state : yy.parse_state;
                          t     : yy2_tokens.token) return integer is
        index      : integer;
        tok_pos    : integer;
        default    : constant integer := -1;
    begin
        tok_pos := yy2_tokens.token'pos(t);
        index   := shift_reduce_offset(state);
        while integer(shift_reduce_matrix(index).t) /= tok_pos and then
              integer(shift_reduce_matrix(index).t) /= default
        loop
            index := index + 1;
        end loop;
        return integer(shift_reduce_matrix(index).act);
    end parse_action;

-- error recovery stuff

    procedure handle_error is
      temp_action : integer;
    begin

      if yy.error_flag = 3 then -- no shift yet, clobber input.
      if yy.debug then
          text_io.put_line("Ayacc.YYParse: Error Recovery Clobbers " &
                   yy2_tokens.token'image(yy.input_symbol));
      end if;
        if yy.input_symbol = yy2_tokens.end_of_input then  -- don't discard,
        if yy.debug then
            text_io.put_line("Ayacc.YYParse: Can't discard END_OF_INPUT, quiting...");
        end if;
        raise yy_tokens.syntax_error;
        end if;

            yy.look_ahead := true;   -- get next token
        return;                  -- and try again...
    end if;

    if yy.error_flag = 0 then -- brand new error
        yyerror("Syntax Error");
    end if;

    yy.error_flag := 3;

    -- find state on stack where error is a valid shift --

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Looking for state with error as valid shift");
    end if;

    loop
        if yy.debug then
          text_io.put_line("Ayacc.YYParse: Examining State " &
               yy.parse_state'image(yy.state_stack(yy.tos)));
        end if;
        temp_action := parse_action(yy.state_stack(yy.tos), error);

            if temp_action >= yy.first_shift_entry then
                if yy.tos = yy.stack_size then
                    text_io.put_line(" Stack size exceeded on state_stack");
                    raise yy_Tokens.syntax_error;
                end if;
                yy.tos := yy.tos + 1;
                yy.state_stack(yy.tos) := temp_action;
                exit;
            end if;

        Decrement_Stack_Pointer :
        begin
          yy.tos := yy.tos - 1;
        exception
          when Constraint_Error =>
            yy.tos := 0;
        end Decrement_Stack_Pointer;

        if yy.tos = 0 then
          if yy.debug then
            text_io.put_line("Ayacc.YYParse: Error recovery popped entire stack, aborting...");
          end if;
          raise yy_tokens.syntax_error;
        end if;
    end loop;

    if yy.debug then
        text_io.put_line("Ayacc.YYParse: Shifted error token in state " &
              yy.parse_state'image(yy.state_stack(yy.tos)));
    end if;

    end handle_error;

   -- print debugging information for a shift operation
   procedure shift_debug(state_id: yy.parse_state; lexeme: yy2_tokens.token) is
   begin
       text_io.put_line("Ayacc.YYParse: Shift "& yy.parse_state'image(state_id)&" on input symbol "&
               yy2_tokens.token'image(lexeme) );
   end;

   -- print debugging information for a reduce operation
   procedure reduce_debug(rule_id: rule; state_id: yy.parse_state) is
   begin
       text_io.put_line("Ayacc.YYParse: Reduce by rule "&rule'image(rule_id)&" goto state "&
               yy.parse_state'image(state_id));
   end;

   -- make the parser believe that 3 valid shifts have occured.
   -- used for error recovery.
   procedure yyerrok is
   begin
       yy.error_flag := 0;
   end yyerrok;

   -- called to clear input symbol that caused an error.
   procedure yyclearin is
   begin
       -- yy.input_symbol := Get_Token;
       yy.look_ahead := true;
   end yyclearin;


begin
    -- initialize by pushing state 0 and getting the first input symbol
    yy.state_stack(yy.tos) := 0;


    loop

        yy.index := shift_reduce_offset(yy.state_stack(yy.tos));
        if integer(shift_reduce_matrix(yy.index).t) = yy.default then
            yy.action := integer(shift_reduce_matrix(yy.index).act);
        else
            if yy.look_ahead then
                yy.look_ahead   := false;

                yy.input_symbol := Get_Token;
            end if;
            yy.action :=
             parse_action(yy.state_stack(yy.tos), yy.input_symbol);
        end if;


        if yy.action >= yy.first_shift_entry then  -- SHIFT

            if yy.debug then
                shift_debug(yy.action, yy.input_symbol);
            end if;

            -- Enter new state
            if yy.tos = yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.tos := yy.tos + 1;
            yy.state_stack(yy.tos) := yy.action;
              yy.value_stack(yy.tos) := yylval;

        if yy.error_flag > 0 then  -- indicate a valid shift
            yy.error_flag := yy.error_flag - 1;
        end if;

            -- Advance lookahead
            yy.look_ahead := true;

        elsif yy.action = yy.error_code then       -- ERROR

            handle_error;

        elsif yy.action = yy.accept_code then
            if yy.debug then
                text_io.put_line("Ayacc.YYParse: Accepting Grammar...");
            end if;
            exit;

        else -- Reduce Action

            -- Convert action into a rule
            yy.rule_id  := -1 * yy.action;

            -- Execute User Action
            -- user_action(yy.rule_id);


                case yy.rule_id is

when  1 =>
--#line  125
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CHAR_LITERAL_token); 

when  2 =>
--#line  129
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STRING_LITERAL_token); 

when  3 =>
--#line  133
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BASED_LITERAL_token); 

when  4 =>
--#line  137
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECIMAL_LITERAL_token); 

when  5 =>
--#line  141
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IDENTIFIER_token); 

when  6 =>
--#line  145
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TICK_token); 

when  7 =>
--#line  149
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BANG_token); 

when  8 =>
--#line  153
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PIPE_token); 

when  9 =>
--#line  157
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GT_token); 

when  10 =>
--#line  161
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EQ_token); 

when  11 =>
--#line  165
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LT_token); 

when  12 =>
--#line  169
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEMICOLON_token); 

when  13 =>
--#line  173
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COLON_token); 

when  14 =>
--#line  177
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SLASH_token); 

when  15 =>
--#line  181
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOT_token); 

when  16 =>
--#line  185
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MINUS_token); 

when  17 =>
--#line  189
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,COMMA_token); 

when  18 =>
--#line  193
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PLUS_token); 

when  19 =>
--#line  197
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,STAR_token); 

when  20 =>
--#line  201
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,R_PAREN_token); 

when  21 =>
--#line  205
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,L_PAREN_token); 

when  22 =>
--#line  209
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BIT_AND_token); 

when  23 =>
--#line  213
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BOX_token); 

when  24 =>
--#line  217
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RIGHT_LABEL_BRACKET_token); 

when  25 =>
--#line  221
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LEFT_LABEL_BRACKET_token); 

when  26 =>
--#line  225
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LESS_THAN_OR_EQUAL_token); 

when  27 =>
--#line  229
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GREATER_THAN_OR_EQUAL_token); 

when  28 =>
--#line  233
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INEQUALITY_token); 

when  29 =>
--#line  237
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ASSIGNMENT_token); 

when  30 =>
--#line  241
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXPONENT_token); 

when  31 =>
--#line  245
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DOUBLE_DOT_token); 

when  32 =>
--#line  249
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARROW_token); 

when  33 =>
--#line  253
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,XOR_token); 

when  34 =>
--#line  257
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WITH_token); 

when  35 =>
--#line  261
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHILE_token); 

when  36 =>
--#line  265
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,WHEN_token); 

when  37 =>
--#line  269
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,USE_token); 

when  38 =>
--#line  273
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,UNTIL_token); 

when  39 =>
--#line  277
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TYPE_token); 

when  40 =>
--#line  281
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,THEN_token); 

when  41 =>
--#line  285
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TERMINATE_token); 

when  42 =>
--#line  289
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TASK_token); 

when  43 =>
--#line  293
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,TAGGED_token); 

when  44 =>
--#line  297
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SYNCHRONIZED_token); 

when  45 =>
--#line  301
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SUBTYPE_token); 

when  46 =>
--#line  305
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SEPARATE_token); 

when  47 =>
--#line  309
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,SELECT_token); 

when  48 =>
--#line  313
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REVERSE_token); 

when  49 =>
--#line  317
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RETURN_token); 

when  50 =>
--#line  321
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REQUEUE_token); 

when  51 =>
--#line  325
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RENAMES_token); 

when  52 =>
--#line  329
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,REM_token); 

when  53 =>
--#line  333
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RECORD_token); 

when  54 =>
--#line  337
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RANGE_token); 

when  55 =>
--#line  341
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,RAISE_token); 

when  56 =>
--#line  345
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROTECTED_token); 

when  57 =>
--#line  349
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PROCEDURE_token); 

when  58 =>
--#line  353
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRIVATE_token); 

when  59 =>
--#line  357
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PRAGMA_token); 

when  60 =>
--#line  361
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,PACKAGE_token); 

when  61 =>
--#line  365
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OUT_token); 

when  62 =>
--#line  369
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OVERRIDING_token); 

when  63 =>
--#line  373
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OTHERS_token); 

when  64 =>
--#line  377
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OR_token); 

when  65 =>
--#line  381
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,OF_token); 

when  66 =>
--#line  385
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NULL_token); 

when  67 =>
--#line  389
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NOT_token); 

when  68 =>
--#line  393
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,NEW_token); 

when  69 =>
--#line  397
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,MOD_token); 

when  70 =>
--#line  401
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LOOP_token); 

when  71 =>
--#line  405
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,LIMITED_token); 

when  72 =>
--#line  409
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IS_token); 

when  73 =>
--#line  413
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,INTERFACE_token); 

when  74 =>
--#line  417
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IN_token); 

when  75 =>
--#line  421
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,IF_token); 

when  76 =>
--#line  425
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GOTO_token); 

when  77 =>
--#line  429
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,GENERIC_token); 

when  78 =>
--#line  433
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FUNCTION_token); 

when  79 =>
--#line  437
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,FOR_token); 

when  80 =>
--#line  441
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXIT_token); 

when  81 =>
--#line  445
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,EXCEPTION_token); 

when  82 =>
--#line  449
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ENTRY_token); 

when  83 =>
--#line  453
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,END_token); 

when  84 =>
--#line  457
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSIF_token); 

when  85 =>
--#line  461
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ELSE_token); 

when  86 =>
--#line  465
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DO_token); 

when  87 =>
--#line  469
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DIGITS_token); 

when  88 =>
--#line  473
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELTA_token); 

when  89 =>
--#line  477
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DELAY_token); 

when  90 =>
--#line  481
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,DECLARE_token); 

when  91 =>
--#line  485
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CONSTANT_token); 

when  92 =>
--#line  489
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,CASE_token); 

when  93 =>
--#line  493
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BODY_token); 

when  94 =>
--#line  497
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,BEGIN_token); 

when  95 =>
--#line  501
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AT_token); 

when  96 =>
--#line  505
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ARRAY_token); 

when  97 =>
--#line  509
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,AND_token); 

when  98 =>
--#line  513
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALL_token); 

when  99 =>
--#line  517
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ALIASED_token); 

when  100 =>
--#line  521
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCESS_token); 

when  101 =>
--#line  525
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ACCEPT_token); 

when  102 =>
--#line  529
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABSTRACT_token); 

when  103 =>
--#line  533
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABS_token); 

when  104 =>
--#line  537
 Token_String := new String'(Get_Token_String);
     
yyval := new Parseable_Token'(Get_Current_Line,Get_Current_Column-Token_String.all'Length,
     Token_String,ABORT_token); 

when  105 =>
--#line  542
 Parse_Tree := 
yy.value_stack(yy.tos); 

when  106 =>
--#line  545

   
yyval := new NUMERIC_LIT_nonterminal1;
   NUMERIC_LIT_nonterminal1(
yyval.all).DECIMAL_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  107 =>
--#line  549

   
yyval := new NUMERIC_LIT_nonterminal2;
   NUMERIC_LIT_nonterminal2(
yyval.all).BASED_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  108 =>
--#line  555

   
yyval := new CHAR_LIT_nonterminal;
   CHAR_LIT_nonterminal(
yyval.all).CHAR_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  109 =>
--#line  561

   
yyval := new GT_GT_nonterminal;
   GT_GT_nonterminal(
yyval.all).RIGHT_LABEL_BRACKET_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  110 =>
--#line  567

   
yyval := new LT_LT_nonterminal;
   LT_LT_nonterminal(
yyval.all).LEFT_LABEL_BRACKET_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  111 =>
--#line  573

   
yyval := new GE_nonterminal;
   GE_nonterminal(
yyval.all).GREATER_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  112 =>
--#line  579

   
yyval := new LT_EQ_nonterminal;
   LT_EQ_nonterminal(
yyval.all).LESS_THAN_OR_EQUAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  113 =>
--#line  585

   
yyval := new NE_nonterminal;
   NE_nonterminal(
yyval.all).INEQUALITY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  114 =>
--#line  591

   
yyval := new CHAR_STRING_nonterminal;
   CHAR_STRING_nonterminal(
yyval.all).STRING_LITERAL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  115 =>
--#line  597

   
yyval := new pragma_sym_nonterminal1;
   pragma_sym_nonterminal1(
yyval.all).PRAGMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   pragma_sym_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_sym_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  116 =>
--#line  603

   
yyval := new pragma_sym_nonterminal2;
   pragma_sym_nonterminal2(
yyval.all).PRAGMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   pragma_sym_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   pragma_sym_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   pragma_sym_nonterminal2(
yyval.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_sym_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_sym_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  117 =>
--#line  614

   
yyval := new pragma_arg_s_nonterminal1;
   pragma_arg_s_nonterminal1(
yyval.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  118 =>
--#line  618

   
yyval := new pragma_arg_s_nonterminal2;
   pragma_arg_s_nonterminal2(
yyval.all).pragma_arg_s_part :=    pragma_arg_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_arg_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_arg_s_nonterminal2(
yyval.all).pragma_arg_part :=    pragma_arg_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  119 =>
--#line  626

   
yyval := new pragma_arg_nonterminal1;
   pragma_arg_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  120 =>
--#line  630

   
yyval := new pragma_arg_nonterminal2;
   pragma_arg_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pragma_arg_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pragma_arg_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  121 =>
--#line  638

   
yyval := new pragma_s_nonterminal1;
   

when  122 =>
--#line  641

   
yyval := new pragma_s_nonterminal2;
   pragma_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pragma_s_nonterminal2(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  123 =>
--#line  648

   
yyval := new decl_nonterminal1;
   decl_nonterminal1(
yyval.all).object_decl_part :=    object_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  124 =>
--#line  652

   
yyval := new decl_nonterminal2;
   decl_nonterminal2(
yyval.all).number_decl_part :=    number_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  125 =>
--#line  656

   
yyval := new decl_nonterminal3;
   decl_nonterminal3(
yyval.all).type_decl_part :=    type_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  126 =>
--#line  660

   
yyval := new decl_nonterminal4;
   decl_nonterminal4(
yyval.all).subtype_decl_part :=    subtype_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  127 =>
--#line  664

   
yyval := new decl_nonterminal5;
   decl_nonterminal5(
yyval.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  128 =>
--#line  668

   
yyval := new decl_nonterminal6;
   decl_nonterminal6(
yyval.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  129 =>
--#line  672

   
yyval := new decl_nonterminal7;
   decl_nonterminal7(
yyval.all).task_decl_part :=    task_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  130 =>
--#line  676

   
yyval := new decl_nonterminal8;
   decl_nonterminal8(
yyval.all).prot_decl_part :=    prot_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  131 =>
--#line  680

   
yyval := new decl_nonterminal9;
   decl_nonterminal9(
yyval.all).exception_decl_part :=    exception_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  132 =>
--#line  684

   
yyval := new decl_nonterminal10;
   decl_nonterminal10(
yyval.all).rename_decl_part :=    rename_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  133 =>
--#line  688

   
yyval := new decl_nonterminal11;
   decl_nonterminal11(
yyval.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  134 =>
--#line  692

   
yyval := new decl_nonterminal12;
   decl_nonterminal12(
yyval.all).body_stub_part :=    body_stub_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  135 =>
--#line  698

   
yyval := new object_decl_nonterminal;
   object_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   object_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   object_decl_nonterminal(
yyval.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   object_decl_nonterminal(
yyval.all).object_subtype_def_part :=    object_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   object_decl_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   object_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  136 =>
--#line  709

   
yyval := new def_id_s_nonterminal1;
   def_id_s_nonterminal1(
yyval.all).def_id_part :=    def_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  137 =>
--#line  713

   
yyval := new def_id_s_nonterminal2;
   def_id_s_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   def_id_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   def_id_s_nonterminal2(
yyval.all).def_id_part :=    def_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  138 =>
--#line  721

   
yyval := new def_id_nonterminal;
   def_id_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  139 =>
--#line  727

   
yyval := new object_qualifier_opt_nonterminal1;
   

when  140 =>
--#line  730

   
yyval := new object_qualifier_opt_nonterminal2;
   object_qualifier_opt_nonterminal2(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  141 =>
--#line  734

   
yyval := new object_qualifier_opt_nonterminal3;
   object_qualifier_opt_nonterminal3(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  142 =>
--#line  738

   
yyval := new object_qualifier_opt_nonterminal4;
   object_qualifier_opt_nonterminal4(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   object_qualifier_opt_nonterminal4(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  143 =>
--#line  745

   
yyval := new object_subtype_def_nonterminal1;
   object_subtype_def_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  144 =>
--#line  749

   
yyval := new object_subtype_def_nonterminal2;
   object_subtype_def_nonterminal2(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  145 =>
--#line  753

   
yyval := new object_subtype_def_nonterminal3;
   object_subtype_def_nonterminal3(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  146 =>
--#line  759

   
yyval := new init_opt_nonterminal1;
   

when  147 =>
--#line  762

   
yyval := new init_opt_nonterminal2;
   init_opt_nonterminal2(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   init_opt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  148 =>
--#line  769

   
yyval := new number_decl_nonterminal;
   number_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   number_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   number_decl_nonterminal(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   number_decl_nonterminal(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   number_decl_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   number_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  149 =>
--#line  780

   
yyval := new type_decl_nonterminal;
   type_decl_nonterminal(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   type_decl_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   type_decl_nonterminal(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   type_decl_nonterminal(
yyval.all).type_completion_part :=    type_completion_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   type_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  150 =>
--#line  790

   
yyval := new discrim_part_opt_nonterminal1;
   

when  151 =>
--#line  793

   
yyval := new discrim_part_opt_nonterminal2;
   discrim_part_opt_nonterminal2(
yyval.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  152 =>
--#line  797

   
yyval := new discrim_part_opt_nonterminal3;
   discrim_part_opt_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_part_opt_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   discrim_part_opt_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  153 =>
--#line  805

   
yyval := new type_completion_nonterminal1;
   

when  154 =>
--#line  808

   
yyval := new type_completion_nonterminal2;
   type_completion_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   type_completion_nonterminal2(
yyval.all).type_def_part :=    type_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  155 =>
--#line  813

   
yyval := new type_completion_nonterminal3;
   type_completion_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   type_completion_nonterminal3(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  156 =>
--#line  820

   
yyval := new type_def_nonterminal1;
   type_def_nonterminal1(
yyval.all).enumeration_type_part :=    enumeration_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  157 =>
--#line  824

   
yyval := new type_def_nonterminal2;
   type_def_nonterminal2(
yyval.all).integer_type_part :=    integer_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  158 =>
--#line  828

   
yyval := new type_def_nonterminal3;
   type_def_nonterminal3(
yyval.all).real_type_part :=    real_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  159 =>
--#line  832

   
yyval := new type_def_nonterminal4;
   type_def_nonterminal4(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  160 =>
--#line  836

   
yyval := new type_def_nonterminal5;
   type_def_nonterminal5(
yyval.all).record_type_part :=    record_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  161 =>
--#line  840

   
yyval := new type_def_nonterminal6;
   type_def_nonterminal6(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  162 =>
--#line  844

   
yyval := new type_def_nonterminal7;
   type_def_nonterminal7(
yyval.all).derived_type_part :=    derived_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  163 =>
--#line  848

   
yyval := new type_def_nonterminal8;
   type_def_nonterminal8(
yyval.all).private_type_part :=    private_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  164 =>
--#line  852

   
yyval := new type_def_nonterminal9;
   type_def_nonterminal9(
yyval.all).interface_type_part :=    interface_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  165 =>
--#line  858

   
yyval := new subtype_decl_nonterminal1;
   subtype_decl_nonterminal1(
yyval.all).SUBTYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subtype_decl_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subtype_decl_nonterminal1(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subtype_decl_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subtype_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  166 =>
--#line  866

   
yyval := new subtype_decl_nonterminal2;
   subtype_decl_nonterminal2(
yyval.all).SUBTYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   subtype_decl_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   subtype_decl_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subtype_decl_nonterminal2(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subtype_decl_nonterminal2(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subtype_decl_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subtype_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  167 =>
--#line  878

   
yyval := new subtype_ind_nonterminal1;
   subtype_ind_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subtype_ind_nonterminal1(
yyval.all).constraint_part :=    constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  168 =>
--#line  883

   
yyval := new subtype_ind_nonterminal2;
   subtype_ind_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  169 =>
--#line  889

   
yyval := new constraint_nonterminal1;
   constraint_nonterminal1(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  170 =>
--#line  893

   
yyval := new constraint_nonterminal2;
   constraint_nonterminal2(
yyval.all).decimal_digits_constraint_part :=    decimal_digits_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  171 =>
--#line  899

   
yyval := new decimal_digits_constraint_nonterminal;
   decimal_digits_constraint_nonterminal(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   decimal_digits_constraint_nonterminal(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decimal_digits_constraint_nonterminal(
yyval.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  172 =>
--#line  907

   
yyval := new opt_interface_list_nonterminal1;
   opt_interface_list_nonterminal1(
yyval.all).AND_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   opt_interface_list_nonterminal1(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   opt_interface_list_nonterminal1(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  173 =>
--#line  913

   
yyval := new opt_interface_list_nonterminal2;
   

when  174 =>
--#line  918

   
yyval := new derived_type_nonterminal1;
   derived_type_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  175 =>
--#line  923

   
yyval := new derived_type_nonterminal2;
   derived_type_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  176 =>
--#line  930

   
yyval := new derived_type_nonterminal3;
   derived_type_nonterminal3(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal3(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  177 =>
--#line  937

   
yyval := new derived_type_nonterminal4;
   derived_type_nonterminal4(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   derived_type_nonterminal4(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal4(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal4(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal4(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  178 =>
--#line  946

   
yyval := new derived_type_nonterminal5;
   derived_type_nonterminal5(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   derived_type_nonterminal5(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal5(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal5(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal5(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal5(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  179 =>
--#line  955

   
yyval := new derived_type_nonterminal6;
   derived_type_nonterminal6(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   derived_type_nonterminal6(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   derived_type_nonterminal6(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal6(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal6(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal6(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal6(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  180 =>
--#line  965

   
yyval := new derived_type_nonterminal7;
   derived_type_nonterminal7(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   derived_type_nonterminal7(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   derived_type_nonterminal7(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   derived_type_nonterminal7(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   derived_type_nonterminal7(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   derived_type_nonterminal7(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   derived_type_nonterminal7(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  181 =>
--#line  977

   
yyval := new range_constraint_nonterminal;
   range_constraint_nonterminal(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_constraint_nonterminal(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  182 =>
--#line  984

   
yyval := new range_sym_nonterminal1;
   range_sym_nonterminal1(
yyval.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal1(
yyval.all).DOUBLE_DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal1(
yyval.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  183 =>
--#line  990

   
yyval := new range_sym_nonterminal2;
   range_sym_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal2(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  184 =>
--#line  996

   
yyval := new range_sym_nonterminal3;
   range_sym_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   range_sym_nonterminal3(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   range_sym_nonterminal3(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   range_sym_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   range_sym_nonterminal3(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   range_sym_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  185 =>
--#line  1007

   
yyval := new enumeration_type_nonterminal;
   enumeration_type_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   enumeration_type_nonterminal(
yyval.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   enumeration_type_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  186 =>
--#line  1015

   
yyval := new enum_id_s_nonterminal1;
   enum_id_s_nonterminal1(
yyval.all).enum_id_part :=    enum_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  187 =>
--#line  1019

   
yyval := new enum_id_s_nonterminal2;
   enum_id_s_nonterminal2(
yyval.all).enum_id_s_part :=    enum_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   enum_id_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   enum_id_s_nonterminal2(
yyval.all).enum_id_part :=    enum_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  188 =>
--#line  1027

   
yyval := new enum_id_nonterminal1;
   enum_id_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  189 =>
--#line  1031

   
yyval := new enum_id_nonterminal2;
   enum_id_nonterminal2(
yyval.all).char_lit_part :=    char_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  190 =>
--#line  1037

   
yyval := new interface_type_nonterminal1;
   interface_type_nonterminal1(
yyval.all).INTERFACE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   interface_type_nonterminal1(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  191 =>
--#line  1042

   
yyval := new interface_type_nonterminal2;
   interface_type_nonterminal2(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   interface_type_nonterminal2(
yyval.all).INTERFACE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   interface_type_nonterminal2(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  192 =>
--#line  1048

   
yyval := new interface_type_nonterminal3;
   interface_type_nonterminal3(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   interface_type_nonterminal3(
yyval.all).INTERFACE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   interface_type_nonterminal3(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  193 =>
--#line  1054

   
yyval := new interface_type_nonterminal4;
   interface_type_nonterminal4(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   interface_type_nonterminal4(
yyval.all).INTERFACE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   interface_type_nonterminal4(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  194 =>
--#line  1062

   
yyval := new integer_type_nonterminal1;
   integer_type_nonterminal1(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  195 =>
--#line  1066

   
yyval := new integer_type_nonterminal2;
   integer_type_nonterminal2(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   integer_type_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  196 =>
--#line  1073

   
yyval := new range_spec_nonterminal;
   range_spec_nonterminal(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  197 =>
--#line  1079

   
yyval := new range_spec_opt_nonterminal1;
   

when  198 =>
--#line  1082

   
yyval := new range_spec_opt_nonterminal2;
   range_spec_opt_nonterminal2(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  199 =>
--#line  1088

   
yyval := new real_type_nonterminal1;
   real_type_nonterminal1(
yyval.all).float_type_part :=    float_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  200 =>
--#line  1092

   
yyval := new real_type_nonterminal2;
   real_type_nonterminal2(
yyval.all).fixed_type_part :=    fixed_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  201 =>
--#line  1098

   
yyval := new float_type_nonterminal;
   float_type_nonterminal(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   float_type_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   float_type_nonterminal(
yyval.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  202 =>
--#line  1106

   
yyval := new fixed_type_nonterminal1;
   fixed_type_nonterminal1(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   fixed_type_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   fixed_type_nonterminal1(
yyval.all).range_spec_part :=    range_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  203 =>
--#line  1112

   
yyval := new fixed_type_nonterminal2;
   fixed_type_nonterminal2(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   fixed_type_nonterminal2(
yyval.all).expression_part1 :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   fixed_type_nonterminal2(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   fixed_type_nonterminal2(
yyval.all).expression_part2 :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   fixed_type_nonterminal2(
yyval.all).range_spec_opt_part :=    range_spec_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  204 =>
--#line  1122

   
yyval := new array_type_nonterminal1;
   array_type_nonterminal1(
yyval.all).unconstr_array_type_part :=    unconstr_array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  205 =>
--#line  1126

   
yyval := new array_type_nonterminal2;
   array_type_nonterminal2(
yyval.all).constr_array_type_part :=    constr_array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  206 =>
--#line  1132

   
yyval := new unconstr_array_type_nonterminal;
   unconstr_array_type_nonterminal(
yyval.all).ARRAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   unconstr_array_type_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   unconstr_array_type_nonterminal(
yyval.all).index_s_part :=    index_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   unconstr_array_type_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   unconstr_array_type_nonterminal(
yyval.all).OF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   unconstr_array_type_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  207 =>
--#line  1143

   
yyval := new constr_array_type_nonterminal;
   constr_array_type_nonterminal(
yyval.all).ARRAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   constr_array_type_nonterminal(
yyval.all).iter_index_constraint_part :=    iter_index_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   constr_array_type_nonterminal(
yyval.all).OF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   constr_array_type_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  208 =>
--#line  1152

   
yyval := new component_subtype_def_nonterminal1;
   component_subtype_def_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  209 =>
--#line  1156

   
yyval := new component_subtype_def_nonterminal2;
   component_subtype_def_nonterminal2(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   component_subtype_def_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  210 =>
--#line  1161

   
yyval := new component_subtype_def_nonterminal3;
   component_subtype_def_nonterminal3(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  211 =>
--#line  1165

   
yyval := new component_subtype_def_nonterminal4;
   component_subtype_def_nonterminal4(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   component_subtype_def_nonterminal4(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  212 =>
--#line  1172

   
yyval := new aliased_opt_nonterminal1;
   

when  213 =>
--#line  1175

   
yyval := new aliased_opt_nonterminal2;
   aliased_opt_nonterminal2(
yyval.all).aliased_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  214 =>
--#line  1181

   
yyval := new index_s_nonterminal1;
   index_s_nonterminal1(
yyval.all).index_part :=    index_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  215 =>
--#line  1185

   
yyval := new index_s_nonterminal2;
   index_s_nonterminal2(
yyval.all).index_s_part :=    index_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   index_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   index_s_nonterminal2(
yyval.all).index_part :=    index_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  216 =>
--#line  1193

   
yyval := new index_nonterminal;
   index_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   index_nonterminal(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   index_nonterminal(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  217 =>
--#line  1201

   
yyval := new iter_index_constraint_nonterminal;
   iter_index_constraint_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   iter_index_constraint_nonterminal(
yyval.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   iter_index_constraint_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  218 =>
--#line  1209

   
yyval := new iter_discrete_range_s_nonterminal1;
   iter_discrete_range_s_nonterminal1(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  219 =>
--#line  1213

   
yyval := new iter_discrete_range_s_nonterminal2;
   iter_discrete_range_s_nonterminal2(
yyval.all).iter_discrete_range_s_part :=    iter_discrete_range_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   iter_discrete_range_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iter_discrete_range_s_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  220 =>
--#line  1221

   
yyval := new discrete_range_nonterminal1;
   discrete_range_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrete_range_nonterminal1(
yyval.all).range_constr_opt_part :=    range_constr_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  221 =>
--#line  1226

   
yyval := new discrete_range_nonterminal2;
   discrete_range_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  222 =>
--#line  1232

   
yyval := new range_constr_opt_nonterminal1;
   

when  223 =>
--#line  1235

   
yyval := new range_constr_opt_nonterminal2;
   range_constr_opt_nonterminal2(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  224 =>
--#line  1241

   
yyval := new record_type_nonterminal1;
   record_type_nonterminal1(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   record_type_nonterminal1(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_type_nonterminal1(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  225 =>
--#line  1247

   
yyval := new record_type_nonterminal2;
   record_type_nonterminal2(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_type_nonterminal2(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  226 =>
--#line  1252

   
yyval := new record_type_nonterminal3;
   record_type_nonterminal3(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_type_nonterminal3(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  227 =>
--#line  1257

   
yyval := new record_type_nonterminal4;
   record_type_nonterminal4(
yyval.all).record_def_part :=    record_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  228 =>
--#line  1263

   
yyval := new record_def_nonterminal1;
   record_def_nonterminal1(
yyval.all).RECORD_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   record_def_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   record_def_nonterminal1(
yyval.all).comp_list_part :=    comp_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   record_def_nonterminal1(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_def_nonterminal1(
yyval.all).RECORD_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  229 =>
--#line  1271

   
yyval := new record_def_nonterminal2;
   record_def_nonterminal2(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_def_nonterminal2(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  230 =>
--#line  1278

   
yyval := new tagged_opt_nonterminal1;
   

when  231 =>
--#line  1281

   
yyval := new tagged_opt_nonterminal2;
   tagged_opt_nonterminal2(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  232 =>
--#line  1285

   
yyval := new tagged_opt_nonterminal3;
   tagged_opt_nonterminal3(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   tagged_opt_nonterminal3(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  233 =>
--#line  1292

   
yyval := new comp_list_nonterminal1;
   comp_list_nonterminal1(
yyval.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal1(
yyval.all).variant_part_opt_part :=    variant_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  234 =>
--#line  1297

   
yyval := new comp_list_nonterminal2;
   comp_list_nonterminal2(
yyval.all).variant_part_part :=    variant_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  235 =>
--#line  1302

   
yyval := new comp_list_nonterminal3;
   comp_list_nonterminal3(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   comp_list_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   comp_list_nonterminal3(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  236 =>
--#line  1310

   
yyval := new comp_decl_s_nonterminal1;
   comp_decl_s_nonterminal1(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  237 =>
--#line  1314

   
yyval := new comp_decl_s_nonterminal2;
   comp_decl_s_nonterminal2(
yyval.all).comp_decl_s_part :=    comp_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_decl_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_decl_s_nonterminal2(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  238 =>
--#line  1322

   
yyval := new variant_part_opt_nonterminal1;
   variant_part_opt_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  239 =>
--#line  1326

   
yyval := new variant_part_opt_nonterminal2;
   variant_part_opt_nonterminal2(
yyval.all).pragma_s_part1 :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   variant_part_opt_nonterminal2(
yyval.all).variant_part_part :=    variant_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_part_opt_nonterminal2(
yyval.all).pragma_s_part2 :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  240 =>
--#line  1334

   
yyval := new comp_decl_nonterminal;
   comp_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   comp_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   comp_decl_nonterminal(
yyval.all).component_subtype_def_part :=    component_subtype_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_decl_nonterminal(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  241 =>
--#line  1344

   
yyval := new discrim_part_nonterminal;
   discrim_part_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_part_nonterminal(
yyval.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_part_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  242 =>
--#line  1352

   
yyval := new discrim_spec_s_nonterminal1;
   discrim_spec_s_nonterminal1(
yyval.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  243 =>
--#line  1356

   
yyval := new discrim_spec_s_nonterminal2;
   discrim_spec_s_nonterminal2(
yyval.all).discrim_spec_s_part :=    discrim_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_s_nonterminal2(
yyval.all).discrim_spec_part :=    discrim_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  244 =>
--#line  1364

   
yyval := new discrim_spec_nonterminal1;
   discrim_spec_nonterminal1(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   discrim_spec_nonterminal1(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   discrim_spec_nonterminal1(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   discrim_spec_nonterminal1(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_nonterminal1(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_nonterminal1(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  245 =>
--#line  1373

   
yyval := new discrim_spec_nonterminal2;
   discrim_spec_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   discrim_spec_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_nonterminal2(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_nonterminal2(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  246 =>
--#line  1380

   
yyval := new discrim_spec_nonterminal3;
   discrim_spec_nonterminal3(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   discrim_spec_nonterminal3(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   discrim_spec_nonterminal3(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrim_spec_nonterminal3(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  247 =>
--#line  1389

   
yyval := new access_opt_nonterminal1;
   

when  248 =>
--#line  1392

   
yyval := new access_opt_nonterminal2;
   access_opt_nonterminal2(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  249 =>
--#line  1398

   
yyval := new variant_part_nonterminal;
   variant_part_nonterminal(
yyval.all).CASE_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   variant_part_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   variant_part_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   variant_part_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   variant_part_nonterminal(
yyval.all).variant_s_part :=    variant_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   variant_part_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   variant_part_nonterminal(
yyval.all).CASE_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   variant_part_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  250 =>
--#line  1411

   
yyval := new variant_s_nonterminal1;
   variant_s_nonterminal1(
yyval.all).variant_part :=    variant_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  251 =>
--#line  1415

   
yyval := new variant_s_nonterminal2;
   variant_s_nonterminal2(
yyval.all).variant_s_part :=    variant_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_s_nonterminal2(
yyval.all).variant_part :=    variant_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  252 =>
--#line  1422

   
yyval := new variant_nonterminal;
   variant_nonterminal(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   variant_nonterminal(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   variant_nonterminal(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   variant_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   variant_nonterminal(
yyval.all).comp_list_part :=    comp_list_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  253 =>
--#line  1432

   
yyval := new choice_s_nonterminal1;
   choice_s_nonterminal1(
yyval.all).choice_part :=    choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  254 =>
--#line  1436

   
yyval := new choice_s_nonterminal2;
   choice_s_nonterminal2(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   choice_s_nonterminal2(
yyval.all).PIPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   choice_s_nonterminal2(
yyval.all).choice_part :=    choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  255 =>
--#line  1444

   
yyval := new choice_nonterminal1;
   choice_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  256 =>
--#line  1448

   
yyval := new choice_nonterminal2;
   choice_nonterminal2(
yyval.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  257 =>
--#line  1452

   
yyval := new choice_nonterminal3;
   choice_nonterminal3(
yyval.all).OTHERS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  258 =>
--#line  1458

   
yyval := new discrete_with_range_nonterminal1;
   discrete_with_range_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   discrete_with_range_nonterminal1(
yyval.all).range_constraint_part :=    range_constraint_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  259 =>
--#line  1463

   
yyval := new discrete_with_range_nonterminal2;
   discrete_with_range_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  260 =>
--#line  1469

   
yyval := new not_null_opt_nonterminal1;
   not_null_opt_nonterminal1(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   not_null_opt_nonterminal1(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  261 =>
--#line  1474

   
yyval := new not_null_opt_nonterminal2;
   

when  262 =>
--#line  1479

   
yyval := new not_null_opt_access_nonterminal1;
   not_null_opt_access_nonterminal1(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   not_null_opt_access_nonterminal1(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   not_null_opt_access_nonterminal1(
yyval.all).aCCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  263 =>
--#line  1485

   
yyval := new not_null_opt_access_nonterminal2;
   not_null_opt_access_nonterminal2(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  264 =>
--#line  1491

   
yyval := new access_type_nonterminal1;
   access_type_nonterminal1(
yyval.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  265 =>
--#line  1496

   
yyval := new access_type_nonterminal2;
   access_type_nonterminal2(
yyval.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal2(
yyval.all).CONSTANT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  266 =>
--#line  1502

   
yyval := new access_type_nonterminal3;
   access_type_nonterminal3(
yyval.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal3(
yyval.all).all_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  267 =>
--#line  1508

   
yyval := new access_type_nonterminal4;
   access_type_nonterminal4(
yyval.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   access_type_nonterminal4(
yyval.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal4(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  268 =>
--#line  1515

   
yyval := new access_type_nonterminal5;
   access_type_nonterminal5(
yyval.all).not_null_opt_access_part :=    not_null_opt_access_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   access_type_nonterminal5(
yyval.all).prot_opt_part :=    prot_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   access_type_nonterminal5(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   access_type_nonterminal5(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   access_type_nonterminal5(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   access_type_nonterminal5(
yyval.all).not_null_opt_part :=    not_null_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   access_type_nonterminal5(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  269 =>
--#line  1527

   
yyval := new prot_opt_nonterminal1;
   

when  270 =>
--#line  1530

   
yyval := new prot_opt_nonterminal2;
   prot_opt_nonterminal2(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  271 =>
--#line  1536

   
yyval := new decl_part_nonterminal1;
   

when  272 =>
--#line  1539

   
yyval := new decl_part_nonterminal2;
   decl_part_nonterminal2(
yyval.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  273 =>
--#line  1545

   
yyval := new decl_item_s_nonterminal1;
   

when  274 =>
--#line  1548

   
yyval := new decl_item_s_nonterminal2;
   decl_item_s_nonterminal2(
yyval.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  275 =>
--#line  1554

   
yyval := new decl_item_s1_nonterminal1;
   decl_item_s1_nonterminal1(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  276 =>
--#line  1558

   
yyval := new decl_item_s1_nonterminal2;
   decl_item_s1_nonterminal2(
yyval.all).decl_item_s1_part :=    decl_item_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decl_item_s1_nonterminal2(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  277 =>
--#line  1565

   
yyval := new decl_item_nonterminal1;
   decl_item_nonterminal1(
yyval.all).decl_part :=    decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  278 =>
--#line  1569

   
yyval := new decl_item_nonterminal2;
   decl_item_nonterminal2(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  279 =>
--#line  1573

   
yyval := new decl_item_nonterminal3;
   decl_item_nonterminal3(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  280 =>
--#line  1577

   
yyval := new decl_item_nonterminal4;
   decl_item_nonterminal4(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  281 =>
--#line  1583

   
yyval := new decl_item_or_body_s1_nonterminal1;
   decl_item_or_body_s1_nonterminal1(
yyval.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  282 =>
--#line  1587

   
yyval := new decl_item_or_body_s1_nonterminal2;
   decl_item_or_body_s1_nonterminal2(
yyval.all).decl_item_or_body_s1_part :=    decl_item_or_body_s1_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   decl_item_or_body_s1_nonterminal2(
yyval.all).decl_item_or_body_part :=    decl_item_or_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  283 =>
--#line  1594

   
yyval := new decl_item_or_body_nonterminal1;
   decl_item_or_body_nonterminal1(
yyval.all).body_nt_part :=    body_nt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  284 =>
--#line  1598

   
yyval := new decl_item_or_body_nonterminal2;
   decl_item_or_body_nonterminal2(
yyval.all).decl_item_part :=    decl_item_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  285 =>
--#line  1604

   
yyval := new body_nt_nonterminal1;
   body_nt_nonterminal1(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  286 =>
--#line  1608

   
yyval := new body_nt_nonterminal2;
   body_nt_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  287 =>
--#line  1612

   
yyval := new body_nt_nonterminal3;
   body_nt_nonterminal3(
yyval.all).task_body_part :=    task_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  288 =>
--#line  1616

   
yyval := new body_nt_nonterminal4;
   body_nt_nonterminal4(
yyval.all).prot_body_part :=    prot_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  289 =>
--#line  1622

   
yyval := new name_nonterminal1;
   name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  290 =>
--#line  1626

   
yyval := new name_nonterminal2;
   name_nonterminal2(
yyval.all).indexed_comp_part :=    indexed_comp_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  291 =>
--#line  1630

   
yyval := new name_nonterminal3;
   name_nonterminal3(
yyval.all).selected_comp_part :=    selected_comp_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  292 =>
--#line  1634

   
yyval := new name_nonterminal4;
   name_nonterminal4(
yyval.all).attribute_part :=    attribute_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  293 =>
--#line  1638

   
yyval := new name_nonterminal5;
   name_nonterminal5(
yyval.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  294 =>
--#line  1644

   
yyval := new mark_nonterminal1;
   mark_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  295 =>
--#line  1648

   
yyval := new mark_nonterminal2;
   mark_nonterminal2(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   mark_nonterminal2(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mark_nonterminal2(
yyval.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  296 =>
--#line  1654

   
yyval := new mark_nonterminal3;
   mark_nonterminal3(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   mark_nonterminal3(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mark_nonterminal3(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  297 =>
--#line  1662

   
yyval := new simple_name_nonterminal;
   simple_name_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  298 =>
--#line  1668

   
yyval := new compound_name_nonterminal1;
   compound_name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  299 =>
--#line  1672

   
yyval := new compound_name_nonterminal2;
   compound_name_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   compound_name_nonterminal2(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   compound_name_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  300 =>
--#line  1680

   
yyval := new c_name_list_nonterminal1;
   c_name_list_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  301 =>
--#line  1684

   
yyval := new c_name_list_nonterminal2;
   c_name_list_nonterminal2(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   c_name_list_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   c_name_list_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  302 =>
--#line  1692

   
yyval := new used_char_nonterminal;
   used_char_nonterminal(
yyval.all).char_lit_part :=    char_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  303 =>
--#line  1698

   
yyval := new operator_symbol_nonterminal;
   operator_symbol_nonterminal(
yyval.all).char_string_part :=    char_string_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  304 =>
--#line  1704

   
yyval := new indexed_comp_nonterminal;
   indexed_comp_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   indexed_comp_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   indexed_comp_nonterminal(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   indexed_comp_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  305 =>
--#line  1713

   
yyval := new value_s_nonterminal1;
   value_s_nonterminal1(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  306 =>
--#line  1717

   
yyval := new value_s_nonterminal2;
   value_s_nonterminal2(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_nonterminal2(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  307 =>
--#line  1725

   
yyval := new value_nonterminal1;
   value_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  308 =>
--#line  1729

   
yyval := new value_nonterminal2;
   value_nonterminal2(
yyval.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  309 =>
--#line  1733

   
yyval := new value_nonterminal3;
   value_nonterminal3(
yyval.all).discrete_with_range_part :=    discrete_with_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  310 =>
--#line  1739

   
yyval := new selected_comp_nonterminal1;
   selected_comp_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal1(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  311 =>
--#line  1745

   
yyval := new selected_comp_nonterminal2;
   selected_comp_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal2(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal2(
yyval.all).used_char_part :=    used_char_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  312 =>
--#line  1751

   
yyval := new selected_comp_nonterminal3;
   selected_comp_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal3(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal3(
yyval.all).operator_symbol_part :=    operator_symbol_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  313 =>
--#line  1757

   
yyval := new selected_comp_nonterminal4;
   selected_comp_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   selected_comp_nonterminal4(
yyval.all).DOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   selected_comp_nonterminal4(
yyval.all).all_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  314 =>
--#line  1765

   
yyval := new attribute_nonterminal;
   attribute_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   attribute_nonterminal(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   attribute_nonterminal(
yyval.all).attribute_id_part :=    attribute_id_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  315 =>
--#line  1773

   
yyval := new attribute_id_nonterminal1;
   attribute_id_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  316 =>
--#line  1777

   
yyval := new attribute_id_nonterminal2;
   attribute_id_nonterminal2(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  317 =>
--#line  1781

   
yyval := new attribute_id_nonterminal3;
   attribute_id_nonterminal3(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  318 =>
--#line  1785

   
yyval := new attribute_id_nonterminal4;
   attribute_id_nonterminal4(
yyval.all).ACCESS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  319 =>
--#line  1791

   
yyval := new literal_nonterminal1;
   literal_nonterminal1(
yyval.all).numeric_lit_part :=    numeric_lit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  320 =>
--#line  1795

   
yyval := new literal_nonterminal2;
   literal_nonterminal2(
yyval.all).used_char_part :=    used_char_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  321 =>
--#line  1799

   
yyval := new literal_nonterminal3;
   literal_nonterminal3(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  322 =>
--#line  1805

   
yyval := new aggregate_nonterminal1;
   aggregate_nonterminal1(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal1(
yyval.all).comp_assoc_part :=    comp_assoc_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal1(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  323 =>
--#line  1811

   
yyval := new aggregate_nonterminal2;
   aggregate_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal2(
yyval.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  324 =>
--#line  1817

   
yyval := new aggregate_nonterminal3;
   aggregate_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   aggregate_nonterminal3(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal3(
yyval.all).value_s_part :=    value_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  325 =>
--#line  1825

   
yyval := new aggregate_nonterminal4;
   aggregate_nonterminal4(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   aggregate_nonterminal4(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   aggregate_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal4(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal4(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal4(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  326 =>
--#line  1834

   
yyval := new aggregate_nonterminal5;
   aggregate_nonterminal5(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   aggregate_nonterminal5(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   aggregate_nonterminal5(
yyval.all).RECORD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   aggregate_nonterminal5(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  327 =>
--#line  1843

   
yyval := new value_s_2_nonterminal1;
   value_s_2_nonterminal1(
yyval.all).value_part1 :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_2_nonterminal1(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_2_nonterminal1(
yyval.all).value_part2 :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  328 =>
--#line  1849

   
yyval := new value_s_2_nonterminal2;
   value_s_2_nonterminal2(
yyval.all).value_s_2_part :=    value_s_2_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   value_s_2_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   value_s_2_nonterminal2(
yyval.all).value_part :=    value_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  329 =>
--#line  1857

   
yyval := new comp_assoc_nonterminal1;
   comp_assoc_nonterminal1(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_assoc_nonterminal1(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   comp_assoc_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  330 =>
--#line  1863

   
yyval := new comp_assoc_nonterminal2;
   comp_assoc_nonterminal2(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_assoc_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   comp_assoc_nonterminal2(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  331 =>
--#line  1871

   
yyval := new expression_nonterminal1;
   expression_nonterminal1(
yyval.all).relation_part :=    relation_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  332 =>
--#line  1875

   
yyval := new expression_nonterminal2;
   expression_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   expression_nonterminal2(
yyval.all).logical_part :=    logical_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   expression_nonterminal2(
yyval.all).relation_part :=    relation_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  333 =>
--#line  1883

   
yyval := new logical_nonterminal1;
   logical_nonterminal1(
yyval.all).and_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  334 =>
--#line  1887

   
yyval := new logical_nonterminal2;
   logical_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  335 =>
--#line  1891

   
yyval := new logical_nonterminal3;
   logical_nonterminal3(
yyval.all).XOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  336 =>
--#line  1895

   
yyval := new logical_nonterminal4;
   logical_nonterminal4(
yyval.all).and_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   logical_nonterminal4(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  337 =>
--#line  1900

   
yyval := new logical_nonterminal5;
   logical_nonterminal5(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   logical_nonterminal5(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  338 =>
--#line  1907

   
yyval := new relation_nonterminal1;
   relation_nonterminal1(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  339 =>
--#line  1911

   
yyval := new relation_nonterminal2;
   relation_nonterminal2(
yyval.all).simple_expression_part1 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal2(
yyval.all).relational_part :=    relational_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal2(
yyval.all).simple_expression_part2 :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  340 =>
--#line  1917

   
yyval := new relation_nonterminal3;
   relation_nonterminal3(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal3(
yyval.all).membership_part :=    membership_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal3(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  341 =>
--#line  1923

   
yyval := new relation_nonterminal4;
   relation_nonterminal4(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   relation_nonterminal4(
yyval.all).membership_part :=    membership_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   relation_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  342 =>
--#line  1931

   
yyval := new relational_nonterminal1;
   relational_nonterminal1(
yyval.all).EQ_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  343 =>
--#line  1935

   
yyval := new relational_nonterminal2;
   relational_nonterminal2(
yyval.all).NE_part :=    NE_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  344 =>
--#line  1939

   
yyval := new relational_nonterminal3;
   relational_nonterminal3(
yyval.all).LT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  345 =>
--#line  1943

   
yyval := new relational_nonterminal4;
   relational_nonterminal4(
yyval.all).LT_EQ_part :=    LT_EQ_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  346 =>
--#line  1947

   
yyval := new relational_nonterminal5;
   relational_nonterminal5(
yyval.all).GT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  347 =>
--#line  1951

   
yyval := new relational_nonterminal6;
   relational_nonterminal6(
yyval.all).GE_part :=    GE_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  348 =>
--#line  1957

   
yyval := new membership_nonterminal1;
   membership_nonterminal1(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  349 =>
--#line  1961

   
yyval := new membership_nonterminal2;
   membership_nonterminal2(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   membership_nonterminal2(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  350 =>
--#line  1968

   
yyval := new simple_expression_nonterminal1;
   simple_expression_nonterminal1(
yyval.all).unary_part :=    unary_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   simple_expression_nonterminal1(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  351 =>
--#line  1973

   
yyval := new simple_expression_nonterminal2;
   simple_expression_nonterminal2(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  352 =>
--#line  1977

   
yyval := new simple_expression_nonterminal3;
   simple_expression_nonterminal3(
yyval.all).simple_expression_part :=    simple_expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   simple_expression_nonterminal3(
yyval.all).adding_part :=    adding_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   simple_expression_nonterminal3(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  353 =>
--#line  1985

   
yyval := new unary_nonterminal1;
   unary_nonterminal1(
yyval.all).PLUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  354 =>
--#line  1989

   
yyval := new unary_nonterminal2;
   unary_nonterminal2(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  355 =>
--#line  1995

   
yyval := new adding_nonterminal1;
   adding_nonterminal1(
yyval.all).PLUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  356 =>
--#line  1999

   
yyval := new adding_nonterminal2;
   adding_nonterminal2(
yyval.all).MINUS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  357 =>
--#line  2003

   
yyval := new adding_nonterminal3;
   adding_nonterminal3(
yyval.all).BIT_AND_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  358 =>
--#line  2009

   
yyval := new term_nonterminal1;
   term_nonterminal1(
yyval.all).factor_part :=    factor_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  359 =>
--#line  2013

   
yyval := new term_nonterminal2;
   term_nonterminal2(
yyval.all).term_part :=    term_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   term_nonterminal2(
yyval.all).multiplying_part :=    multiplying_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   term_nonterminal2(
yyval.all).factor_part :=    factor_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  360 =>
--#line  2021

   
yyval := new multiplying_nonterminal1;
   multiplying_nonterminal1(
yyval.all).star_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  361 =>
--#line  2025

   
yyval := new multiplying_nonterminal2;
   multiplying_nonterminal2(
yyval.all).SLASH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  362 =>
--#line  2029

   
yyval := new multiplying_nonterminal3;
   multiplying_nonterminal3(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  363 =>
--#line  2033

   
yyval := new multiplying_nonterminal4;
   multiplying_nonterminal4(
yyval.all).REM_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  364 =>
--#line  2039

   
yyval := new factor_nonterminal1;
   factor_nonterminal1(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  365 =>
--#line  2043

   
yyval := new factor_nonterminal2;
   factor_nonterminal2(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal2(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  366 =>
--#line  2048

   
yyval := new factor_nonterminal3;
   factor_nonterminal3(
yyval.all).abs_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal3(
yyval.all).primary_part :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  367 =>
--#line  2053

   
yyval := new factor_nonterminal4;
   factor_nonterminal4(
yyval.all).primary_part1 :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   factor_nonterminal4(
yyval.all).EXPONENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   factor_nonterminal4(
yyval.all).primary_part2 :=    primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  368 =>
--#line  2061

   
yyval := new primary_nonterminal1;
   primary_nonterminal1(
yyval.all).literal_part :=    literal_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  369 =>
--#line  2065

   
yyval := new primary_nonterminal2;
   primary_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  370 =>
--#line  2069

   
yyval := new primary_nonterminal3;
   primary_nonterminal3(
yyval.all).allocator_part :=    allocator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  371 =>
--#line  2073

   
yyval := new primary_nonterminal4;
   primary_nonterminal4(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  372 =>
--#line  2077

   
yyval := new primary_nonterminal5;
   primary_nonterminal5(
yyval.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  373 =>
--#line  2083

   
yyval := new parenthesized_primary_nonterminal1;
   parenthesized_primary_nonterminal1(
yyval.all).aggregate_part :=    aggregate_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  374 =>
--#line  2087

   
yyval := new parenthesized_primary_nonterminal2;
   parenthesized_primary_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   parenthesized_primary_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   parenthesized_primary_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  375 =>
--#line  2095

   
yyval := new qualified_nonterminal;
   qualified_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   qualified_nonterminal(
yyval.all).TICK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   qualified_nonterminal(
yyval.all).parenthesized_primary_part :=    parenthesized_primary_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  376 =>
--#line  2103

   
yyval := new allocator_nonterminal1;
   allocator_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   allocator_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  377 =>
--#line  2108

   
yyval := new allocator_nonterminal2;
   allocator_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   allocator_nonterminal2(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  378 =>
--#line  2115

   
yyval := new statement_s_nonterminal1;
   statement_s_nonterminal1(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  379 =>
--#line  2119

   
yyval := new statement_s_nonterminal2;
   statement_s_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   statement_s_nonterminal2(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  380 =>
--#line  2126

   
yyval := new statement_nonterminal1;
   statement_nonterminal1(
yyval.all).unlabeled_part :=    unlabeled_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  381 =>
--#line  2130

   
yyval := new statement_nonterminal2;
   statement_nonterminal2(
yyval.all).label_part :=    label_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   statement_nonterminal2(
yyval.all).statement_part :=    statement_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  382 =>
--#line  2137

   
yyval := new unlabeled_nonterminal1;
   unlabeled_nonterminal1(
yyval.all).simple_stmt_part :=    simple_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  383 =>
--#line  2141

   
yyval := new unlabeled_nonterminal2;
   unlabeled_nonterminal2(
yyval.all).compound_stmt_part :=    compound_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  384 =>
--#line  2145

   
yyval := new unlabeled_nonterminal3;
   unlabeled_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  385 =>
--#line  2151

   
yyval := new simple_stmt_nonterminal1;
   simple_stmt_nonterminal1(
yyval.all).null_stmt_part :=    null_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  386 =>
--#line  2155

   
yyval := new simple_stmt_nonterminal2;
   simple_stmt_nonterminal2(
yyval.all).assign_stmt_part :=    assign_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  387 =>
--#line  2159

   
yyval := new simple_stmt_nonterminal3;
   simple_stmt_nonterminal3(
yyval.all).exit_stmt_part :=    exit_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  388 =>
--#line  2163

   
yyval := new simple_stmt_nonterminal4;
   simple_stmt_nonterminal4(
yyval.all).return_stmt_part :=    return_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  389 =>
--#line  2167

   
yyval := new simple_stmt_nonterminal5;
   simple_stmt_nonterminal5(
yyval.all).goto_stmt_part :=    goto_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  390 =>
--#line  2171

   
yyval := new simple_stmt_nonterminal6;
   simple_stmt_nonterminal6(
yyval.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  391 =>
--#line  2175

   
yyval := new simple_stmt_nonterminal7;
   simple_stmt_nonterminal7(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  392 =>
--#line  2179

   
yyval := new simple_stmt_nonterminal8;
   simple_stmt_nonterminal8(
yyval.all).abort_stmt_part :=    abort_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  393 =>
--#line  2183

   
yyval := new simple_stmt_nonterminal9;
   simple_stmt_nonterminal9(
yyval.all).raise_stmt_part :=    raise_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  394 =>
--#line  2187

   
yyval := new simple_stmt_nonterminal10;
   simple_stmt_nonterminal10(
yyval.all).code_stmt_part :=    code_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  395 =>
--#line  2191

   
yyval := new simple_stmt_nonterminal11;
   simple_stmt_nonterminal11(
yyval.all).requeue_stmt_part :=    requeue_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  396 =>
--#line  2197

   
yyval := new compound_stmt_nonterminal1;
   compound_stmt_nonterminal1(
yyval.all).if_stmt_part :=    if_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  397 =>
--#line  2201

   
yyval := new compound_stmt_nonterminal2;
   compound_stmt_nonterminal2(
yyval.all).case_stmt_part :=    case_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  398 =>
--#line  2205

   
yyval := new compound_stmt_nonterminal3;
   compound_stmt_nonterminal3(
yyval.all).loop_stmt_part :=    loop_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  399 =>
--#line  2209

   
yyval := new compound_stmt_nonterminal4;
   compound_stmt_nonterminal4(
yyval.all).block_part :=    block_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  400 =>
--#line  2213

   
yyval := new compound_stmt_nonterminal5;
   compound_stmt_nonterminal5(
yyval.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  401 =>
--#line  2217

   
yyval := new compound_stmt_nonterminal6;
   compound_stmt_nonterminal6(
yyval.all).select_stmt_part :=    select_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  402 =>
--#line  2223

   
yyval := new label_nonterminal;
   label_nonterminal(
yyval.all).LT_LT_part :=    LT_LT_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   label_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   label_nonterminal(
yyval.all).GT_GT_part :=    GT_GT_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  403 =>
--#line  2231

   
yyval := new null_stmt_nonterminal;
   null_stmt_nonterminal(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   null_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  404 =>
--#line  2238

   
yyval := new assign_stmt_nonterminal;
   assign_stmt_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   assign_stmt_nonterminal(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   assign_stmt_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   assign_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  405 =>
--#line  2247

   
yyval := new if_stmt_nonterminal;
   if_stmt_nonterminal(
yyval.all).IF_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   if_stmt_nonterminal(
yyval.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   if_stmt_nonterminal(
yyval.all).else_opt_part :=    else_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   if_stmt_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   if_stmt_nonterminal(
yyval.all).IF_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   if_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  406 =>
--#line  2258

   
yyval := new cond_clause_s_nonterminal1;
   cond_clause_s_nonterminal1(
yyval.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  407 =>
--#line  2262

   
yyval := new cond_clause_s_nonterminal2;
   cond_clause_s_nonterminal2(
yyval.all).cond_clause_s_part :=    cond_clause_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   cond_clause_s_nonterminal2(
yyval.all).ELSIF_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   cond_clause_s_nonterminal2(
yyval.all).cond_clause_part :=    cond_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  408 =>
--#line  2270

   
yyval := new cond_clause_nonterminal;
   cond_clause_nonterminal(
yyval.all).cond_part_part :=    cond_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   cond_clause_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  409 =>
--#line  2277

   
yyval := new cond_part_nonterminal;
   cond_part_nonterminal(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   cond_part_nonterminal(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  410 =>
--#line  2284

   
yyval := new condition_nonterminal;
   condition_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  411 =>
--#line  2290

   
yyval := new else_opt_nonterminal1;
   

when  412 =>
--#line  2293

   
yyval := new else_opt_nonterminal2;
   else_opt_nonterminal2(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   else_opt_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  413 =>
--#line  2300

   
yyval := new case_stmt_nonterminal;
   case_stmt_nonterminal(
yyval.all).case_hdr_part :=    case_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   case_stmt_nonterminal(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   case_stmt_nonterminal(
yyval.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   case_stmt_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   case_stmt_nonterminal(
yyval.all).CASE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   case_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  414 =>
--#line  2311

   
yyval := new case_hdr_nonterminal;
   case_hdr_nonterminal(
yyval.all).CASE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   case_hdr_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   case_hdr_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  415 =>
--#line  2319

   
yyval := new alternative_s_nonterminal1;
   

when  416 =>
--#line  2322

   
yyval := new alternative_s_nonterminal2;
   alternative_s_nonterminal2(
yyval.all).alternative_s_part :=    alternative_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   alternative_s_nonterminal2(
yyval.all).alternative_part :=    alternative_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  417 =>
--#line  2329

   
yyval := new alternative_nonterminal;
   alternative_nonterminal(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   alternative_nonterminal(
yyval.all).choice_s_part :=    choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   alternative_nonterminal(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   alternative_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  418 =>
--#line  2338

   
yyval := new loop_stmt_nonterminal;
   loop_stmt_nonterminal(
yyval.all).label_opt_part :=    label_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   loop_stmt_nonterminal(
yyval.all).iteration_part :=    iteration_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   loop_stmt_nonterminal(
yyval.all).basic_loop_part :=    basic_loop_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   loop_stmt_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   loop_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  419 =>
--#line  2348

   
yyval := new label_opt_nonterminal1;
   

when  420 =>
--#line  2351

   
yyval := new label_opt_nonterminal2;
   label_opt_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   label_opt_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  421 =>
--#line  2358

   
yyval := new iteration_nonterminal1;
   

when  422 =>
--#line  2361

   
yyval := new iteration_nonterminal2;
   iteration_nonterminal2(
yyval.all).WHILE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iteration_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  423 =>
--#line  2366

   
yyval := new iteration_nonterminal3;
   iteration_nonterminal3(
yyval.all).iter_part_part :=    iter_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   iteration_nonterminal3(
yyval.all).reverse_opt_part :=    reverse_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   iteration_nonterminal3(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  424 =>
--#line  2374

   
yyval := new iter_part_nonterminal;
   iter_part_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   iter_part_nonterminal(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   iter_part_nonterminal(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  425 =>
--#line  2382

   
yyval := new reverse_opt_nonterminal1;
   

when  426 =>
--#line  2385

   
yyval := new reverse_opt_nonterminal2;
   reverse_opt_nonterminal2(
yyval.all).REVERSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  427 =>
--#line  2391

   
yyval := new basic_loop_nonterminal;
   basic_loop_nonterminal(
yyval.all).LOOP_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   basic_loop_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   basic_loop_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   basic_loop_nonterminal(
yyval.all).LOOP_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  428 =>
--#line  2400

   
yyval := new id_opt_nonterminal1;
   

when  429 =>
--#line  2403

   
yyval := new id_opt_nonterminal2;
   id_opt_nonterminal2(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  430 =>
--#line  2409

   
yyval := new block_nonterminal;
   block_nonterminal(
yyval.all).label_opt_part :=    label_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   block_nonterminal(
yyval.all).block_decl_part :=    block_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   block_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   block_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   block_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   block_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  431 =>
--#line  2420

   
yyval := new block_decl_nonterminal1;
   

when  432 =>
--#line  2423

   
yyval := new block_decl_nonterminal2;
   block_decl_nonterminal2(
yyval.all).DECLARE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   block_decl_nonterminal2(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  433 =>
--#line  2430

   
yyval := new block_body_nonterminal;
   block_body_nonterminal(
yyval.all).BEGIN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   block_body_nonterminal(
yyval.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  434 =>
--#line  2437

   
yyval := new handled_stmt_s_nonterminal;
   handled_stmt_s_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   handled_stmt_s_nonterminal(
yyval.all).except_handler_part_opt_part :=    except_handler_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  435 =>
--#line  2444

   
yyval := new except_handler_part_opt_nonterminal1;
   

when  436 =>
--#line  2447

   
yyval := new except_handler_part_opt_nonterminal2;
   except_handler_part_opt_nonterminal2(
yyval.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  437 =>
--#line  2453

   
yyval := new exit_stmt_nonterminal;
   exit_stmt_nonterminal(
yyval.all).EXIT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exit_stmt_nonterminal(
yyval.all).name_opt_part :=    name_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exit_stmt_nonterminal(
yyval.all).when_opt_part :=    when_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   exit_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  438 =>
--#line  2462

   
yyval := new name_opt_nonterminal1;
   

when  439 =>
--#line  2465

   
yyval := new name_opt_nonterminal2;
   name_opt_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  440 =>
--#line  2471

   
yyval := new when_opt_nonterminal1;
   

when  441 =>
--#line  2474

   
yyval := new when_opt_nonterminal2;
   when_opt_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   when_opt_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  442 =>
--#line  2481

   
yyval := new opt_aliased_nonterminal1;
   opt_aliased_nonterminal1(
yyval.all).ALIASED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  443 =>
--#line  2485

   
yyval := new opt_aliased_nonterminal2;
   

when  444 =>
--#line  2490

   
yyval := new opt_assign_nonterminal1;
   opt_assign_nonterminal1(
yyval.all).ASSIGNMENT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   opt_assign_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  445 =>
--#line  2495

   
yyval := new opt_assign_nonterminal2;
   

when  446 =>
--#line  2500

   
yyval := new return_subtype_nonterminal1;
   return_subtype_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  447 =>
--#line  2504

   
yyval := new return_subtype_nonterminal2;
   return_subtype_nonterminal2(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  448 =>
--#line  2510

   
yyval := new opt_do_block_nonterminal1;
   opt_do_block_nonterminal1(
yyval.all).DO_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   opt_do_block_nonterminal1(
yyval.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   opt_do_block_nonterminal1(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   opt_do_block_nonterminal1(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  449 =>
--#line  2517

   
yyval := new opt_do_block_nonterminal2;
   

when  450 =>
--#line  2522

   
yyval := new return_stmt_nonterminal1;
   return_stmt_nonterminal1(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   return_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  451 =>
--#line  2527

   
yyval := new return_stmt_nonterminal2;
   return_stmt_nonterminal2(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   return_stmt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   return_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  452 =>
--#line  2533

   
yyval := new return_stmt_nonterminal3;
   return_stmt_nonterminal3(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   return_stmt_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   return_stmt_nonterminal3(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   return_stmt_nonterminal3(
yyval.all).opt_aliased_part :=    opt_aliased_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   return_stmt_nonterminal3(
yyval.all).return_subtype_part :=    return_subtype_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   return_stmt_nonterminal3(
yyval.all).opt_assign_part :=    opt_assign_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   return_stmt_nonterminal3(
yyval.all).opt_do_block_part :=    opt_do_block_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   return_stmt_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  453 =>
--#line  2546

   
yyval := new goto_stmt_nonterminal;
   goto_stmt_nonterminal(
yyval.all).GOTO_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   goto_stmt_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   goto_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  454 =>
--#line  2554

   
yyval := new subprog_decl_nonterminal1;
   subprog_decl_nonterminal1(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  455 =>
--#line  2559

   
yyval := new subprog_decl_nonterminal2;
   subprog_decl_nonterminal2(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  456 =>
--#line  2565

   
yyval := new subprog_decl_nonterminal3;
   subprog_decl_nonterminal3(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_decl_nonterminal3(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  457 =>
--#line  2572

   
yyval := new subprog_decl_nonterminal4;
   subprog_decl_nonterminal4(
yyval.all).generic_subp_inst_part :=    generic_subp_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  458 =>
--#line  2577

   
yyval := new subprog_decl_nonterminal5;
   subprog_decl_nonterminal5(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal5(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal5(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  459 =>
--#line  2583

   
yyval := new subprog_decl_nonterminal6;
   subprog_decl_nonterminal6(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal6(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal6(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  460 =>
--#line  2589

   
yyval := new subprog_decl_nonterminal7;
   subprog_decl_nonterminal7(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_decl_nonterminal7(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal7(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal7(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  461 =>
--#line  2596

   
yyval := new subprog_decl_nonterminal8;
   subprog_decl_nonterminal8(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_decl_nonterminal8(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal8(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal8(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  462 =>
--#line  2603

   
yyval := new subprog_decl_nonterminal9;
   subprog_decl_nonterminal9(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subprog_decl_nonterminal9(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_decl_nonterminal9(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal9(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal9(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  463 =>
--#line  2611

   
yyval := new subprog_decl_nonterminal10;
   subprog_decl_nonterminal10(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subprog_decl_nonterminal10(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_decl_nonterminal10(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_decl_nonterminal10(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_decl_nonterminal10(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  464 =>
--#line  2621

   
yyval := new subprog_spec_nonterminal1;
   subprog_spec_nonterminal1(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  465 =>
--#line  2627

   
yyval := new subprog_spec_nonterminal2;
   subprog_spec_nonterminal2(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subprog_spec_nonterminal2(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   subprog_spec_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal2(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  466 =>
--#line  2635

   
yyval := new subprog_spec_nonterminal3;
   subprog_spec_nonterminal3(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   subprog_spec_nonterminal3(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   subprog_spec_nonterminal3(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   subprog_spec_nonterminal3(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subprog_spec_nonterminal3(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal3(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal3(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  467 =>
--#line  2645

   
yyval := new subprog_spec_nonterminal4;
   subprog_spec_nonterminal4(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subprog_spec_nonterminal4(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   subprog_spec_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subprog_spec_nonterminal4(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal4(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  468 =>
--#line  2653

   
yyval := new subprog_spec_nonterminal5;
   subprog_spec_nonterminal5(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_nonterminal5(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  469 =>
--#line  2660

   
yyval := new designator_nonterminal1;
   designator_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  470 =>
--#line  2664

   
yyval := new designator_nonterminal2;
   designator_nonterminal2(
yyval.all).char_string_part :=    char_string_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  471 =>
--#line  2670

   
yyval := new formal_part_opt_nonterminal1;
   

when  472 =>
--#line  2673

   
yyval := new formal_part_opt_nonterminal2;
   formal_part_opt_nonterminal2(
yyval.all).formal_part_part :=    formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  473 =>
--#line  2679

   
yyval := new formal_part_nonterminal;
   formal_part_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   formal_part_nonterminal(
yyval.all).param_s_part :=    param_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   formal_part_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  474 =>
--#line  2687

   
yyval := new param_s_nonterminal1;
   param_s_nonterminal1(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  475 =>
--#line  2691

   
yyval := new param_s_nonterminal2;
   param_s_nonterminal2(
yyval.all).param_s_part :=    param_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   param_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   param_s_nonterminal2(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  476 =>
--#line  2699

   
yyval := new param_nonterminal1;
   param_nonterminal1(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   param_nonterminal1(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   param_nonterminal1(
yyval.all).mode_part :=    mode_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   param_nonterminal1(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   param_nonterminal1(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  477 =>
--#line  2707

   
yyval := new param_nonterminal2;
   param_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   param_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   param_nonterminal2(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   param_nonterminal2(
yyval.all).init_opt_part :=    init_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  478 =>
--#line  2716

   
yyval := new mode_nonterminal1;
   

when  479 =>
--#line  2719

   
yyval := new mode_nonterminal2;
   mode_nonterminal2(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  480 =>
--#line  2723

   
yyval := new mode_nonterminal3;
   mode_nonterminal3(
yyval.all).OUT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  481 =>
--#line  2727

   
yyval := new mode_nonterminal4;
   mode_nonterminal4(
yyval.all).IN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   mode_nonterminal4(
yyval.all).OUT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  482 =>
--#line  2734

   
yyval := new subprog_spec_is_push_nonterminal;
   subprog_spec_is_push_nonterminal(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_spec_is_push_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  483 =>
--#line  2741

   
yyval := new subprog_body_nonterminal;
   subprog_body_nonterminal(
yyval.all).subprog_spec_is_push_part :=    subprog_spec_is_push_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   subprog_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   subprog_body_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   subprog_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   subprog_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   subprog_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  484 =>
--#line  2752

   
yyval := new procedure_call_nonterminal;
   procedure_call_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   procedure_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  485 =>
--#line  2759

   
yyval := new pkg_decl_nonterminal1;
   pkg_decl_nonterminal1(
yyval.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  486 =>
--#line  2764

   
yyval := new pkg_decl_nonterminal2;
   pkg_decl_nonterminal2(
yyval.all).generic_pkg_inst_part :=    generic_pkg_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  487 =>
--#line  2771

   
yyval := new pkg_spec_nonterminal;
   pkg_spec_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   pkg_spec_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   pkg_spec_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   pkg_spec_nonterminal(
yyval.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   pkg_spec_nonterminal(
yyval.all).private_part_part :=    private_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   pkg_spec_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   pkg_spec_nonterminal(
yyval.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  488 =>
--#line  2783

   
yyval := new private_part_nonterminal1;
   

when  489 =>
--#line  2786

   
yyval := new private_part_nonterminal2;
   private_part_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   private_part_nonterminal2(
yyval.all).decl_item_s_part :=    decl_item_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  490 =>
--#line  2793

   
yyval := new c_id_opt_nonterminal1;
   

when  491 =>
--#line  2796

   
yyval := new c_id_opt_nonterminal2;
   c_id_opt_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  492 =>
--#line  2802

   
yyval := new pkg_body_nonterminal;
   pkg_body_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   pkg_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   pkg_body_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   pkg_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   pkg_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   pkg_body_nonterminal(
yyval.all).body_opt_part :=    body_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   pkg_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   pkg_body_nonterminal(
yyval.all).c_id_opt_part :=    c_id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   pkg_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  493 =>
--#line  2816

   
yyval := new body_opt_nonterminal1;
   

when  494 =>
--#line  2819

   
yyval := new body_opt_nonterminal2;
   body_opt_nonterminal2(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  495 =>
--#line  2825

   
yyval := new private_type_nonterminal1;
   private_type_nonterminal1(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   private_type_nonterminal1(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   private_type_nonterminal1(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  496 =>
--#line  2831

   
yyval := new private_type_nonterminal2;
   private_type_nonterminal2(
yyval.all).TAGGED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   private_type_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  497 =>
--#line  2836

   
yyval := new private_type_nonterminal3;
   private_type_nonterminal3(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   private_type_nonterminal3(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  498 =>
--#line  2841

   
yyval := new private_type_nonterminal4;
   private_type_nonterminal4(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  499 =>
--#line  2847

   
yyval := new limited_opt_nonterminal1;
   

when  500 =>
--#line  2850

   
yyval := new limited_opt_nonterminal2;
   limited_opt_nonterminal2(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  501 =>
--#line  2856

   
yyval := new use_clause_nonterminal1;
   use_clause_nonterminal1(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   use_clause_nonterminal1(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  502 =>
--#line  2862

   
yyval := new use_clause_nonterminal2;
   use_clause_nonterminal2(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   use_clause_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   use_clause_nonterminal2(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  503 =>
--#line  2871

   
yyval := new name_s_nonterminal1;
   name_s_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  504 =>
--#line  2875

   
yyval := new name_s_nonterminal2;
   name_s_nonterminal2(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   name_s_nonterminal2(
yyval.all).COMMA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   name_s_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  505 =>
--#line  2883

   
yyval := new rename_decl_nonterminal1;
   rename_decl_nonterminal1(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   rename_decl_nonterminal1(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   rename_decl_nonterminal1(
yyval.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   rename_decl_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_decl_nonterminal1(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  506 =>
--#line  2892

   
yyval := new rename_decl_nonterminal2;
   rename_decl_nonterminal2(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   rename_decl_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   rename_decl_nonterminal2(
yyval.all).object_qualifier_opt_part :=    object_qualifier_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   rename_decl_nonterminal2(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_decl_nonterminal2(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  507 =>
--#line  2901

   
yyval := new rename_decl_nonterminal3;
   rename_decl_nonterminal3(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   rename_decl_nonterminal3(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_decl_nonterminal3(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   rename_decl_nonterminal3(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_decl_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  508 =>
--#line  2909

   
yyval := new rename_decl_nonterminal4;
   rename_decl_nonterminal4(
yyval.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  509 =>
--#line  2915

   
yyval := new rename_unit_nonterminal1;
   rename_unit_nonterminal1(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal1(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal1(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  510 =>
--#line  2922

   
yyval := new rename_unit_nonterminal2;
   rename_unit_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal2(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  511 =>
--#line  2928

   
yyval := new rename_unit_nonterminal3;
   rename_unit_nonterminal3(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   rename_unit_nonterminal3(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal3(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal3(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  512 =>
--#line  2936

   
yyval := new rename_unit_nonterminal4;
   rename_unit_nonterminal4(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   rename_unit_nonterminal4(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rename_unit_nonterminal4(
yyval.all).renaming_part :=    renaming_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rename_unit_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  513 =>
--#line  2945

   
yyval := new renaming_nonterminal;
   renaming_nonterminal(
yyval.all).RENAMES_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   renaming_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  514 =>
--#line  2952

   
yyval := new task_decl_nonterminal;
   task_decl_nonterminal(
yyval.all).task_spec_part :=    task_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  515 =>
--#line  2959

   
yyval := new task_spec_nonterminal1;
   task_spec_nonterminal1(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_spec_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_spec_nonterminal1(
yyval.all).task_def_part :=    task_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  516 =>
--#line  2965

   
yyval := new task_spec_nonterminal2;
   task_spec_nonterminal2(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   task_spec_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   task_spec_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   task_spec_nonterminal2(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_spec_nonterminal2(
yyval.all).task_def_part :=    task_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  517 =>
--#line  2975

   
yyval := new opt_task_interfaces_nonterminal1;
   opt_task_interfaces_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   opt_task_interfaces_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   opt_task_interfaces_nonterminal1(
yyval.all).opt_interface_list_part :=    opt_interface_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   opt_task_interfaces_nonterminal1(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  518 =>
--#line  2982

   
yyval := new opt_task_interfaces_nonterminal2;
   

when  519 =>
--#line  2987

   
yyval := new task_def_nonterminal1;
   

when  520 =>
--#line  2990

   
yyval := new task_def_nonterminal2;
   task_def_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   task_def_nonterminal2(
yyval.all).opt_task_interfaces_part :=    opt_task_interfaces_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   task_def_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   task_def_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   task_def_nonterminal2(
yyval.all).task_private_opt_part :=    task_private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   task_def_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   task_def_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  521 =>
--#line  3002

   
yyval := new task_private_opt_nonterminal1;
   

when  522 =>
--#line  3005

   
yyval := new task_private_opt_nonterminal2;
   task_private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_private_opt_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_private_opt_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  523 =>
--#line  3013

   
yyval := new task_body_nonterminal;
   task_body_nonterminal(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   task_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   task_body_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   task_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   task_body_nonterminal(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   task_body_nonterminal(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   task_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   task_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   task_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  524 =>
--#line  3027

   
yyval := new prot_decl_nonterminal;
   prot_decl_nonterminal(
yyval.all).prot_spec_part :=    prot_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  525 =>
--#line  3034

   
yyval := new prot_spec_nonterminal1;
   prot_spec_nonterminal1(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   prot_spec_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_spec_nonterminal1(
yyval.all).prot_def_part :=    prot_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  526 =>
--#line  3040

   
yyval := new prot_spec_nonterminal2;
   prot_spec_nonterminal2(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   prot_spec_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   prot_spec_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_spec_nonterminal2(
yyval.all).discrim_part_opt_part :=    discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_spec_nonterminal2(
yyval.all).prot_def_part :=    prot_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  527 =>
--#line  3050

   
yyval := new prot_def_nonterminal;
   prot_def_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   prot_def_nonterminal(
yyval.all).opt_task_interfaces_part :=    opt_task_interfaces_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   prot_def_nonterminal(
yyval.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   prot_def_nonterminal(
yyval.all).prot_private_opt_part :=    prot_private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_def_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_def_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  528 =>
--#line  3061

   
yyval := new prot_private_opt_nonterminal1;
   

when  529 =>
--#line  3064

   
yyval := new prot_private_opt_nonterminal2;
   prot_private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   prot_private_opt_nonterminal2(
yyval.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  530 =>
--#line  3071

   
yyval := new prot_op_decl_s_nonterminal1;
   

when  531 =>
--#line  3074

   
yyval := new prot_op_decl_s_nonterminal2;
   prot_op_decl_s_nonterminal2(
yyval.all).prot_op_decl_s_part :=    prot_op_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_decl_s_nonterminal2(
yyval.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  532 =>
--#line  3081

   
yyval := new prot_op_decl_nonterminal1;
   prot_op_decl_nonterminal1(
yyval.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  533 =>
--#line  3085

   
yyval := new prot_op_decl_nonterminal2;
   prot_op_decl_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  534 =>
--#line  3090

   
yyval := new prot_op_decl_nonterminal3;
   prot_op_decl_nonterminal3(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  535 =>
--#line  3094

   
yyval := new prot_op_decl_nonterminal4;
   prot_op_decl_nonterminal4(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  536 =>
--#line  3100

   
yyval := new prot_elem_decl_s_nonterminal1;
   

when  537 =>
--#line  3103

   
yyval := new prot_elem_decl_s_nonterminal2;
   prot_elem_decl_s_nonterminal2(
yyval.all).prot_elem_decl_s_part :=    prot_elem_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_elem_decl_s_nonterminal2(
yyval.all).prot_elem_decl_part :=    prot_elem_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  538 =>
--#line  3110

   
yyval := new prot_elem_decl_nonterminal1;
   prot_elem_decl_nonterminal1(
yyval.all).prot_op_decl_part :=    prot_op_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  539 =>
--#line  3114

   
yyval := new prot_elem_decl_nonterminal2;
   prot_elem_decl_nonterminal2(
yyval.all).comp_decl_part :=    comp_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  540 =>
--#line  3120

   
yyval := new prot_body_nonterminal;
   prot_body_nonterminal(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   prot_body_nonterminal(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   prot_body_nonterminal(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   prot_body_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   prot_body_nonterminal(
yyval.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   prot_body_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   prot_body_nonterminal(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_body_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  541 =>
--#line  3133

   
yyval := new prot_op_body_s_nonterminal1;
   prot_op_body_s_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  542 =>
--#line  3137

   
yyval := new prot_op_body_s_nonterminal2;
   prot_op_body_s_nonterminal2(
yyval.all).prot_op_body_s_part :=    prot_op_body_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   prot_op_body_s_nonterminal2(
yyval.all).prot_op_body_part :=    prot_op_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_body_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  543 =>
--#line  3145

   
yyval := new prot_op_body_nonterminal1;
   prot_op_body_nonterminal1(
yyval.all).entry_body_part :=    entry_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  544 =>
--#line  3149

   
yyval := new prot_op_body_nonterminal2;
   prot_op_body_nonterminal2(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  545 =>
--#line  3153

   
yyval := new prot_op_body_nonterminal3;
   prot_op_body_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   prot_op_body_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  546 =>
--#line  3160

   
yyval := new entry_decl_s_nonterminal1;
   entry_decl_s_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  547 =>
--#line  3164

   
yyval := new entry_decl_s_nonterminal2;
   entry_decl_s_nonterminal2(
yyval.all).entry_decl_s_part :=    entry_decl_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_s_nonterminal2(
yyval.all).entry_decl_part :=    entry_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  548 =>
--#line  3172

   
yyval := new entry_decl_nonterminal1;
   entry_decl_nonterminal1(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  549 =>
--#line  3179

   
yyval := new entry_decl_nonterminal2;
   entry_decl_nonterminal2(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   entry_decl_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_decl_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  550 =>
--#line  3189

   
yyval := new entry_decl_nonterminal3;
   entry_decl_nonterminal3(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal3(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal3(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal3(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  551 =>
--#line  3197

   
yyval := new entry_decl_nonterminal4;
   entry_decl_nonterminal4(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   entry_decl_nonterminal4(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   entry_decl_nonterminal4(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_decl_nonterminal4(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal4(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal4(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  552 =>
--#line  3208

   
yyval := new entry_decl_nonterminal5;
   entry_decl_nonterminal5(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_decl_nonterminal5(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal5(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal5(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal5(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal5(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  553 =>
--#line  3217

   
yyval := new entry_decl_nonterminal6;
   entry_decl_nonterminal6(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   entry_decl_nonterminal6(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   entry_decl_nonterminal6(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   entry_decl_nonterminal6(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_decl_nonterminal6(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_decl_nonterminal6(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_decl_nonterminal6(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_decl_nonterminal6(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_decl_nonterminal6(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  554 =>
--#line  3231

   
yyval := new entry_body_nonterminal1;
   entry_body_nonterminal1(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_nonterminal1(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_nonterminal1(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_nonterminal1(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_nonterminal1(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_nonterminal1(
yyval.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  555 =>
--#line  3240

   
yyval := new entry_body_nonterminal2;
   entry_body_nonterminal2(
yyval.all).ENTRY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-9));
   entry_body_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   entry_body_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   entry_body_nonterminal2(
yyval.all).iter_part_part :=    iter_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   entry_body_nonterminal2(
yyval.all).discrete_range_part :=    discrete_range_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_nonterminal2(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_nonterminal2(
yyval.all).entry_body_part_part :=    entry_body_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  556 =>
--#line  3255

   
yyval := new entry_body_part_nonterminal1;
   entry_body_part_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  557 =>
--#line  3259

   
yyval := new entry_body_part_nonterminal2;
   entry_body_part_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   entry_body_part_nonterminal2(
yyval.all).decl_part_part :=    decl_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   entry_body_part_nonterminal2(
yyval.all).block_body_part :=    block_body_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_body_part_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_body_part_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_body_part_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  558 =>
--#line  3270

   
yyval := new rep_spec_s_nonterminal1;
   

when  559 =>
--#line  3273

   
yyval := new rep_spec_s_nonterminal2;
   rep_spec_s_nonterminal2(
yyval.all).rep_spec_s_part :=    rep_spec_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   rep_spec_s_nonterminal2(
yyval.all).rep_spec_part :=    rep_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   rep_spec_s_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  560 =>
--#line  3281

   
yyval := new entry_call_nonterminal;
   entry_call_nonterminal(
yyval.all).procedure_call_part :=    procedure_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  561 =>
--#line  3287

   
yyval := new accept_stmt_nonterminal1;
   accept_stmt_nonterminal1(
yyval.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  562 =>
--#line  3292

   
yyval := new accept_stmt_nonterminal2;
   accept_stmt_nonterminal2(
yyval.all).accept_hdr_part :=    accept_hdr_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   accept_stmt_nonterminal2(
yyval.all).DO_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   accept_stmt_nonterminal2(
yyval.all).handled_stmt_s_part :=    handled_stmt_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   accept_stmt_nonterminal2(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   accept_stmt_nonterminal2(
yyval.all).id_opt_part :=    id_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  563 =>
--#line  3303

   
yyval := new accept_hdr_nonterminal;
   accept_hdr_nonterminal(
yyval.all).accept_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   accept_hdr_nonterminal(
yyval.all).entry_name_part :=    entry_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   accept_hdr_nonterminal(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  564 =>
--#line  3311

   
yyval := new entry_name_nonterminal1;
   entry_name_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  565 =>
--#line  3315

   
yyval := new entry_name_nonterminal2;
   entry_name_nonterminal2(
yyval.all).entry_name_part :=    entry_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   entry_name_nonterminal2(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   entry_name_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   entry_name_nonterminal2(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  566 =>
--#line  3324

   
yyval := new delay_stmt_nonterminal1;
   delay_stmt_nonterminal1(
yyval.all).DELAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   delay_stmt_nonterminal1(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  567 =>
--#line  3330

   
yyval := new delay_stmt_nonterminal2;
   delay_stmt_nonterminal2(
yyval.all).DELAY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   delay_stmt_nonterminal2(
yyval.all).UNTIL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   delay_stmt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  568 =>
--#line  3339

   
yyval := new select_stmt_nonterminal1;
   select_stmt_nonterminal1(
yyval.all).select_wait_part :=    select_wait_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  569 =>
--#line  3343

   
yyval := new select_stmt_nonterminal2;
   select_stmt_nonterminal2(
yyval.all).async_select_part :=    async_select_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  570 =>
--#line  3347

   
yyval := new select_stmt_nonterminal3;
   select_stmt_nonterminal3(
yyval.all).timed_entry_call_part :=    timed_entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  571 =>
--#line  3351

   
yyval := new select_stmt_nonterminal4;
   select_stmt_nonterminal4(
yyval.all).cond_entry_call_part :=    cond_entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  572 =>
--#line  3357

   
yyval := new select_wait_nonterminal;
   select_wait_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   select_wait_nonterminal(
yyval.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   select_wait_nonterminal(
yyval.all).or_select_part :=    or_select_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   select_wait_nonterminal(
yyval.all).else_opt_part :=    else_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   select_wait_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   select_wait_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   select_wait_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  573 =>
--#line  3369

   
yyval := new guarded_select_alt_nonterminal1;
   guarded_select_alt_nonterminal1(
yyval.all).select_alt_part :=    select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  574 =>
--#line  3373

   
yyval := new guarded_select_alt_nonterminal2;
   guarded_select_alt_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   guarded_select_alt_nonterminal2(
yyval.all).condition_part :=    condition_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   guarded_select_alt_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   guarded_select_alt_nonterminal2(
yyval.all).select_alt_part :=    select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  575 =>
--#line  3382

   
yyval := new or_select_nonterminal1;
   

when  576 =>
--#line  3385

   
yyval := new or_select_nonterminal2;
   or_select_nonterminal2(
yyval.all).or_select_part :=    or_select_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   or_select_nonterminal2(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   or_select_nonterminal2(
yyval.all).guarded_select_alt_part :=    guarded_select_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  577 =>
--#line  3393

   
yyval := new select_alt_nonterminal1;
   select_alt_nonterminal1(
yyval.all).accept_stmt_part :=    accept_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal1(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  578 =>
--#line  3398

   
yyval := new select_alt_nonterminal2;
   select_alt_nonterminal2(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal2(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  579 =>
--#line  3403

   
yyval := new select_alt_nonterminal3;
   select_alt_nonterminal3(
yyval.all).TERMINATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   select_alt_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  580 =>
--#line  3410

   
yyval := new delay_or_entry_alt_nonterminal1;
   delay_or_entry_alt_nonterminal1(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_or_entry_alt_nonterminal1(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  581 =>
--#line  3415

   
yyval := new delay_or_entry_alt_nonterminal2;
   delay_or_entry_alt_nonterminal2(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   delay_or_entry_alt_nonterminal2(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  582 =>
--#line  3422

   
yyval := new async_select_nonterminal;
   async_select_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   async_select_nonterminal(
yyval.all).delay_or_entry_alt_part :=    delay_or_entry_alt_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   async_select_nonterminal(
yyval.all).THEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   async_select_nonterminal(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   async_select_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   async_select_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   async_select_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   async_select_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  583 =>
--#line  3435

   
yyval := new timed_entry_call_nonterminal;
   timed_entry_call_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   timed_entry_call_nonterminal(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   timed_entry_call_nonterminal(
yyval.all).stmts_opt_part1 :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   timed_entry_call_nonterminal(
yyval.all).OR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   timed_entry_call_nonterminal(
yyval.all).delay_stmt_part :=    delay_stmt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   timed_entry_call_nonterminal(
yyval.all).stmts_opt_part2 :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   timed_entry_call_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   timed_entry_call_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   timed_entry_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  584 =>
--#line  3449

   
yyval := new cond_entry_call_nonterminal;
   cond_entry_call_nonterminal(
yyval.all).SELECT_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   cond_entry_call_nonterminal(
yyval.all).entry_call_part :=    entry_call_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   cond_entry_call_nonterminal(
yyval.all).stmts_opt_part :=    stmts_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   cond_entry_call_nonterminal(
yyval.all).ELSE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   cond_entry_call_nonterminal(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   cond_entry_call_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   cond_entry_call_nonterminal(
yyval.all).SELECT_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   cond_entry_call_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  585 =>
--#line  3462

   
yyval := new stmts_opt_nonterminal1;
   

when  586 =>
--#line  3465

   
yyval := new stmts_opt_nonterminal2;
   stmts_opt_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  587 =>
--#line  3471

   
yyval := new abort_stmt_nonterminal;
   abort_stmt_nonterminal(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   abort_stmt_nonterminal(
yyval.all).name_s_part :=    name_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   abort_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  588 =>
--#line  3479

   
yyval := new compilation_nonterminal1;
   

when  589 =>
--#line  3482

   
yyval := new compilation_nonterminal2;
   compilation_nonterminal2(
yyval.all).compilation_part :=    compilation_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   compilation_nonterminal2(
yyval.all).comp_unit_part :=    comp_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  590 =>
--#line  3487

   
yyval := new compilation_nonterminal3;
   compilation_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   compilation_nonterminal3(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  591 =>
--#line  3494

   
yyval := new comp_unit_nonterminal1;
   comp_unit_nonterminal1(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   comp_unit_nonterminal1(
yyval.all).private_opt_part :=    private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_unit_nonterminal1(
yyval.all).unit_part :=    unit_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_unit_nonterminal1(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  592 =>
--#line  3501

   
yyval := new comp_unit_nonterminal2;
   comp_unit_nonterminal2(
yyval.all).private_opt_part :=    private_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   comp_unit_nonterminal2(
yyval.all).unit_part :=    unit_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_unit_nonterminal2(
yyval.all).pragma_s_part :=    pragma_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  593 =>
--#line  3509

   
yyval := new private_opt_nonterminal1;
   

when  594 =>
--#line  3512

   
yyval := new private_opt_nonterminal2;
   private_opt_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  595 =>
--#line  3518

   
yyval := new context_spec_nonterminal1;
   context_spec_nonterminal1(
yyval.all).with_clause_part :=    with_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal1(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  596 =>
--#line  3523

   
yyval := new context_spec_nonterminal2;
   context_spec_nonterminal2(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   context_spec_nonterminal2(
yyval.all).with_clause_part :=    with_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal2(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  597 =>
--#line  3529

   
yyval := new context_spec_nonterminal3;
   context_spec_nonterminal3(
yyval.all).context_spec_part :=    context_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   context_spec_nonterminal3(
yyval.all).pragma_sym_part :=    pragma_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  598 =>
--#line  3536

   
yyval := new with_clause_nonterminal1;
   with_clause_nonterminal1(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   with_clause_nonterminal1(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   with_clause_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  599 =>
--#line  3542

   
yyval := new with_clause_nonterminal2;
   with_clause_nonterminal2(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   with_clause_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   with_clause_nonterminal2(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   with_clause_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  600 =>
--#line  3549

   
yyval := new with_clause_nonterminal3;
   with_clause_nonterminal3(
yyval.all).LIMITED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   with_clause_nonterminal3(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   with_clause_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   with_clause_nonterminal3(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   with_clause_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  601 =>
--#line  3557

   
yyval := new with_clause_nonterminal4;
   with_clause_nonterminal4(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   with_clause_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   with_clause_nonterminal4(
yyval.all).c_name_list_part :=    c_name_list_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   with_clause_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  602 =>
--#line  3566

   
yyval := new use_clause_opt_nonterminal1;
   

when  603 =>
--#line  3569

   
yyval := new use_clause_opt_nonterminal2;
   use_clause_opt_nonterminal2(
yyval.all).use_clause_opt_part :=    use_clause_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   use_clause_opt_nonterminal2(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  604 =>
--#line  3576

   
yyval := new unit_nonterminal1;
   unit_nonterminal1(
yyval.all).pkg_decl_part :=    pkg_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  605 =>
--#line  3580

   
yyval := new unit_nonterminal2;
   unit_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  606 =>
--#line  3584

   
yyval := new unit_nonterminal3;
   unit_nonterminal3(
yyval.all).subprog_decl_part :=    subprog_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  607 =>
--#line  3588

   
yyval := new unit_nonterminal4;
   unit_nonterminal4(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  608 =>
--#line  3592

   
yyval := new unit_nonterminal5;
   unit_nonterminal5(
yyval.all).subunit_part :=    subunit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  609 =>
--#line  3596

   
yyval := new unit_nonterminal6;
   unit_nonterminal6(
yyval.all).generic_decl_part :=    generic_decl_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  610 =>
--#line  3600

   
yyval := new unit_nonterminal7;
   unit_nonterminal7(
yyval.all).rename_unit_part :=    rename_unit_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  611 =>
--#line  3606

   
yyval := new subunit_nonterminal;
   subunit_nonterminal(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   subunit_nonterminal(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   subunit_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   subunit_nonterminal(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subunit_nonterminal(
yyval.all).subunit_body_part :=    subunit_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  612 =>
--#line  3616

   
yyval := new subunit_body_nonterminal1;
   subunit_body_nonterminal1(
yyval.all).subprog_body_part :=    subprog_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  613 =>
--#line  3620

   
yyval := new subunit_body_nonterminal2;
   subunit_body_nonterminal2(
yyval.all).pkg_body_part :=    pkg_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  614 =>
--#line  3624

   
yyval := new subunit_body_nonterminal3;
   subunit_body_nonterminal3(
yyval.all).task_body_part :=    task_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  615 =>
--#line  3628

   
yyval := new subunit_body_nonterminal4;
   subunit_body_nonterminal4(
yyval.all).prot_body_part :=    prot_body_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  616 =>
--#line  3634

   
yyval := new body_stub_nonterminal1;
   body_stub_nonterminal1(
yyval.all).TASK_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal1(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal1(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal1(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal1(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  617 =>
--#line  3643

   
yyval := new body_stub_nonterminal2;
   body_stub_nonterminal2(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal2(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal2(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal2(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  618 =>
--#line  3652

   
yyval := new body_stub_nonterminal3;
   body_stub_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal3(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  619 =>
--#line  3659

   
yyval := new body_stub_nonterminal4;
   body_stub_nonterminal4(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal4(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal4(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal4(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  620 =>
--#line  3667

   
yyval := new body_stub_nonterminal5;
   body_stub_nonterminal5(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal5(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal5(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal5(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal5(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal5(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  621 =>
--#line  3676

   
yyval := new body_stub_nonterminal6;
   body_stub_nonterminal6(
yyval.all).PROTECTED_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   body_stub_nonterminal6(
yyval.all).BODY_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   body_stub_nonterminal6(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   body_stub_nonterminal6(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   body_stub_nonterminal6(
yyval.all).SEPARATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   body_stub_nonterminal6(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  622 =>
--#line  3687

   
yyval := new exception_decl_nonterminal;
   exception_decl_nonterminal(
yyval.all).def_id_s_part :=    def_id_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   exception_decl_nonterminal(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   exception_decl_nonterminal(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_decl_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  623 =>
--#line  3696

   
yyval := new except_handler_part_nonterminal1;
   except_handler_part_nonterminal1(
yyval.all).EXCEPTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   except_handler_part_nonterminal1(
yyval.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  624 =>
--#line  3701

   
yyval := new except_handler_part_nonterminal2;
   except_handler_part_nonterminal2(
yyval.all).except_handler_part_part :=    except_handler_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   except_handler_part_nonterminal2(
yyval.all).exception_handler_part :=    exception_handler_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  625 =>
--#line  3708

   
yyval := new exception_handler_nonterminal1;
   exception_handler_nonterminal1(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exception_handler_nonterminal1(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exception_handler_nonterminal1(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_handler_nonterminal1(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  626 =>
--#line  3715

   
yyval := new exception_handler_nonterminal2;
   exception_handler_nonterminal2(
yyval.all).WHEN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   exception_handler_nonterminal2(
yyval.all).identifier_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   exception_handler_nonterminal2(
yyval.all).COLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   exception_handler_nonterminal2(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   exception_handler_nonterminal2(
yyval.all).ARROW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   exception_handler_nonterminal2(
yyval.all).statement_s_part :=    statement_s_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  627 =>
--#line  3726

   
yyval := new except_choice_s_nonterminal1;
   except_choice_s_nonterminal1(
yyval.all).except_choice_part :=    except_choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  628 =>
--#line  3730

   
yyval := new except_choice_s_nonterminal2;
   except_choice_s_nonterminal2(
yyval.all).except_choice_s_part :=    except_choice_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   except_choice_s_nonterminal2(
yyval.all).PIPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   except_choice_s_nonterminal2(
yyval.all).except_choice_part :=    except_choice_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  629 =>
--#line  3738

   
yyval := new except_choice_nonterminal1;
   except_choice_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  630 =>
--#line  3742

   
yyval := new except_choice_nonterminal2;
   except_choice_nonterminal2(
yyval.all).OTHERS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  631 =>
--#line  3748

   
yyval := new raise_stmt_nonterminal1;
   raise_stmt_nonterminal1(
yyval.all).RAISE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   raise_stmt_nonterminal1(
yyval.all).name_opt_part :=    name_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   raise_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  632 =>
--#line  3754

   
yyval := new raise_stmt_nonterminal2;
   raise_stmt_nonterminal2(
yyval.all).RAISE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   raise_stmt_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   raise_stmt_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   raise_stmt_nonterminal2(
yyval.all).CHAR_STRING_part :=    CHAR_STRING_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   raise_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  633 =>
--#line  3764

   
yyval := new requeue_stmt_nonterminal1;
   requeue_stmt_nonterminal1(
yyval.all).REQUEUE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   requeue_stmt_nonterminal1(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   requeue_stmt_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  634 =>
--#line  3770

   
yyval := new requeue_stmt_nonterminal2;
   requeue_stmt_nonterminal2(
yyval.all).REQUEUE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   requeue_stmt_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   requeue_stmt_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   requeue_stmt_nonterminal2(
yyval.all).abort_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   requeue_stmt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  635 =>
--#line  3780

   
yyval := new generic_decl_nonterminal1;
   generic_decl_nonterminal1(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_decl_nonterminal1(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_decl_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  636 =>
--#line  3786

   
yyval := new generic_decl_nonterminal2;
   generic_decl_nonterminal2(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_decl_nonterminal2(
yyval.all).pkg_spec_part :=    pkg_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_decl_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  637 =>
--#line  3794

   
yyval := new generic_formal_part_nonterminal1;
   generic_formal_part_nonterminal1(
yyval.all).GENERIC_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  638 =>
--#line  3798

   
yyval := new generic_formal_part_nonterminal2;
   generic_formal_part_nonterminal2(
yyval.all).generic_formal_part_part :=    generic_formal_part_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_part_nonterminal2(
yyval.all).generic_formal_part :=    generic_formal_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  639 =>
--#line  3805

   
yyval := new generic_formal_nonterminal1;
   generic_formal_nonterminal1(
yyval.all).param_part :=    param_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal1(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  640 =>
--#line  3810

   
yyval := new generic_formal_nonterminal2;
   generic_formal_nonterminal2(
yyval.all).TYPE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal2(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal2(
yyval.all).generic_discrim_part_opt_part :=    generic_discrim_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal2(
yyval.all).generic_type_def_part :=    generic_type_def_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  641 =>
--#line  3819

   
yyval := new generic_formal_nonterminal3;
   generic_formal_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal3(
yyval.all).PROCEDURE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal3(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal3(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal3(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal3(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  642 =>
--#line  3828

   
yyval := new generic_formal_nonterminal4;
   generic_formal_nonterminal4(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal4(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal4(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal4(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal4(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal4(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal4(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal4(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  643 =>
--#line  3839

   
yyval := new generic_formal_nonterminal5;
   generic_formal_nonterminal5(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-9));
   generic_formal_nonterminal5(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   generic_formal_nonterminal5(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal5(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal5(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal5(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal5(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal5(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal5(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal5(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  644 =>
--#line  3852

   
yyval := new generic_formal_nonterminal6;
   generic_formal_nonterminal6(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal6(
yyval.all).FUNCTION_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal6(
yyval.all).designator_part :=    designator_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal6(
yyval.all).formal_part_opt_part :=    formal_part_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal6(
yyval.all).RETURN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal6(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal6(
yyval.all).subp_default_part :=    subp_default_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal6(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  645 =>
--#line  3863

   
yyval := new generic_formal_nonterminal7;
   generic_formal_nonterminal7(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-9));
   generic_formal_nonterminal7(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   generic_formal_nonterminal7(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   generic_formal_nonterminal7(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal7(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal7(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal7(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal7(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal7(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal7(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  646 =>
--#line  3876

   
yyval := new generic_formal_nonterminal8;
   generic_formal_nonterminal8(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   generic_formal_nonterminal8(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   generic_formal_nonterminal8(
yyval.all).simple_name_part :=    simple_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   generic_formal_nonterminal8(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_formal_nonterminal8(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_formal_nonterminal8(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   generic_formal_nonterminal8(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  647 =>
--#line  3886

   
yyval := new generic_formal_nonterminal9;
   generic_formal_nonterminal9(
yyval.all).use_clause_part :=    use_clause_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  648 =>
--#line  3892

   
yyval := new generic_discrim_part_opt_nonterminal1;
   

when  649 =>
--#line  3895

   
yyval := new generic_discrim_part_opt_nonterminal2;
   generic_discrim_part_opt_nonterminal2(
yyval.all).discrim_part_part :=    discrim_part_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  650 =>
--#line  3899

   
yyval := new generic_discrim_part_opt_nonterminal3;
   generic_discrim_part_opt_nonterminal3(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_discrim_part_opt_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_discrim_part_opt_nonterminal3(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  651 =>
--#line  3907

   
yyval := new subp_default_nonterminal1;
   

when  652 =>
--#line  3910

   
yyval := new subp_default_nonterminal2;
   subp_default_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subp_default_nonterminal2(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  653 =>
--#line  3915

   
yyval := new subp_default_nonterminal3;
   subp_default_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subp_default_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  654 =>
--#line  3920

   
yyval := new subp_default_nonterminal4;
   subp_default_nonterminal4(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   subp_default_nonterminal4(
yyval.all).NULL_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  655 =>
--#line  3927

   
yyval := new generic_type_def_nonterminal1;
   generic_type_def_nonterminal1(
yyval.all).L_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_type_def_nonterminal1(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal1(
yyval.all).R_PAREN_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  656 =>
--#line  3933

   
yyval := new generic_type_def_nonterminal2;
   generic_type_def_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal2(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  657 =>
--#line  3938

   
yyval := new generic_type_def_nonterminal3;
   generic_type_def_nonterminal3(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal3(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  658 =>
--#line  3943

   
yyval := new generic_type_def_nonterminal4;
   generic_type_def_nonterminal4(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal4(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  659 =>
--#line  3948

   
yyval := new generic_type_def_nonterminal5;
   generic_type_def_nonterminal5(
yyval.all).DELTA_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_type_def_nonterminal5(
yyval.all).BOX_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   generic_type_def_nonterminal5(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal5(
yyval.all).BOX_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  660 =>
--#line  3955

   
yyval := new generic_type_def_nonterminal6;
   generic_type_def_nonterminal6(
yyval.all).DIGITS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_type_def_nonterminal6(
yyval.all).BOX_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  661 =>
--#line  3960

   
yyval := new generic_type_def_nonterminal7;
   generic_type_def_nonterminal7(
yyval.all).array_type_part :=    array_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  662 =>
--#line  3964

   
yyval := new generic_type_def_nonterminal8;
   generic_type_def_nonterminal8(
yyval.all).access_type_part :=    access_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  663 =>
--#line  3968

   
yyval := new generic_type_def_nonterminal9;
   generic_type_def_nonterminal9(
yyval.all).private_type_part :=    private_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  664 =>
--#line  3972

   
yyval := new generic_type_def_nonterminal10;
   generic_type_def_nonterminal10(
yyval.all).generic_derived_type_part :=    generic_derived_type_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  665 =>
--#line  3978

   
yyval := new generic_derived_type_nonterminal1;
   generic_derived_type_nonterminal1(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal1(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  666 =>
--#line  3983

   
yyval := new generic_derived_type_nonterminal2;
   generic_derived_type_nonterminal2(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_derived_type_nonterminal2(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_derived_type_nonterminal2(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal2(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  667 =>
--#line  3990

   
yyval := new generic_derived_type_nonterminal3;
   generic_derived_type_nonterminal3(
yyval.all).abstract_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_derived_type_nonterminal3(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_derived_type_nonterminal3(
yyval.all).subtype_ind_part :=    subtype_ind_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_derived_type_nonterminal3(
yyval.all).WITH_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_derived_type_nonterminal3(
yyval.all).PRIVATE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  668 =>
--#line  4000

   
yyval := new generic_subp_inst_nonterminal1;
   generic_subp_inst_nonterminal1(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_subp_inst_nonterminal1(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_subp_inst_nonterminal1(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  669 =>
--#line  4006

   
yyval := new generic_subp_inst_nonterminal2;
   generic_subp_inst_nonterminal2(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_subp_inst_nonterminal2(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_subp_inst_nonterminal2(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_subp_inst_nonterminal2(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  670 =>
--#line  4013

   
yyval := new generic_subp_inst_nonterminal3;
   generic_subp_inst_nonterminal3(
yyval.all).NOT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   generic_subp_inst_nonterminal3(
yyval.all).OVERRIDING_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_subp_inst_nonterminal3(
yyval.all).subprog_spec_part :=    subprog_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_subp_inst_nonterminal3(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_subp_inst_nonterminal3(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  671 =>
--#line  4023

   
yyval := new generic_pkg_inst_nonterminal;
   generic_pkg_inst_nonterminal(
yyval.all).PACKAGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   generic_pkg_inst_nonterminal(
yyval.all).compound_name_part :=    compound_name_Nonterminal_Ptr(
yy.value_stack(yy.tos-2));
   generic_pkg_inst_nonterminal(
yyval.all).IS_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_pkg_inst_nonterminal(
yyval.all).generic_inst_part :=    generic_inst_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  672 =>
--#line  4032

   
yyval := new generic_inst_nonterminal;
   generic_inst_nonterminal(
yyval.all).NEW_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   generic_inst_nonterminal(
yyval.all).name_part :=    name_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  673 =>
--#line  4039

   
yyval := new rep_spec_nonterminal1;
   rep_spec_nonterminal1(
yyval.all).attrib_def_part :=    attrib_def_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  674 =>
--#line  4043

   
yyval := new rep_spec_nonterminal2;
   rep_spec_nonterminal2(
yyval.all).record_type_spec_part :=    record_type_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  675 =>
--#line  4047

   
yyval := new rep_spec_nonterminal3;
   rep_spec_nonterminal3(
yyval.all).address_spec_part :=    address_spec_Nonterminal_Ptr(
yy.value_stack(yy.tos));
   

when  676 =>
--#line  4053

   
yyval := new attrib_def_nonterminal;
   attrib_def_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   attrib_def_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   attrib_def_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   attrib_def_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   attrib_def_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  677 =>
--#line  4063

   
yyval := new record_type_spec_nonterminal;
   record_type_spec_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-8));
   record_type_spec_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-7));
   record_type_spec_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-6));
   record_type_spec_nonterminal(
yyval.all).RECORD_part1 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   record_type_spec_nonterminal(
yyval.all).align_opt_part :=    align_opt_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   record_type_spec_nonterminal(
yyval.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   record_type_spec_nonterminal(
yyval.all).END_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   record_type_spec_nonterminal(
yyval.all).RECORD_part2 :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-1));
   record_type_spec_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  678 =>
--#line  4077

   
yyval := new align_opt_nonterminal1;
   

when  679 =>
--#line  4080

   
yyval := new align_opt_nonterminal2;
   align_opt_nonterminal2(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   align_opt_nonterminal2(
yyval.all).MOD_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   align_opt_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   align_opt_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  680 =>
--#line  4089

   
yyval := new comp_loc_s_nonterminal1;
   

when  681 =>
--#line  4092

   
yyval := new comp_loc_s_nonterminal2;
   comp_loc_s_nonterminal2(
yyval.all).comp_loc_s_part :=    comp_loc_s_Nonterminal_Ptr(
yy.value_stack(yy.tos-6));
   comp_loc_s_nonterminal2(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-5));
   comp_loc_s_nonterminal2(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-4));
   comp_loc_s_nonterminal2(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-3));
   comp_loc_s_nonterminal2(
yyval.all).RANGE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   comp_loc_s_nonterminal2(
yyval.all).range_sym_part :=    range_sym_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   comp_loc_s_nonterminal2(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  682 =>
--#line  4104

   
yyval := new address_spec_nonterminal;
   address_spec_nonterminal(
yyval.all).FOR_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-5));
   address_spec_nonterminal(
yyval.all).mark_part :=    mark_Nonterminal_Ptr(
yy.value_stack(yy.tos-4));
   address_spec_nonterminal(
yyval.all).USE_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-3));
   address_spec_nonterminal(
yyval.all).AT_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos-2));
   address_spec_nonterminal(
yyval.all).expression_part :=    expression_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   address_spec_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

when  683 =>
--#line  4115

   
yyval := new code_stmt_nonterminal;
   code_stmt_nonterminal(
yyval.all).qualified_part :=    qualified_Nonterminal_Ptr(
yy.value_stack(yy.tos-1));
   code_stmt_nonterminal(
yyval.all).SEMICOLON_part :=    Parseable_Token_Ptr(
yy.value_stack(yy.tos));
   

                    when others => null;
                end case;


            -- Pop RHS states and goto next state
            yy.tos      := yy.tos - rule_length(yy.rule_id) + 1;
            if yy.tos > yy.stack_size then
                text_io.put_line(" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.state_stack(yy.tos) := goto_state(yy.state_stack(yy.tos-1) ,
                                 get_lhs_rule(yy.rule_id));

              yy.value_stack(yy.tos) := yyval;

            if yy.debug then
                reduce_debug(yy.rule_id,
                    goto_state(yy.state_stack(yy.tos - 1),
                               get_lhs_rule(yy.rule_id)));
            end if;

        end if;


    end loop;


end yyparse;

   procedure Run(Filename : in String) is
   begin
      ada05.Reset(Filename);
      begin
         YYParse;
      exception
         when Invalid_Character => YYError("Invalid Character");
         when others => YYError;
      end;
      ada05.Close_Files;
   end Run;

   function Get_Parse_Tree return Parseable_Ptr is
   begin
      return Parse_Tree;
   end Get_Parse_Tree;
end ada05_Parser;
