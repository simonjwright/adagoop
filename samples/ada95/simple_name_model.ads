-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package simple_name_model is
   type simple_name_nonterminal is new Parseable with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access simple_name_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end simple_name_model;
