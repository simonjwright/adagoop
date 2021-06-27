-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with block_body_model;
limited with decl_part_model;
limited with subprog_spec_is_push_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package subprog_body_model is
   type subprog_body_nonterminal is new Parseable with record
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      decl_part_part : access decl_part_model.decl_part_nonterminal'Class;
      block_body_part : access block_body_model.block_body_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end subprog_body_model;
