-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body generic_decl_model is
   procedure Acceptor(This : access generic_decl_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_generic_decl_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access generic_decl_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_generic_decl_nonterminal2(This);
   end Acceptor;

end generic_decl_model;
