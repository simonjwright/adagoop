-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body code_stmt_model is
   procedure Acceptor(This : access code_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_code_stmt_nonterminal(This);
   end Acceptor;

end code_stmt_model;
