-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body stmts_opt_model is
   procedure Acceptor(This : access stmts_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_stmts_opt_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access stmts_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_stmts_opt_nonterminal2(This);
   end Acceptor;

end stmts_opt_model;
