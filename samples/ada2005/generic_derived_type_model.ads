-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_derived_type_model is
   type generic_derived_type_nonterminal is abstract new Parseable with null record;
   type generic_derived_type_nonterminal1 is new generic_derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_derived_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_derived_type_nonterminal2 is new generic_derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_derived_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_derived_type_nonterminal3 is new generic_derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_derived_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_derived_type_model;
