-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package procedure_call_model is
   type procedure_call_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access procedure_call_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end procedure_call_model;
