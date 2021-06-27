-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with short_circuit_model;
limited with logical_model;
limited with relation_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package expression_model is
   type expression_nonterminal is abstract new Parseable with null record;
   type expression_nonterminal1 is new expression_nonterminal with record
      relation_part : access relation_model.relation_nonterminal'Class;
   end record;
   procedure Acceptor(This : access expression_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type expression_nonterminal2 is new expression_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
      logical_part : access logical_model.logical_nonterminal'Class;
      relation_part : access relation_model.relation_nonterminal'Class;
   end record;
   procedure Acceptor(This : access expression_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type expression_nonterminal3 is new expression_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
      short_circuit_part : access short_circuit_model.short_circuit_nonterminal'Class;
      relation_part : access relation_model.relation_nonterminal'Class;
   end record;
   procedure Acceptor(This : access expression_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end expression_model;
