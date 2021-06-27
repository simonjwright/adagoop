-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body loop_stmt_model is
   procedure Acceptor(This : access loop_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_loop_stmt_nonterminal(This);
   end Acceptor;

end loop_stmt_model;
