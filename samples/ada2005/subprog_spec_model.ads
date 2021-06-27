-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with access_type_model;
limited with name_model;
limited with designator_model;
limited with formal_part_opt_model;
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subprog_spec_model is
   type subprog_spec_nonterminal is abstract new Parseable with null record;
   type subprog_spec_nonterminal1 is new subprog_spec_nonterminal with record
      PROCEDURE_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subprog_spec_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_spec_nonterminal2 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subprog_spec_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_spec_nonterminal3 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      NOT_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subprog_spec_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_spec_nonterminal4 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subprog_spec_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subprog_spec_nonterminal5 is new subprog_spec_nonterminal with record
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subprog_spec_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subprog_spec_model;
