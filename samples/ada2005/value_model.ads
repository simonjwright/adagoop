-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrete_with_range_model;
limited with comp_assoc_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package value_model is
   type value_nonterminal is abstract new Parseable with null record;
   type value_nonterminal1 is new value_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access value_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type value_nonterminal2 is new value_nonterminal with record
      comp_assoc_part : access comp_assoc_model.comp_assoc_nonterminal'Class;
   end record;
   procedure Acceptor(This : access value_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type value_nonterminal3 is new value_nonterminal with record
      discrete_with_range_part : access discrete_with_range_model.discrete_with_range_nonterminal'Class;
   end record;
   procedure Acceptor(This : access value_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end value_model;
