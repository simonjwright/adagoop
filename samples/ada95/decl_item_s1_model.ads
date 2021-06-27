-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decl_item_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package decl_item_s1_model is
   type decl_item_s1_nonterminal is abstract new Parseable with null record;
   type decl_item_s1_nonterminal1 is new decl_item_s1_nonterminal with record
      decl_item_part : access decl_item_model.decl_item_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_s1_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_item_s1_nonterminal2 is new decl_item_s1_nonterminal with record
      decl_item_s1_part : access decl_item_s1_model.decl_item_s1_nonterminal'Class;
      decl_item_part : access decl_item_model.decl_item_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_item_s1_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end decl_item_s1_model;
