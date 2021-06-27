-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package except_choice_model is
   type except_choice_nonterminal is abstract new Parseable with null record;
   type except_choice_nonterminal1 is new except_choice_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_choice_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type except_choice_nonterminal2 is new except_choice_nonterminal with record
      OTHERS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access except_choice_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end except_choice_model;
