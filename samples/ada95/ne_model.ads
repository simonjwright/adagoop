-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package NE_model is
   type NE_nonterminal is new Parseable with record
      INEQUALITY_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NE_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end NE_model;
