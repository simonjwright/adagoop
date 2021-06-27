-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with bob_model;
use bob_model;
with bob_Visitor_Interface;
package A_model is
   type A_nonterminal is new Parseable with record
      RANGE_OP_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access A_nonterminal;
      I : access bob_Visitor_Interface.Visit_bob_Interface'Class);
end A_model;
