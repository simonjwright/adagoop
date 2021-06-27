-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with variant_part_model;
limited with pragma_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package variant_part_opt_model is
   type variant_part_opt_nonterminal is abstract new Parseable with null record;
   type variant_part_opt_nonterminal1 is new variant_part_opt_nonterminal with record
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access variant_part_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type variant_part_opt_nonterminal2 is new variant_part_opt_nonterminal with record
      pragma_s_part1 : access pragma_s_model.pragma_s_nonterminal'Class;
      variant_part_part : access variant_part_model.variant_part_nonterminal'Class;
      pragma_s_part2 : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access variant_part_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end variant_part_opt_model;
