-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with record_def_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package record_type_model is
   type record_type_nonterminal is abstract new Parseable with null record;
   type record_type_nonterminal1 is new record_type_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
      LIMITED_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access record_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type record_type_nonterminal2 is new record_type_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access record_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type record_type_nonterminal3 is new record_type_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access record_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type record_type_nonterminal4 is new record_type_nonterminal with record
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access record_type_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end record_type_model;
