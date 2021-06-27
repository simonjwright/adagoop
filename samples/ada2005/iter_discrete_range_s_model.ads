-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrete_range_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package iter_discrete_range_s_model is
   type iter_discrete_range_s_nonterminal is abstract new Parseable with null record;
   type iter_discrete_range_s_nonterminal1 is new iter_discrete_range_s_nonterminal with record
      discrete_range_part : access discrete_range_model.discrete_range_nonterminal'Class;
   end record;
   procedure Acceptor(This : access iter_discrete_range_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type iter_discrete_range_s_nonterminal2 is new iter_discrete_range_s_nonterminal with record
      iter_discrete_range_s_part : access iter_discrete_range_s_model.iter_discrete_range_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      discrete_range_part : access discrete_range_model.discrete_range_nonterminal'Class;
   end record;
   procedure Acceptor(This : access iter_discrete_range_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end iter_discrete_range_s_model;
