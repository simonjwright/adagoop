-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_spec_opt_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package float_type_model is
   type float_type_nonterminal is new Parseable with record
      DIGITS_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      range_spec_opt_part : access range_spec_opt_model.range_spec_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access float_type_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end float_type_model;
