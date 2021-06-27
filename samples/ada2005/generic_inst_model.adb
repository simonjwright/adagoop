-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body generic_inst_model is
   procedure Acceptor(This : access generic_inst_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_generic_inst_nonterminal(This);
   end Acceptor;

end generic_inst_model;
