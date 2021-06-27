-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with GT_GT_model;
limited with LT_LT_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package label_model is
   type label_nonterminal is new Parseable with record
      LT_LT_part : access LT_LT_model.LT_LT_nonterminal'Class;
      identifier_part : Parseable_Token_Ptr;
      GT_GT_part : access GT_GT_model.GT_GT_nonterminal'Class;
   end record;
   procedure Acceptor(This : access label_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end label_model;
