-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body pragma_sym_model is
   procedure Acceptor(This : access pragma_sym_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_pragma_sym_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access pragma_sym_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_pragma_sym_nonterminal2(This);
   end Acceptor;

end pragma_sym_model;
