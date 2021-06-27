-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with B_model;
with test_model;
use test_model;
with test_Visitor_Interface;
package A_model is
   type A_nonterminal is abstract new Parseable with null record;
   type A_nonterminal1 is new A_nonterminal with record
      A_part : access A_model.A_nonterminal'Class;
      PROCEDURE_part : Parseable_Token_Ptr;
      B_part : access B_model.B_nonterminal'Class;
   end record;
   procedure Acceptor(This : access A_nonterminal1;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
   type A_nonterminal2 is new A_nonterminal with record
      B_part : access B_model.B_nonterminal'Class;
   end record;
   procedure Acceptor(This : access A_nonterminal2;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
end A_model;
