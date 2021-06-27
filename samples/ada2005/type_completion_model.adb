-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body type_completion_model is
   procedure Acceptor(This : access type_completion_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_type_completion_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access type_completion_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_type_completion_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access type_completion_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_type_completion_nonterminal3(This);
   end Acceptor;

end type_completion_model;
