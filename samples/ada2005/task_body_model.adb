-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body task_body_model is
   procedure Acceptor(This : access task_body_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_task_body_nonterminal(This);
   end Acceptor;

end task_body_model;
