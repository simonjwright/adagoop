-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subprog_spec_model;
limited with compound_name_model;
limited with simple_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package body_stub_model is
   type body_stub_nonterminal is abstract new Parseable with null record;
   type body_stub_nonterminal1 is new body_stub_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access body_stub_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_stub_nonterminal2 is new body_stub_nonterminal with record
      PACKAGE_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access body_stub_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_stub_nonterminal3 is new body_stub_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access body_stub_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_stub_nonterminal4 is new body_stub_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
      BODY_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      SEPARATE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access body_stub_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end body_stub_model;
