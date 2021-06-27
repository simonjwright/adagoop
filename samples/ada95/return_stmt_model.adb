-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body return_stmt_model is
   procedure Acceptor(This : access return_stmt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_return_stmt_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access return_stmt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_return_stmt_nonterminal2(This);
   end Acceptor;

end return_stmt_model;
