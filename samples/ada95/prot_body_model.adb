-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body prot_body_model is
   procedure Acceptor(This : access prot_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_prot_body_nonterminal(This);
   end Acceptor;

end prot_body_model;
