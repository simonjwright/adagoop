-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body assign_stmt_model is
   procedure Acceptor(This : access assign_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_assign_stmt_nonterminal(This);
   end Acceptor;

end assign_stmt_model;
