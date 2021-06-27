-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with exception_handler_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package except_handler_part_model is
   type except_handler_part_nonterminal is abstract new Parseable with null record;
   type except_handler_part_nonterminal1 is new except_handler_part_nonterminal with record
      EXCEPTION_part : Parseable_Token_Ptr;
      exception_handler_part : access exception_handler_model.exception_handler_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_handler_part_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type except_handler_part_nonterminal2 is new except_handler_part_nonterminal with record
      except_handler_part_part : access except_handler_part_model.except_handler_part_nonterminal'Class;
      exception_handler_part : access exception_handler_model.exception_handler_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_handler_part_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end except_handler_part_model;
