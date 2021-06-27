-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with value_s_model;
limited with expression_model;
limited with value_s_2_model;
limited with comp_assoc_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package aggregate_model is
   type aggregate_nonterminal is abstract new Parseable with null record;
   type aggregate_nonterminal1 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      comp_assoc_part : access comp_assoc_model.comp_assoc_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access aggregate_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type aggregate_nonterminal2 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      value_s_2_part : access value_s_2_model.value_s_2_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access aggregate_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type aggregate_nonterminal3 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      value_s_part : access value_s_model.value_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access aggregate_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type aggregate_nonterminal4 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access aggregate_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type aggregate_nonterminal5 is new aggregate_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access aggregate_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end aggregate_model;
