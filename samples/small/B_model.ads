-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with C_model;
with test_model;
use test_model;
with test_Visitor_Interface;
package B_model is
   type B_nonterminal is abstract new Parseable with null record;
   type B_nonterminal1 is new B_nonterminal with record
      B_part : access B_model.B_nonterminal'Class;
      OPEN_part : Parseable_Token_Ptr;
      C_part : access C_model.C_nonterminal'Class;
   end record;
   procedure Acceptor(This : access B_nonterminal1;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
   type B_nonterminal2 is new B_nonterminal with record
      C_part : access C_model.C_nonterminal'Class;
   end record;
   procedure Acceptor(This : access B_nonterminal2;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
end B_model;
