-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pkg_spec_model;
limited with subprog_spec_model;
limited with generic_formal_part_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_decl_model is
   type generic_decl_nonterminal is abstract new Parseable with null record;
   type generic_decl_nonterminal1 is new generic_decl_nonterminal with record
      generic_formal_part_part : access generic_formal_part_model.generic_formal_part_nonterminal'Class;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_decl_nonterminal2 is new generic_decl_nonterminal with record
      generic_formal_part_part : access generic_formal_part_model.generic_formal_part_nonterminal'Class;
      pkg_spec_part : access pkg_spec_model.pkg_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_decl_model;
