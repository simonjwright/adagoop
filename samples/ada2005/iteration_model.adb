-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body iteration_model is
   procedure Acceptor(This : access iteration_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_iteration_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access iteration_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_iteration_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access iteration_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_iteration_nonterminal3(This);
   end Acceptor;

end iteration_model;
