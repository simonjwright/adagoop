-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with record_def_model;
limited with subtype_ind_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package derived_type_model is
   type derived_type_nonterminal is abstract new Parseable with null record;
   type derived_type_nonterminal1 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type derived_type_nonterminal2 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type derived_type_nonterminal3 is new derived_type_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type derived_type_nonterminal4 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type derived_type_nonterminal5 is new derived_type_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access derived_type_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end derived_type_model;
