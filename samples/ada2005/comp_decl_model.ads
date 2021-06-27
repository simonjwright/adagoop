-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with init_opt_model;
limited with component_subtype_def_model;
limited with def_id_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package comp_decl_model is
   type comp_decl_nonterminal is new Parseable with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      component_subtype_def_part : access component_subtype_def_model.component_subtype_def_nonterminal'Class;
      init_opt_part : access init_opt_model.init_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access comp_decl_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end comp_decl_model;
