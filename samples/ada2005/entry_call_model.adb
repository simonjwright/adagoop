-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body entry_call_model is
   procedure Acceptor(This : access entry_call_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_entry_call_nonterminal(This);
   end Acceptor;

end entry_call_model;
