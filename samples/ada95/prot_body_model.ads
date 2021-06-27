-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with prot_op_body_s_model;
limited with simple_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package prot_body_model is
   type prot_body_nonterminal is new Parseable with record
      PROTECTED_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      prot_op_body_s_part : access prot_op_body_s_model.prot_op_body_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access prot_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end prot_body_model;
