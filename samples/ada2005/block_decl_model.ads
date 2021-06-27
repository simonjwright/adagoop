-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decl_part_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package block_decl_model is
   type block_decl_nonterminal is abstract new Parseable with null record;
   type block_decl_nonterminal1 is new block_decl_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access block_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type block_decl_nonterminal2 is new block_decl_nonterminal with record
      DECLARE_part : Parseable_Token_Ptr;
      decl_part_part : access decl_part_model.decl_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access block_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end block_decl_model;
