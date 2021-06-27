-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with statement_s_model;
limited with choice_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package alternative_model is
   type alternative_nonterminal is new Parseable with record
      WHEN_part : Parseable_Token_Ptr;
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access alternative_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end alternative_model;
