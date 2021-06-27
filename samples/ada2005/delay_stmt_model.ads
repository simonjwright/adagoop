-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package delay_stmt_model is
   type delay_stmt_nonterminal is abstract new Parseable with null record;
   type delay_stmt_nonterminal1 is new delay_stmt_nonterminal with record
      DELAY_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access delay_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type delay_stmt_nonterminal2 is new delay_stmt_nonterminal with record
      DELAY_part : Parseable_Token_Ptr;
      UNTIL_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access delay_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end delay_stmt_model;
