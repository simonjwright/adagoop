-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with C_model;
limited with OPEN_model;
with small_model;
use small_model;
with small_Visitor_Interface;
package B_model is
   type B_nonterminal is abstract new Parseable with null record;
   type B_nonterminal1 is new B_nonterminal with record
      B_part : access B_model.B_nonterminal'Class;
      OPEN_part : access OPEN_model.OPEN_nonterminal'Class;
      C_part : access C_model.C_nonterminal'Class;
   end record;
   procedure Acceptor(This : access B_nonterminal1;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
   type B_nonterminal2 is new B_nonterminal with record
      C_part : access C_model.C_nonterminal'Class;
   end record;
   procedure Acceptor(This : access B_nonterminal2;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
end B_model;
