-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with requeue_stmt_model;
limited with code_stmt_model;
limited with raise_stmt_model;
limited with abort_stmt_model;
limited with delay_stmt_model;
limited with procedure_call_model;
limited with goto_stmt_model;
limited with return_stmt_model;
limited with exit_stmt_model;
limited with assign_stmt_model;
limited with null_stmt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package simple_stmt_model is
   type simple_stmt_nonterminal is abstract new Parseable with null record;
   type simple_stmt_nonterminal1 is new simple_stmt_nonterminal with record
      null_stmt_part : access null_stmt_model.null_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal2 is new simple_stmt_nonterminal with record
      assign_stmt_part : access assign_stmt_model.assign_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal3 is new simple_stmt_nonterminal with record
      exit_stmt_part : access exit_stmt_model.exit_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal4 is new simple_stmt_nonterminal with record
      return_stmt_part : access return_stmt_model.return_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal5 is new simple_stmt_nonterminal with record
      goto_stmt_part : access goto_stmt_model.goto_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal6 is new simple_stmt_nonterminal with record
      procedure_call_part : access procedure_call_model.procedure_call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal7 is new simple_stmt_nonterminal with record
      delay_stmt_part : access delay_stmt_model.delay_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal7;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal8 is new simple_stmt_nonterminal with record
      abort_stmt_part : access abort_stmt_model.abort_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal8;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal9 is new simple_stmt_nonterminal with record
      raise_stmt_part : access raise_stmt_model.raise_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal9;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal10 is new simple_stmt_nonterminal with record
      code_stmt_part : access code_stmt_model.code_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal10;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type simple_stmt_nonterminal11 is new simple_stmt_nonterminal with record
      requeue_stmt_part : access requeue_stmt_model.requeue_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access simple_stmt_nonterminal11;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end simple_stmt_model;
