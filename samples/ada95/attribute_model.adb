-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body attribute_model is
   procedure Acceptor(This : access attribute_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_attribute_nonterminal(This);
   end Acceptor;

end attribute_model;
