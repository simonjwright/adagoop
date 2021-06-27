-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with else_opt_model;
limited with or_select_model;
limited with guarded_select_alt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package select_wait_model is
   type select_wait_nonterminal is new Parseable with record
      SELECT_part1 : Parseable_Token_Ptr;
      guarded_select_alt_part : access guarded_select_alt_model.guarded_select_alt_nonterminal'Class;
      or_select_part : access or_select_model.or_select_nonterminal'Class;
      else_opt_part : access else_opt_model.else_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      SELECT_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access select_wait_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end select_wait_model;
