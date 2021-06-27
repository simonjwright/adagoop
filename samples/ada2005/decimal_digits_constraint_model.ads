-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_constr_opt_model;
limited with simple_expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package decimal_digits_constraint_model is
   type decimal_digits_constraint_nonterminal is new Parseable with record
      DIGITS_part : Parseable_Token_Ptr;
      simple_expression_part : access simple_expression_model.simple_expression_nonterminal'Class;
      range_constr_opt_part : access range_constr_opt_model.range_constr_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decimal_digits_constraint_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end decimal_digits_constraint_model;
