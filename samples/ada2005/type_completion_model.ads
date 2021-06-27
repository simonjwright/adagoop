-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with type_def_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package type_completion_model is
   type type_completion_nonterminal is abstract new Parseable with null record;
   type type_completion_nonterminal1 is new type_completion_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access type_completion_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type type_completion_nonterminal2 is new type_completion_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      type_def_part : access type_def_model.type_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_completion_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type type_completion_nonterminal3 is new type_completion_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      TAGGED_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access type_completion_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end type_completion_model;
