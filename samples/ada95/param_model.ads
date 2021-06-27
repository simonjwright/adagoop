-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with init_opt_model;
limited with mark_model;
limited with mode_model;
limited with def_id_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package param_model is
   type param_nonterminal is new Parseable with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      mode_part : access mode_model.mode_nonterminal'Class;
      mark_part : access mark_model.mark_nonterminal'Class;
      init_opt_part : access init_opt_model.init_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access param_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end param_model;
