-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package def_id_model is
   type def_id_nonterminal is new Parseable with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access def_id_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end def_id_model;
