-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with block_body_model;
limited with decl_part_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package entry_body_part_model is
   type entry_body_part_nonterminal is abstract new Parseable with null record;
   type entry_body_part_nonterminal1 is new entry_body_part_nonterminal with record
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access entry_body_part_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type entry_body_part_nonterminal2 is new entry_body_part_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      decl_part_part : access decl_part_model.decl_part_nonterminal'Class;
      block_body_part : access block_body_model.block_body_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access entry_body_part_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end entry_body_part_model;
