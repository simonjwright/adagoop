-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with opt_interface_list_model;
limited with record_def_model;
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package derived_type_model is
   type derived_type_nonterminal is abstract new Parseable with null record;
   type derived_type_nonterminal1 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal2 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal3 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal4 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal5 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal6 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      LIMITED_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type derived_type_nonterminal7 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      LIMITED_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal7;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end derived_type_model;
