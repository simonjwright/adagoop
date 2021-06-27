-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_s_model;
limited with comp_decl_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package comp_decl_s_model is
   type comp_decl_s_nonterminal is abstract new Parseable with null record;
   type comp_decl_s_nonterminal1 is new comp_decl_s_nonterminal with record
      comp_decl_part : access comp_decl_model.comp_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_decl_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type comp_decl_s_nonterminal2 is new comp_decl_s_nonterminal with record
      comp_decl_s_part : access comp_decl_s_model.comp_decl_s_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      comp_decl_part : access comp_decl_model.comp_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_decl_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end comp_decl_s_model;
