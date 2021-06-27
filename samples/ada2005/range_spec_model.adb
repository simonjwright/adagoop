-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body range_spec_model is
   procedure Acceptor(This : access range_spec_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_range_spec_nonterminal(This);
   end Acceptor;

end range_spec_model;
