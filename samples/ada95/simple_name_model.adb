-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body simple_name_model is
   procedure Acceptor(This : access simple_name_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_simple_name_nonterminal(This);
   end Acceptor;

end simple_name_model;
