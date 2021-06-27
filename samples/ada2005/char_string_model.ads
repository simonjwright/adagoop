-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package CHAR_STRING_model is
   type CHAR_STRING_nonterminal is new Parseable with record
      STRING_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access CHAR_STRING_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end CHAR_STRING_model;
