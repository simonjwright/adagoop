-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
limited with delay_or_entry_alt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package async_select_model is
   type async_select_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      delay_or_entry_alt_part : access delay_or_entry_alt_model.delay_or_entry_alt_nonterminal'Class;
      THEN_part : Parseable_Token_Ptr;
      abort_part : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access async_select_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end async_select_model;
