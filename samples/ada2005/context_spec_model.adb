-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body context_spec_model is
   procedure Acceptor(This : access context_spec_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_context_spec_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access context_spec_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_context_spec_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access context_spec_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_context_spec_nonterminal3(This);
   end Acceptor;

end context_spec_model;
