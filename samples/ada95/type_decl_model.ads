-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with type_completion_model;
limited with discrim_part_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package type_decl_model is
   type type_decl_nonterminal is new Parseable with record
      TYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      discrim_part_opt_part : access discrim_part_opt_model.discrim_part_opt_nonterminal'Class;
      type_completion_part : access type_completion_model.type_completion_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access type_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end type_decl_model;
