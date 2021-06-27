-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with primary_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package factor_model is
   type factor_nonterminal is abstract new Parseable with null record;
   type factor_nonterminal1 is new factor_nonterminal with record
      primary_part : access primary_model.primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access factor_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type factor_nonterminal2 is new factor_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      primary_part : access primary_model.primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access factor_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type factor_nonterminal3 is new factor_nonterminal with record
      abs_part : Parseable_Token_Ptr;
      primary_part : access primary_model.primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access factor_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type factor_nonterminal4 is new factor_nonterminal with record
      primary_part1 : access primary_model.primary_nonterminal'Class;
      EXPONENT_part : Parseable_Token_Ptr;
      primary_part2 : access primary_model.primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access factor_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end factor_model;
