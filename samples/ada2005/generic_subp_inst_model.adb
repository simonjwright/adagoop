-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body generic_subp_inst_model is
   procedure Acceptor(This : access generic_subp_inst_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_generic_subp_inst_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access generic_subp_inst_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_generic_subp_inst_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access generic_subp_inst_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_generic_subp_inst_nonterminal3(This);
   end Acceptor;

end generic_subp_inst_model;
