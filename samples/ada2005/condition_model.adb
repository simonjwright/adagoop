-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body condition_model is
   procedure Acceptor(This : access condition_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_condition_nonterminal(This);
   end Acceptor;

end condition_model;
