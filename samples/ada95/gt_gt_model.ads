-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package GT_GT_model is
   type GT_GT_nonterminal is new Parseable with record
      RIGHT_LABEL_BRACKET_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access GT_GT_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end GT_GT_model;
