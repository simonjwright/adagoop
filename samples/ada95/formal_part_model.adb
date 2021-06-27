-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body formal_part_model is
   procedure Acceptor(This : access formal_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_formal_part_nonterminal(This);
   end Acceptor;

end formal_part_model;
