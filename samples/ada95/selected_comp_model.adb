-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body selected_comp_model is
   procedure Acceptor(This : access selected_comp_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_selected_comp_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access selected_comp_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_selected_comp_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access selected_comp_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_selected_comp_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access selected_comp_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_selected_comp_nonterminal4(This);
   end Acceptor;

end selected_comp_model;
