-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with array_type_model;
limited with access_type_model;
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package object_subtype_def_model is
   type object_subtype_def_nonterminal is abstract new Parseable with null record;
   type object_subtype_def_nonterminal1 is new object_subtype_def_nonterminal with record
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access object_subtype_def_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type object_subtype_def_nonterminal2 is new object_subtype_def_nonterminal with record
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access object_subtype_def_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type object_subtype_def_nonterminal3 is new object_subtype_def_nonterminal with record
      array_type_part : access array_type_model.array_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access object_subtype_def_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end object_subtype_def_model;
