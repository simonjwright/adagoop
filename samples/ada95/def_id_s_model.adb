-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body def_id_s_model is
   procedure Acceptor(This : access def_id_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_def_id_s_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access def_id_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_def_id_s_nonterminal2(This);
   end Acceptor;

end def_id_s_model;
