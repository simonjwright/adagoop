-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with except_choice_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package except_choice_s_model is
   type except_choice_s_nonterminal is abstract new Parseable with null record;
   type except_choice_s_nonterminal1 is new except_choice_s_nonterminal with record
      except_choice_part : access except_choice_model.except_choice_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_choice_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type except_choice_s_nonterminal2 is new except_choice_s_nonterminal with record
      except_choice_s_part : access except_choice_s_model.except_choice_s_nonterminal'Class;
      PIPE_part : Parseable_Token_Ptr;
      except_choice_part : access except_choice_model.except_choice_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_choice_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end except_choice_s_model;
