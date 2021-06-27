-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body A_model is
   procedure Acceptor(This : access A_nonterminal;
      I : access bob_Visitor_Interface.Visit_bob_Interface'Class) is
   begin
      I.Visit_A_nonterminal(This);
   end Acceptor;

end A_model;
