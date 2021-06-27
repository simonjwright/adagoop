-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decl_item_or_body_s1_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package decl_part_model is
   type decl_part_nonterminal is abstract new Parseable with null record;
   type decl_part_nonterminal1 is new decl_part_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access decl_part_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_part_nonterminal2 is new decl_part_nonterminal with record
      decl_item_or_body_s1_part : access decl_item_or_body_s1_model.decl_item_or_body_s1_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_part_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end decl_part_model;
