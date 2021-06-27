-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with def_id_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package number_decl_model is
   type number_decl_nonterminal is new Parseable with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access number_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end number_decl_model;
