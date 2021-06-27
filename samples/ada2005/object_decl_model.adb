-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body object_decl_model is
   procedure Acceptor(This : access object_decl_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_object_decl_nonterminal(This);
   end Acceptor;

end object_decl_model;
