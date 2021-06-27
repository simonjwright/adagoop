-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body A_model is
   procedure Acceptor(This : access A_nonterminal1;
      I : access test_Visitor_Interface.Visit_test_Interface'Class) is
   begin
      I.Visit_A_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access A_nonterminal2;
      I : access test_Visitor_Interface.Visit_test_Interface'Class) is
   begin
      I.Visit_A_nonterminal2(This);
   end Acceptor;

end A_model;
