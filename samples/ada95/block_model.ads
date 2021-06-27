-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with block_body_model;
limited with block_decl_model;
limited with label_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package block_model is
   type block_nonterminal is new Parseable with record
      label_opt_part : access label_opt_model.label_opt_nonterminal'Class;
      block_decl_part : access block_decl_model.block_decl_nonterminal'Class;
      block_body_part : access block_body_model.block_body_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access block_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end block_model;
