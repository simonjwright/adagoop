-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with init_opt_model;
limited with object_subtype_def_model;
limited with object_qualifier_opt_model;
limited with def_id_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package object_decl_model is
   type object_decl_nonterminal is new Parseable with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      object_qualifier_opt_part : access object_qualifier_opt_model.object_qualifier_opt_nonterminal'Class;
      object_subtype_def_part : access object_subtype_def_model.object_subtype_def_nonterminal'Class;
      init_opt_part : access init_opt_model.init_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access object_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end object_decl_model;
