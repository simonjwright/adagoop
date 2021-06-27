-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subprog_spec_is_push_model;
limited with generic_subp_inst_model;
limited with subprog_spec_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subprog_decl_model is
   type subprog_decl_nonterminal is abstract new Parseable with null record;
   type subprog_decl_nonterminal1 is new subprog_decl_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal2 is new subprog_decl_nonterminal with record
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal3 is new subprog_decl_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal4 is new subprog_decl_nonterminal with record
      generic_subp_inst_part : access generic_subp_inst_model.generic_subp_inst_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal5 is new subprog_decl_nonterminal with record
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      abstract_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal6 is new subprog_decl_nonterminal with record
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal7 is new subprog_decl_nonterminal with record
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      abstract_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal7;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal8 is new subprog_decl_nonterminal with record
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal8;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal9 is new subprog_decl_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      abstract_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal9;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_decl_nonterminal10 is new subprog_decl_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_is_push_part : access subprog_spec_is_push_model.subprog_spec_is_push_nonterminal'Class;
      NULL_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_decl_nonterminal10;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subprog_decl_model;
