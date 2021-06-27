-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with delay_stmt_model;
limited with stmts_opt_model;
limited with accept_stmt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package select_alt_model is
   type select_alt_nonterminal is abstract new Parseable with null record;
   type select_alt_nonterminal1 is new select_alt_nonterminal with record
      accept_stmt_part : access accept_stmt_model.accept_stmt_nonterminal'Class;
      stmts_opt_part : access stmts_opt_model.stmts_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_alt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type select_alt_nonterminal2 is new select_alt_nonterminal with record
      delay_stmt_part : access delay_stmt_model.delay_stmt_nonterminal'Class;
      stmts_opt_part : access stmts_opt_model.stmts_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_alt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type select_alt_nonterminal3 is new select_alt_nonterminal with record
      TERMINATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access select_alt_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end select_alt_model;
