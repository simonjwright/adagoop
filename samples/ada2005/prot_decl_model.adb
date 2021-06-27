-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body prot_decl_model is
   procedure Acceptor(This : access prot_decl_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_prot_decl_nonterminal(This);
   end Acceptor;

end prot_decl_model;
