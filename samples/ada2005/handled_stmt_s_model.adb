-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body handled_stmt_s_model is
   procedure Acceptor(This : access handled_stmt_s_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_handled_stmt_s_nonterminal(This);
   end Acceptor;

end handled_stmt_s_model;
