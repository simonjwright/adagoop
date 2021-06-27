-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body generic_subp_inst_model is
   procedure Acceptor(This : access generic_subp_inst_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_generic_subp_inst_nonterminal(This);
   end Acceptor;

end generic_subp_inst_model;
