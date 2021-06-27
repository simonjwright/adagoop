-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with qualified_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package code_stmt_model is
   type code_stmt_nonterminal is new Parseable with record
      qualified_part : access qualified_model.qualified_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access code_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end code_stmt_model;
