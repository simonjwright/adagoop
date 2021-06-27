-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package iter_part_model is
   type iter_part_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access iter_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end iter_part_model;
