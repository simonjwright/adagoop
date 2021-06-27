-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body subprog_spec_model is
   procedure Acceptor(This : access subprog_spec_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_subprog_spec_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access subprog_spec_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_subprog_spec_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access subprog_spec_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_subprog_spec_nonterminal3(This);
   end Acceptor;

end subprog_spec_model;
