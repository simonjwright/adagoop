-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with choice_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package comp_assoc_model is
   type comp_assoc_nonterminal is abstract new Parseable with null record;
   type comp_assoc_nonterminal1 is new comp_assoc_nonterminal with record
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_assoc_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type comp_assoc_nonterminal2 is new comp_assoc_nonterminal with record
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access comp_assoc_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end comp_assoc_model;
