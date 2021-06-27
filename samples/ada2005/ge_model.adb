-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body GE_model is
   procedure Acceptor(This : access GE_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_GE_nonterminal(This);
   end Acceptor;

end GE_model;
