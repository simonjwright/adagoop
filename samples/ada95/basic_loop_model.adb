-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body basic_loop_model is
   procedure Acceptor(This : access basic_loop_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_basic_loop_nonterminal(This);
   end Acceptor;

end basic_loop_model;
