-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body block_body_model is
   procedure Acceptor(This : access block_body_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_block_body_nonterminal(This);
   end Acceptor;

end block_body_model;
