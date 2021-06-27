-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
limited with stmts_opt_model;
limited with entry_call_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package cond_entry_call_model is
   type cond_entry_call_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      entry_call_part : access entry_call_model.entry_call_nonterminal'Class;
      stmts_opt_part : access stmts_opt_model.stmts_opt_nonterminal'Class;
      ELSE_part : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access cond_entry_call_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end cond_entry_call_model;
