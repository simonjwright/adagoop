-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package basic_loop_model is
   type basic_loop_nonterminal is new Parseable with record
      LOOP_part1 : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      LOOP_part2 : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access basic_loop_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end basic_loop_model;
