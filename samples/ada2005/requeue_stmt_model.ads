-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package requeue_stmt_model is
   type requeue_stmt_nonterminal is abstract new Parseable with null record;
   type requeue_stmt_nonterminal1 is new requeue_stmt_nonterminal with record
      REQUEUE_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access requeue_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type requeue_stmt_nonterminal2 is new requeue_stmt_nonterminal with record
      REQUEUE_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      abort_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access requeue_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end requeue_stmt_model;
