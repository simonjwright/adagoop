-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with procedure_call_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package entry_call_model is
   type entry_call_nonterminal is new Parseable with record
      procedure_call_part : access procedure_call_model.procedure_call_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_call_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end entry_call_model;
