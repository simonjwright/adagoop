-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with value_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package value_s_model is
   type value_s_nonterminal is abstract new Parseable with null record;
   type value_s_nonterminal1 is new value_s_nonterminal with record
      value_part : access value_model.value_nonterminal'Class;
   end record;
   procedure Acceptor(This : access value_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type value_s_nonterminal2 is new value_s_nonterminal with record
      value_s_part : access value_s_model.value_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      value_part : access value_model.value_nonterminal'Class;
   end record;
   procedure Acceptor(This : access value_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end value_s_model;
