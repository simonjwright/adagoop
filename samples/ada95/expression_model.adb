-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body expression_model is
   procedure Acceptor(This : access expression_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_expression_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access expression_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_expression_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access expression_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_expression_nonterminal3(This);
   end Acceptor;

end expression_model;
