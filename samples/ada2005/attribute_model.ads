-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with attribute_id_model;
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package attribute_model is
   type attribute_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      TICK_part : Parseable_Token_Ptr;
      attribute_id_part : access attribute_id_model.attribute_id_nonterminal'Class;
   end record;
   procedure Acceptor(This : access attribute_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end attribute_model;
