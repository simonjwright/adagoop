-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with multiplying_model;
limited with factor_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package term_model is
   type term_nonterminal is abstract new Parseable with null record;
   type term_nonterminal1 is new term_nonterminal with record
      factor_part : access factor_model.factor_nonterminal'Class;
   end record;
   procedure Acceptor(This : access term_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type term_nonterminal2 is new term_nonterminal with record
      term_part : access term_model.term_nonterminal'Class;
      multiplying_part : access multiplying_model.multiplying_nonterminal'Class;
      factor_part : access factor_model.factor_nonterminal'Class;
   end record;
   procedure Acceptor(This : access term_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end term_model;
