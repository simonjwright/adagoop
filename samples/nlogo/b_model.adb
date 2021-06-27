-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body B_model is
   procedure Acceptor(This : access B_nonterminal1;
      I : access small_Visitor_Interface.Visit_small_Interface'Class) is
   begin
      I.Visit_B_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access B_nonterminal2;
      I : access small_Visitor_Interface.Visit_small_Interface'Class) is
   begin
      I.Visit_B_nonterminal2(This);
   end Acceptor;

end B_model;
