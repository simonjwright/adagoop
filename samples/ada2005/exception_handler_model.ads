-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
limited with except_choice_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package exception_handler_model is
   type exception_handler_nonterminal is abstract new Parseable with null record;
   type exception_handler_nonterminal1 is new exception_handler_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      except_choice_s_part : access except_choice_s_model.except_choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access exception_handler_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type exception_handler_nonterminal2 is new exception_handler_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      COLON_part : Parseable_Token_Ptr;
      except_choice_s_part : access except_choice_s_model.except_choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access exception_handler_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end exception_handler_model;
