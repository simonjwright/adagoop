-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with rename_unit_model;
limited with generic_decl_model;
limited with subunit_model;
limited with subprog_body_model;
limited with subprog_decl_model;
limited with pkg_body_model;
limited with pkg_decl_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package unit_model is
   type unit_nonterminal is abstract new Parseable with null record;
   type unit_nonterminal1 is new unit_nonterminal with record
      pkg_decl_part : access pkg_decl_model.pkg_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal2 is new unit_nonterminal with record
      pkg_body_part : access pkg_body_model.pkg_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal3 is new unit_nonterminal with record
      subprog_decl_part : access subprog_decl_model.subprog_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal4 is new unit_nonterminal with record
      subprog_body_part : access subprog_body_model.subprog_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal5 is new unit_nonterminal with record
      subunit_part : access subunit_model.subunit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal6 is new unit_nonterminal with record
      generic_decl_part : access generic_decl_model.generic_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unit_nonterminal7 is new unit_nonterminal with record
      rename_unit_part : access rename_unit_model.rename_unit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unit_nonterminal7;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end unit_model;
