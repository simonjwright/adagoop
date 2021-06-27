-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_formal_part_model;
limited with subprog_spec_model;
limited with renaming_model;
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package rename_unit_model is
   type rename_unit_nonterminal is abstract new Parseable with null record;
   type rename_unit_nonterminal1 is new rename_unit_nonterminal with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_unit_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type rename_unit_nonterminal2 is new rename_unit_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_unit_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type rename_unit_nonterminal3 is new rename_unit_nonterminal with record
      generic_formal_part_part : access generic_formal_part_model.generic_formal_part_nonterminal'Class;
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_unit_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type rename_unit_nonterminal4 is new rename_unit_nonterminal with record
      generic_formal_part_part : access generic_formal_part_model.generic_formal_part_nonterminal'Class;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      renaming_part : access renaming_model.renaming_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access rename_unit_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end rename_unit_model;
