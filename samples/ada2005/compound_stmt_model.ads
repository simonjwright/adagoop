-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with select_stmt_model;
limited with accept_stmt_model;
limited with block_model;
limited with loop_stmt_model;
limited with case_stmt_model;
limited with if_stmt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package compound_stmt_model is
   type compound_stmt_nonterminal is abstract new Parseable with null record;
   type compound_stmt_nonterminal1 is new compound_stmt_nonterminal with record
      if_stmt_part : access if_stmt_model.if_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_stmt_nonterminal2 is new compound_stmt_nonterminal with record
      case_stmt_part : access case_stmt_model.case_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_stmt_nonterminal3 is new compound_stmt_nonterminal with record
      loop_stmt_part : access loop_stmt_model.loop_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_stmt_nonterminal4 is new compound_stmt_nonterminal with record
      block_part : access block_model.block_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_stmt_nonterminal5 is new compound_stmt_nonterminal with record
      accept_stmt_part : access accept_stmt_model.accept_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_stmt_nonterminal6 is new compound_stmt_nonterminal with record
      select_stmt_part : access select_stmt_model.select_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_stmt_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end compound_stmt_model;
