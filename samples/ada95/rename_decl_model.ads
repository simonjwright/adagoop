-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with rename_unit_model;
limited with renaming_model;
limited with subtype_ind_model;
limited with object_qualifier_opt_model;
limited with def_id_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package rename_decl_model is
   type rename_decl_nonterminal is abstract new Parseable with null record;
   type rename_decl_nonterminal1 is new rename_decl_nonterminal with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      object_qualifier_opt_part : access object_qualifier_opt_model.object_qualifier_opt_nonterminal'Class;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_decl_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type rename_decl_nonterminal2 is new rename_decl_nonterminal with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      EXCEPTION_part : Parseable_Token_Ptr;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_decl_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type rename_decl_nonterminal3 is new rename_decl_nonterminal with record
      rename_unit_part : access rename_unit_model.rename_unit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access rename_decl_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end rename_decl_model;
