-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with name_model;
limited with simple_expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package range_sym_model is
   type range_sym_nonterminal is abstract new Parseable with null record;
   type range_sym_nonterminal1 is new range_sym_nonterminal with record
      simple_expression_part1 : access simple_expression_model.simple_expression_nonterminal'Class;
      DOUBLE_DOT_part : Parseable_Token_Ptr;
      simple_expression_part2 : access simple_expression_model.simple_expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access range_sym_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type range_sym_nonterminal2 is new range_sym_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      TICK_part : Parseable_Token_Ptr;
      RANGE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access range_sym_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type range_sym_nonterminal3 is new range_sym_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      TICK_part : Parseable_Token_Ptr;
      RANGE_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access range_sym_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end range_sym_model;
