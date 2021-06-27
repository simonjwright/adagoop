-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body pkg_spec_model is
   procedure Acceptor(This : access pkg_spec_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_pkg_spec_nonterminal(This);
   end Acceptor;

end pkg_spec_model;
