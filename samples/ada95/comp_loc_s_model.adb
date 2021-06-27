-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body comp_loc_s_model is
   procedure Acceptor(This : access comp_loc_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_comp_loc_s_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access comp_loc_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_comp_loc_s_nonterminal2(This);
   end Acceptor;

end comp_loc_s_model;
