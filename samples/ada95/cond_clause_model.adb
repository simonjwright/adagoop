-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body cond_clause_model is
   procedure Acceptor(This : access cond_clause_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_cond_clause_nonterminal(This);
   end Acceptor;

end cond_clause_model;
