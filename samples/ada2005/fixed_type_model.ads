-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_spec_opt_model;
limited with range_spec_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package fixed_type_model is
   type fixed_type_nonterminal is abstract new Parseable with null record;
   type fixed_type_nonterminal1 is new fixed_type_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      range_spec_part : access range_spec_model.range_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access fixed_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type fixed_type_nonterminal2 is new fixed_type_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      expression_part1 : access expression_model.expression_nonterminal'Class;
      DIGITS_part : Parseable_Token_Ptr;
      expression_part2 : access expression_model.expression_nonterminal'Class;
      range_spec_opt_part : access range_spec_opt_model.range_spec_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access fixed_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end fixed_type_model;
