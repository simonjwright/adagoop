-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_elem_decl_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package prot_private_opt_model is
   type prot_private_opt_nonterminal is abstract new Parseable with null record;
   type prot_private_opt_nonterminal1 is new prot_private_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access prot_private_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type prot_private_opt_nonterminal2 is new prot_private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      prot_elem_decl_s_part : access prot_elem_decl_s_model.prot_elem_decl_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_private_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end prot_private_opt_model;
