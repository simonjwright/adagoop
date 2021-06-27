-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body decimal_digits_constraint_model is
   procedure Acceptor(This : access decimal_digits_constraint_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_decimal_digits_constraint_nonterminal(This);
   end Acceptor;

end decimal_digits_constraint_model;
