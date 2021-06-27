-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package abort_stmt_model is
   type abort_stmt_nonterminal is new Parseable with record
      abort_part : Parseable_Token_Ptr;
      name_s_part : access name_s_model.name_s_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access abort_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end abort_stmt_model;
