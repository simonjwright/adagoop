-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
limited with cond_part_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package cond_clause_model is
   type cond_clause_nonterminal is new Parseable with record
      cond_part_part : access cond_part_model.cond_part_nonterminal'Class;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access cond_clause_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end cond_clause_model;
