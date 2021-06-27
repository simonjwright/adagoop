-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with logical_model;
limited with relation_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package expression_model is
   type expression_nonterminal is abstract new Parseable with null record;
   type expression_nonterminal1 is new expression_nonterminal with record
      relation_part : access relation_model.relation_nonterminal'Class;
   end record;
   procedure Acceptor(This : access expression_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type expression_nonterminal2 is new expression_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
      logical_part : access logical_model.logical_nonterminal'Class;
      relation_part : access relation_model.relation_nonterminal'Class;
   end record;
   procedure Acceptor(This : access expression_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end expression_model;
