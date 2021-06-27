-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body multiplying_model is
   procedure Acceptor(This : access multiplying_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_multiplying_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access multiplying_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_multiplying_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access multiplying_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_multiplying_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access multiplying_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_multiplying_nonterminal4(This);
   end Acceptor;

end multiplying_model;
