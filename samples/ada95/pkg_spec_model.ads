-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with c_id_opt_model;
limited with private_part_model;
limited with decl_item_s_model;
limited with compound_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package pkg_spec_model is
   type pkg_spec_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      decl_item_s_part : access decl_item_s_model.decl_item_s_nonterminal'Class;
      private_part_part : access private_part_model.private_part_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      c_id_opt_part : access c_id_opt_model.c_id_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pkg_spec_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end pkg_spec_model;
