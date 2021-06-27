-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with condition_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package cond_part_model is
   type cond_part_nonterminal is new Parseable with record
      condition_part : access condition_model.condition_nonterminal'Class;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access cond_part_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end cond_part_model;
