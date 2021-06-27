-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with prot_private_opt_model;
limited with prot_op_decl_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package prot_def_model is
   type prot_def_nonterminal is new Parseable with record
      IS_part : Parseable_Token_Ptr;
      prot_op_decl_s_part : access prot_op_decl_s_model.prot_op_decl_s_nonterminal'Class;
      prot_private_opt_part : access prot_private_opt_model.prot_private_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_def_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end prot_def_model;
