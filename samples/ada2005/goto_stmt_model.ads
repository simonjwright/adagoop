-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package goto_stmt_model is
   type goto_stmt_nonterminal is new Parseable with record
      GOTO_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access goto_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end goto_stmt_model;
