-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with entry_call_model;
limited with stmts_opt_model;
limited with delay_stmt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package delay_or_entry_alt_model is
   type delay_or_entry_alt_nonterminal is abstract new Parseable with null record;
   type delay_or_entry_alt_nonterminal1 is new delay_or_entry_alt_nonterminal with record
      delay_stmt_part : access delay_stmt_model.delay_stmt_nonterminal'Class;
      stmts_opt_part : access stmts_opt_model.stmts_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access delay_or_entry_alt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type delay_or_entry_alt_nonterminal2 is new delay_or_entry_alt_nonterminal with record
      entry_call_part : access entry_call_model.entry_call_nonterminal'Class;
      stmts_opt_part : access stmts_opt_model.stmts_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access delay_or_entry_alt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end delay_or_entry_alt_model;
