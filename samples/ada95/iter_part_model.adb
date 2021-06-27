-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body iter_part_model is
   procedure Acceptor(This : access iter_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_iter_part_nonterminal(This);
   end Acceptor;

end iter_part_model;
