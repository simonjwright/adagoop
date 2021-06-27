-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package stmts_opt_model is
   type stmts_opt_nonterminal is abstract new Parseable with null record;
   type stmts_opt_nonterminal1 is new stmts_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access stmts_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type stmts_opt_nonterminal2 is new stmts_opt_nonterminal with record
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access stmts_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end stmts_opt_model;
