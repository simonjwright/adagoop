-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body qualified_model is
   procedure Acceptor(This : access qualified_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_qualified_nonterminal(This);
   end Acceptor;

end qualified_model;
