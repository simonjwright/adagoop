-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with choice_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package comp_assoc_model is
   type comp_assoc_nonterminal is new Parseable with record
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_assoc_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end comp_assoc_model;
