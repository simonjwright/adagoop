-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body array_type_model is
   procedure Acceptor(This : access array_type_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_array_type_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access array_type_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_array_type_nonterminal2(This);
   end Acceptor;

end array_type_model;
