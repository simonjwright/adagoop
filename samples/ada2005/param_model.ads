-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with access_type_model;
limited with init_opt_model;
limited with mark_model;
limited with mode_model;
limited with def_id_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package param_model is
   type param_nonterminal is abstract new Parseable with null record;
   type param_nonterminal1 is new param_nonterminal with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      mode_part : access mode_model.mode_nonterminal'Class;
      mark_part : access mark_model.mark_nonterminal'Class;
      init_opt_part : access init_opt_model.init_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access param_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type param_nonterminal2 is new param_nonterminal with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      access_type_part : access access_type_model.access_type_nonterminal'Class;
      init_opt_part : access init_opt_model.init_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access param_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end param_model;
