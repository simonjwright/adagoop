-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body not_null_opt_model is
   procedure Acceptor(This : access not_null_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_not_null_opt_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access not_null_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_not_null_opt_nonterminal2(This);
   end Acceptor;

end not_null_opt_model;
