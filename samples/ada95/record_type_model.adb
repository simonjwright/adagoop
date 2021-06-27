-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body record_type_model is
   procedure Acceptor(This : access record_type_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_record_type_nonterminal(This);
   end Acceptor;

end record_type_model;
