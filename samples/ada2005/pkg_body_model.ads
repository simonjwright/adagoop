-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with c_id_opt_model;
limited with body_opt_model;
limited with decl_part_model;
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package pkg_body_model is
   type pkg_body_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      decl_part_part : access decl_part_model.decl_part_nonterminal'Class;
      body_opt_part : access body_opt_model.body_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      c_id_opt_part : access c_id_opt_model.c_id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access pkg_body_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end pkg_body_model;
