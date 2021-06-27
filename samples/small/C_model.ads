-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with test_model;
use test_model;
with test_Visitor_Interface;
package C_model is
   type C_nonterminal is new Parseable with record
      WRITE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access C_nonterminal;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
end C_model;
