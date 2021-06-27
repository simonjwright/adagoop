-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with body_stub_model;
limited with generic_decl_model;
limited with rename_decl_model;
limited with exception_decl_model;
limited with prot_decl_model;
limited with task_decl_model;
limited with pkg_decl_model;
limited with subprog_decl_model;
limited with subtype_decl_model;
limited with type_decl_model;
limited with number_decl_model;
limited with object_decl_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package decl_model is
   type decl_nonterminal is abstract new Parseable with null record;
   type decl_nonterminal1 is new decl_nonterminal with record
      object_decl_part : access object_decl_model.object_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal2 is new decl_nonterminal with record
      number_decl_part : access number_decl_model.number_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal3 is new decl_nonterminal with record
      type_decl_part : access type_decl_model.type_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal4 is new decl_nonterminal with record
      subtype_decl_part : access subtype_decl_model.subtype_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal5 is new decl_nonterminal with record
      subprog_decl_part : access subprog_decl_model.subprog_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal6 is new decl_nonterminal with record
      pkg_decl_part : access pkg_decl_model.pkg_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal6;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal7 is new decl_nonterminal with record
      task_decl_part : access task_decl_model.task_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal7;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal8 is new decl_nonterminal with record
      prot_decl_part : access prot_decl_model.prot_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal8;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal9 is new decl_nonterminal with record
      exception_decl_part : access exception_decl_model.exception_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal9;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal10 is new decl_nonterminal with record
      rename_decl_part : access rename_decl_model.rename_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal10;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal11 is new decl_nonterminal with record
      generic_decl_part : access generic_decl_model.generic_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal11;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type decl_nonterminal12 is new decl_nonterminal with record
      body_stub_part : access body_stub_model.body_stub_nonterminal'Class;
   end record;
   procedure Acceptor(This : access decl_nonterminal12;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end decl_model;
