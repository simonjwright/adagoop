-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body object_qualifier_opt_model is
   procedure Acceptor(This : access object_qualifier_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_object_qualifier_opt_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access object_qualifier_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_object_qualifier_opt_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access object_qualifier_opt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_object_qualifier_opt_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access object_qualifier_opt_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_object_qualifier_opt_nonterminal4(This);
   end Acceptor;

end object_qualifier_opt_model;
