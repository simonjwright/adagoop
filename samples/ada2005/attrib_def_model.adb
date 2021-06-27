-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body attrib_def_model is
   procedure Acceptor(This : access attrib_def_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_attrib_def_nonterminal(This);
   end Acceptor;

end attrib_def_model;
