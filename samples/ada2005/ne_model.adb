-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body NE_model is
   procedure Acceptor(This : access NE_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_NE_nonterminal(This);
   end Acceptor;

end NE_model;
