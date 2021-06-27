-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body def_id_model is
   procedure Acceptor(This : access def_id_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_def_id_nonterminal(This);
   end Acceptor;

end def_id_model;
