-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_inst_model;
limited with subprog_spec_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_subp_inst_model is
   type generic_subp_inst_nonterminal is abstract new Parseable with null record;
   type generic_subp_inst_nonterminal1 is new generic_subp_inst_nonterminal with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : access generic_inst_model.generic_inst_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_subp_inst_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_subp_inst_nonterminal2 is new generic_subp_inst_nonterminal with record
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : access generic_inst_model.generic_inst_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_subp_inst_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_subp_inst_nonterminal3 is new generic_subp_inst_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      OVERRIDING_part : Parseable_Token_Ptr;
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : access generic_inst_model.generic_inst_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_subp_inst_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_subp_inst_model;
