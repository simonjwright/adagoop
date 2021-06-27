-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package private_type_model is
   type private_type_nonterminal is abstract new Parseable with null record;
   type private_type_nonterminal1 is new private_type_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
      LIMITED_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type private_type_nonterminal2 is new private_type_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type private_type_nonterminal3 is new private_type_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type private_type_nonterminal4 is new private_type_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_type_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end private_type_model;
