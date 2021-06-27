-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body component_subtype_def_model is
   procedure Acceptor(This : access component_subtype_def_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_component_subtype_def_nonterminal(This);
   end Acceptor;

end component_subtype_def_model;
