-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body type_decl_model is
   procedure Acceptor(This : access type_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_type_decl_nonterminal(This);
   end Acceptor;

end type_decl_model;
