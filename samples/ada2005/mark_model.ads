-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with attribute_id_model;
limited with simple_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package mark_model is
   type mark_nonterminal is abstract new Parseable with null record;
   type mark_nonterminal1 is new mark_nonterminal with record
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access mark_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type mark_nonterminal2 is new mark_nonterminal with record
      mark_part : access mark_model.mark_nonterminal'Class;
      TICK_part : Parseable_Token_Ptr;
      attribute_id_part : access attribute_id_model.attribute_id_nonterminal'Class;
   end record;
   procedure Acceptor(This : access mark_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type mark_nonterminal3 is new mark_nonterminal with record
      mark_part : access mark_model.mark_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access mark_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end mark_model;
