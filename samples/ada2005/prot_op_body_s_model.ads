-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_op_body_model;
limited with pragma_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package prot_op_body_s_model is
   type prot_op_body_s_nonterminal is abstract new Parseable with null record;
   type prot_op_body_s_nonterminal1 is new prot_op_body_s_nonterminal with record
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_body_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type prot_op_body_s_nonterminal2 is new prot_op_body_s_nonterminal with record
      prot_op_body_s_part : access prot_op_body_s_model.prot_op_body_s_nonterminal'Class;
      prot_op_body_part : access prot_op_body_model.prot_op_body_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_body_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end prot_op_body_s_model;
