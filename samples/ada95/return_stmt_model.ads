-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package return_stmt_model is
   type return_stmt_nonterminal is abstract new Parseable with null record;
   type return_stmt_nonterminal1 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access return_stmt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type return_stmt_nonterminal2 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access return_stmt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end return_stmt_model;
