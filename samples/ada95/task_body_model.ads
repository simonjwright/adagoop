-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with block_body_model;
limited with decl_part_model;
limited with simple_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package task_body_model is
   type task_body_nonterminal is new Parseable with record
      TASK_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      decl_part_part : access decl_part_model.decl_part_nonterminal'Class;
      block_body_part : access block_body_model.block_body_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access task_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end task_body_model;
