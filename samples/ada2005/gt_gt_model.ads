-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package GT_GT_model is
   type GT_GT_nonterminal is new Parseable with record
      RIGHT_LABEL_BRACKET_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access GT_GT_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end GT_GT_model;
