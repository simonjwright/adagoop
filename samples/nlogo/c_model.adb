-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body C_model is
   procedure Acceptor(This : access C_nonterminal;
      I : access small_Visitor_Interface.Visit_small_Interface'Class) is
   begin
      I.Visit_C_nonterminal(This);
   end Acceptor;

end C_model;
