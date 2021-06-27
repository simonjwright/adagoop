-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body async_select_model is
   procedure Acceptor(This : access async_select_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_async_select_nonterminal(This);
   end Acceptor;

end async_select_model;
