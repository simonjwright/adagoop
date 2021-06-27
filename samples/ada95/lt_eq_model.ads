-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package LT_EQ_model is
   type LT_EQ_nonterminal is new Parseable with record
      LESS_THAN_OR_EQUAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access LT_EQ_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end LT_EQ_model;
