-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with use_clause_model;
limited with access_type_model;
limited with name_model;
limited with designator_model;
limited with subp_default_model;
limited with formal_part_opt_model;
limited with generic_type_def_model;
limited with generic_discrim_part_opt_model;
limited with simple_name_model;
limited with param_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_formal_model is
   type generic_formal_nonterminal is abstract new Parseable with null record;
   type generic_formal_nonterminal1 is new generic_formal_nonterminal with record
      param_part : access param_model.param_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal2 is new generic_formal_nonterminal with record
      TYPE_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      generic_discrim_part_opt_part : access generic_discrim_part_opt_model.generic_discrim_part_opt_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_type_def_part : access generic_type_def_model.generic_type_def_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal3 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PROCEDURE_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      subp_default_part : access subp_default_model.subp_default_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal4 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      subp_default_part : access subp_default_model.subp_default_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal5 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      NOT_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      subp_default_part : access subp_default_model.subp_default_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal6 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      FUNCTION_part : Parseable_Token_Ptr;
      designator_part : access designator_model.designator_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      RETURN_part : Parseable_Token_Ptr;
      access_type_part : access access_type_model.access_type_nonterminal'Class;
      subp_default_part : access subp_default_model.subp_default_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal6;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal7 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PACKAGE_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal7;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal8 is new generic_formal_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      PACKAGE_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      NEW_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal8;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type generic_formal_nonterminal9 is new generic_formal_nonterminal with record
      use_clause_part : access use_clause_model.use_clause_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_formal_nonterminal9;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_formal_model;
