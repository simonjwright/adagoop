-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body alternative_model is
   procedure Acceptor(This : access alternative_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_alternative_nonterminal(This);
   end Acceptor;

end alternative_model;
