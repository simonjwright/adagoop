-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with comp_loc_s_model;
limited with align_opt_model;
limited with mark_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package record_type_spec_model is
   type record_type_spec_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : access mark_model.mark_nonterminal'Class;
      USE_part : Parseable_Token_Ptr;
      RECORD_part1 : Parseable_Token_Ptr;
      align_opt_part : access align_opt_model.align_opt_nonterminal'Class;
      comp_loc_s_part : access comp_loc_s_model.comp_loc_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      RECORD_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access record_type_spec_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end record_type_spec_model;
