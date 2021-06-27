-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with prot_private_opt_model;
limited with prot_op_decl_s_model;
limited with opt_task_interfaces_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package prot_def_model is
   type prot_def_nonterminal is new Parseable with record
      IS_part : Parseable_Token_Ptr;
      opt_task_interfaces_part : access opt_task_interfaces_model.opt_task_interfaces_nonterminal'Class;
      prot_op_decl_s_part : access prot_op_decl_s_model.prot_op_decl_s_nonterminal'Class;
      prot_private_opt_part : access prot_private_opt_model.prot_private_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_def_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end prot_def_model;
