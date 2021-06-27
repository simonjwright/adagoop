-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with mark_model;
limited with formal_part_opt_model;
limited with prot_opt_model;
limited with subtype_ind_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package access_type_model is
   type access_type_nonterminal is abstract new Parseable with null record;
   type access_type_nonterminal1 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access access_type_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type access_type_nonterminal2 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access access_type_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type access_type_nonterminal3 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      all_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access access_type_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type access_type_nonterminal4 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      prot_opt_part : access prot_opt_model.prot_opt_nonterminal'Class;
      PROCEDURE_part : Parseable_Token_Ptr;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access access_type_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type access_type_nonterminal5 is new access_type_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
      prot_opt_part : access prot_opt_model.prot_opt_nonterminal'Class;
      FUNCTION_part : Parseable_Token_Ptr;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      mark_part : access mark_model.mark_nonterminal'Class;
   end record;
   procedure Acceptor(This : access access_type_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end access_type_model;
