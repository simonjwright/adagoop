-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with else_opt_model;
limited with cond_clause_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package if_stmt_model is
   type if_stmt_nonterminal is new Parseable with record
      IF_part1 : Parseable_Token_Ptr;
      cond_clause_s_part : access cond_clause_s_model.cond_clause_s_nonterminal'Class;
      else_opt_part : access else_opt_model.else_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      IF_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access if_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end if_stmt_model;
