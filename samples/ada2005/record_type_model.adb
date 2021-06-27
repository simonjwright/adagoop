-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body record_type_model is
   procedure Acceptor(This : access record_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_record_type_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access record_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_record_type_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access record_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_record_type_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access record_type_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_record_type_nonterminal4(This);
   end Acceptor;

end record_type_model;
