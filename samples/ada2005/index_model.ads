-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package index_model is
   type index_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      RANGE_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access index_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end index_model;
