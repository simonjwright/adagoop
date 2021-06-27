-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with comp_decl_model;
limited with prot_op_decl_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package prot_elem_decl_model is
   type prot_elem_decl_nonterminal is abstract new Parseable with null record;
   type prot_elem_decl_nonterminal1 is new prot_elem_decl_nonterminal with record
      prot_op_decl_part : access prot_op_decl_model.prot_op_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_elem_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type prot_elem_decl_nonterminal2 is new prot_elem_decl_nonterminal with record
      comp_decl_part : access comp_decl_model.comp_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_elem_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end prot_elem_decl_model;
