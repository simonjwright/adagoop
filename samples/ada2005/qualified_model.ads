-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with parenthesized_primary_model;
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package qualified_model is
   type qualified_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      TICK_part : Parseable_Token_Ptr;
      parenthesized_primary_part : access parenthesized_primary_model.parenthesized_primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access qualified_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end qualified_model;
