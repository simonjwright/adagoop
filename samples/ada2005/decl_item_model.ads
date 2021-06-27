-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_sym_model;
limited with rep_spec_model;
limited with use_clause_model;
limited with decl_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package decl_item_model is
   type decl_item_nonterminal is abstract new Parseable with null record;
   type decl_item_nonterminal1 is new decl_item_nonterminal with record
      decl_part : access decl_model.decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type decl_item_nonterminal2 is new decl_item_nonterminal with record
      use_clause_part : access use_clause_model.use_clause_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type decl_item_nonterminal3 is new decl_item_nonterminal with record
      rep_spec_part : access rep_spec_model.rep_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type decl_item_nonterminal4 is new decl_item_nonterminal with record
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end decl_item_model;
