-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body indexed_comp_model is
   procedure Acceptor(This : access indexed_comp_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_indexed_comp_nonterminal(This);
   end Acceptor;

end indexed_comp_model;
