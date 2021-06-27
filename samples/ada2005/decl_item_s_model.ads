-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decl_item_s1_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package decl_item_s_model is
   type decl_item_s_nonterminal is abstract new Parseable with null record;
   type decl_item_s_nonterminal1 is new decl_item_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access decl_item_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type decl_item_s_nonterminal2 is new decl_item_s_nonterminal with record
      decl_item_s1_part : access decl_item_s1_model.decl_item_s1_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end decl_item_s_model;
