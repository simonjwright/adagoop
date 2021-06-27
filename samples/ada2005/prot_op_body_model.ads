-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subprog_spec_model;
limited with subprog_body_model;
limited with entry_body_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package prot_op_body_model is
   type prot_op_body_nonterminal is abstract new Parseable with null record;
   type prot_op_body_nonterminal1 is new prot_op_body_nonterminal with record
      entry_body_part : access entry_body_model.entry_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_body_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type prot_op_body_nonterminal2 is new prot_op_body_nonterminal with record
      subprog_body_part : access subprog_body_model.subprog_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_body_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type prot_op_body_nonterminal3 is new prot_op_body_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access prot_op_body_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end prot_op_body_model;
