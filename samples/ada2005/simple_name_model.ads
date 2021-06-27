-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package simple_name_model is
   type simple_name_nonterminal is new Parseable with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access simple_name_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end simple_name_model;
