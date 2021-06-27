-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrete_with_range_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package choice_model is
   type choice_nonterminal is abstract new Parseable with null record;
   type choice_nonterminal1 is new choice_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access choice_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type choice_nonterminal2 is new choice_nonterminal with record
      discrete_with_range_part : access discrete_with_range_model.discrete_with_range_nonterminal'Class;
   end record;
   procedure Acceptor(This : access choice_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type choice_nonterminal3 is new choice_nonterminal with record
      OTHERS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access choice_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end choice_model;
