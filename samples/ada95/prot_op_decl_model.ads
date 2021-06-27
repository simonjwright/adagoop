-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_sym_model;
limited with rep_spec_model;
limited with subprog_spec_model;
limited with entry_decl_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package prot_op_decl_model is
   type prot_op_decl_nonterminal is abstract new Parseable with null record;
   type prot_op_decl_nonterminal1 is new prot_op_decl_nonterminal with record
      entry_decl_part : access entry_decl_model.entry_decl_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_decl_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type prot_op_decl_nonterminal2 is new prot_op_decl_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access prot_op_decl_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type prot_op_decl_nonterminal3 is new prot_op_decl_nonterminal with record
      rep_spec_part : access rep_spec_model.rep_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_decl_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type prot_op_decl_nonterminal4 is new prot_op_decl_nonterminal with record
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access prot_op_decl_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end prot_op_decl_model;
