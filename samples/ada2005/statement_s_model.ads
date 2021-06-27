-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package statement_s_model is
   type statement_s_nonterminal is abstract new Parseable with null record;
   type statement_s_nonterminal1 is new statement_s_nonterminal with record
      statement_part : access statement_model.statement_nonterminal'Class;
   end record;
   procedure Acceptor(This : access statement_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type statement_s_nonterminal2 is new statement_s_nonterminal with record
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
      statement_part : access statement_model.statement_nonterminal'Class;
   end record;
   procedure Acceptor(This : access statement_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end statement_s_model;
