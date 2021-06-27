-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body subprog_body_model is
   procedure Acceptor(This : access subprog_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_subprog_body_nonterminal(This);
   end Acceptor;

end subprog_body_model;
