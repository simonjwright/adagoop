-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package attribute_id_model is
   type attribute_id_nonterminal is abstract new Parseable with null record;
   type attribute_id_nonterminal1 is new attribute_id_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access attribute_id_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type attribute_id_nonterminal2 is new attribute_id_nonterminal with record
      DIGITS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access attribute_id_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type attribute_id_nonterminal3 is new attribute_id_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access attribute_id_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type attribute_id_nonterminal4 is new attribute_id_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access attribute_id_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end attribute_id_model;
