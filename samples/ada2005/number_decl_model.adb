-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body number_decl_model is
   procedure Acceptor(This : access number_decl_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_number_decl_nonterminal(This);
   end Acceptor;

end number_decl_model;
