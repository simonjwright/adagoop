-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package unary_model is
   type unary_nonterminal is abstract new Parseable with null record;
   type unary_nonterminal1 is new unary_nonterminal with record
      PLUS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access unary_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unary_nonterminal2 is new unary_nonterminal with record
      MINUS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access unary_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end unary_model;
