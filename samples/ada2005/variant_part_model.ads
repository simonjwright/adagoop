-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with variant_s_model;
limited with pragma_s_model;
limited with simple_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package variant_part_model is
   type variant_part_nonterminal is new Parseable with record
      CASE_part1 : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      variant_s_part : access variant_s_model.variant_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      CASE_part2 : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access variant_part_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end variant_part_model;
