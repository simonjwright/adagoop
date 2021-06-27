-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with access_type_model;
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package component_subtype_def_model is
   type component_subtype_def_nonterminal is abstract new Parseable with null record;
   type component_subtype_def_nonterminal1 is new component_subtype_def_nonterminal with record
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access component_subtype_def_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type component_subtype_def_nonterminal2 is new component_subtype_def_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access component_subtype_def_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type component_subtype_def_nonterminal3 is new component_subtype_def_nonterminal with record
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access component_subtype_def_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type component_subtype_def_nonterminal4 is new component_subtype_def_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access component_subtype_def_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end component_subtype_def_model;
