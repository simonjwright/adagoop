-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with B_model;
limited with PROCEDURE_model;
with small_model;
use small_model;
with small_Visitor_Interface;
package A_model is
   type A_nonterminal is abstract new Parseable with null record;
   type A_nonterminal1 is new A_nonterminal with record
      A_part : access A_model.A_nonterminal'Class;
      PROCEDURE_part : access PROCEDURE_model.PROCEDURE_nonterminal'Class;
      B_part : access B_model.B_nonterminal'Class;
   end record;
   procedure Acceptor(This : access A_nonterminal1;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
   type A_nonterminal2 is new A_nonterminal with record
      B_part : access B_model.B_nonterminal'Class;
   end record;
   procedure Acceptor(This : access A_nonterminal2;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
end A_model;
