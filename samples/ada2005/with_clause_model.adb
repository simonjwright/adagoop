-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body with_clause_model is
   procedure Acceptor(This : access with_clause_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_with_clause_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access with_clause_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_with_clause_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access with_clause_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_with_clause_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access with_clause_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_with_clause_nonterminal4(This);
   end Acceptor;

end with_clause_model;
