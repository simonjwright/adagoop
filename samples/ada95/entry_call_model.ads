-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with procedure_call_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package entry_call_model is
   type entry_call_nonterminal is new Parseable with record
      procedure_call_part : access procedure_call_model.procedure_call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_call_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end entry_call_model;
