-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body operator_symbol_model is
   procedure Acceptor(This : access operator_symbol_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_operator_symbol_nonterminal(This);
   end Acceptor;

end operator_symbol_model;
