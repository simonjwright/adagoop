-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body comp_assoc_model is
   procedure Acceptor(This : access comp_assoc_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_comp_assoc_nonterminal(This);
   end Acceptor;

end comp_assoc_model;
