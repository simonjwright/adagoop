-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package LT_EQ_model is
   type LT_EQ_nonterminal is new Parseable with record
      LESS_THAN_OR_EQUAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access LT_EQ_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end LT_EQ_model;
