-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body mode_model is
   procedure Acceptor(This : access mode_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_mode_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access mode_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_mode_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access mode_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_mode_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access mode_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_mode_nonterminal4(This);
   end Acceptor;

end mode_model;
