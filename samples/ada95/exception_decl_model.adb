-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body exception_decl_model is
   procedure Acceptor(This : access exception_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_exception_decl_nonterminal(This);
   end Acceptor;

end exception_decl_model;
