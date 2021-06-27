-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with choice_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package choice_s_model is
   type choice_s_nonterminal is abstract new Parseable with null record;
   type choice_s_nonterminal1 is new choice_s_nonterminal with record
      choice_part : access choice_model.choice_nonterminal'Class;
   end record;
   procedure Acceptor(This : access choice_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type choice_s_nonterminal2 is new choice_s_nonterminal with record
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      PIPE_part : Parseable_Token_Ptr;
      choice_part : access choice_model.choice_nonterminal'Class;
   end record;
   procedure Acceptor(This : access choice_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end choice_s_model;
