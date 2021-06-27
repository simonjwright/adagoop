-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_op_decl_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package prot_op_decl_s_model is
   type prot_op_decl_s_nonterminal is abstract new Parseable with null record;
   type prot_op_decl_s_nonterminal1 is new prot_op_decl_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access prot_op_decl_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type prot_op_decl_s_nonterminal2 is new prot_op_decl_s_nonterminal with record
      prot_op_decl_s_part : access prot_op_decl_s_model.prot_op_decl_s_nonterminal'Class;
      prot_op_decl_part : access prot_op_decl_model.prot_op_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_decl_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end prot_op_decl_s_model;
