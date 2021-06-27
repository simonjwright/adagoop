-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with adding_model;
limited with term_model;
limited with unary_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package simple_expression_model is
   type simple_expression_nonterminal is abstract new Parseable with null record;
   type simple_expression_nonterminal1 is new simple_expression_nonterminal with record
      unary_part : access unary_model.unary_nonterminal'Class;
      term_part : access term_model.term_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_expression_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_expression_nonterminal2 is new simple_expression_nonterminal with record
      term_part : access term_model.term_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_expression_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_expression_nonterminal3 is new simple_expression_nonterminal with record
      simple_expression_part : access simple_expression_model.simple_expression_nonterminal'Class;
      adding_part : access adding_model.adding_nonterminal'Class;
      term_part : access term_model.term_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_expression_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end simple_expression_model;
