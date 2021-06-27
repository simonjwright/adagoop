-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with condition_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package cond_part_model is
   type cond_part_nonterminal is new Parseable with record
      condition_part : access condition_model.condition_nonterminal'Class;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access cond_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end cond_part_model;
