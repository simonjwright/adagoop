-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body statement_s_model is
   procedure Acceptor(This : access statement_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_statement_s_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access statement_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_statement_s_nonterminal2(This);
   end Acceptor;

end statement_s_model;
