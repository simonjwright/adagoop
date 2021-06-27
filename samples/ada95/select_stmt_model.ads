-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with cond_entry_call_model;
limited with timed_entry_call_model;
limited with async_select_model;
limited with select_wait_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package select_stmt_model is
   type select_stmt_nonterminal is abstract new Parseable with null record;
   type select_stmt_nonterminal1 is new select_stmt_nonterminal with record
      select_wait_part : access select_wait_model.select_wait_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_stmt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type select_stmt_nonterminal2 is new select_stmt_nonterminal with record
      async_select_part : access async_select_model.async_select_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_stmt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type select_stmt_nonterminal3 is new select_stmt_nonterminal with record
      timed_entry_call_part : access timed_entry_call_model.timed_entry_call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_stmt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type select_stmt_nonterminal4 is new select_stmt_nonterminal with record
      cond_entry_call_part : access cond_entry_call_model.cond_entry_call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access select_stmt_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end select_stmt_model;
