-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body select_stmt_model is
   procedure Acceptor(This : access select_stmt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_select_stmt_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access select_stmt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_select_stmt_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access select_stmt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_select_stmt_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access select_stmt_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_select_stmt_nonterminal4(This);
   end Acceptor;

end select_stmt_model;
