-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_constr_opt_model;
limited with expression_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package decimal_digits_constraint_model is
   type decimal_digits_constraint_nonterminal is new Parseable with record
      DIGITS_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      range_constr_opt_part : access range_constr_opt_model.range_constr_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decimal_digits_constraint_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end decimal_digits_constraint_model;
