-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_s_model;
limited with variant_part_model;
limited with variant_part_opt_model;
limited with comp_decl_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package comp_list_model is
   type comp_list_nonterminal is abstract new Parseable with null record;
   type comp_list_nonterminal1 is new comp_list_nonterminal with record
      comp_decl_s_part : access comp_decl_s_model.comp_decl_s_nonterminal'Class;
      variant_part_opt_part : access variant_part_opt_model.variant_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_list_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type comp_list_nonterminal2 is new comp_list_nonterminal with record
      variant_part_part : access variant_part_model.variant_part_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_list_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type comp_list_nonterminal3 is new comp_list_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_list_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end comp_list_model;
