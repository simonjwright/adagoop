-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body raise_stmt_model is
   procedure Acceptor(This : access raise_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_raise_stmt_nonterminal(This);
   end Acceptor;

end raise_stmt_model;
