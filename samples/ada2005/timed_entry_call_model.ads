-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with delay_stmt_model;
limited with stmts_opt_model;
limited with entry_call_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package timed_entry_call_model is
   type timed_entry_call_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      entry_call_part : access entry_call_model.entry_call_nonterminal'Class;
      stmts_opt_part1 : access stmts_opt_model.stmts_opt_nonterminal'Class;
      OR_part : Parseable_Token_Ptr;
      delay_stmt_part : access delay_stmt_model.delay_stmt_nonterminal'Class;
      stmts_opt_part2 : access stmts_opt_model.stmts_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access timed_entry_call_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end timed_entry_call_model;
