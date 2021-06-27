-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrete_range_model;
limited with reverse_opt_model;
limited with iter_part_model;
limited with condition_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package iteration_model is
   type iteration_nonterminal is abstract new Parseable with null record;
   type iteration_nonterminal1 is new iteration_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access iteration_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type iteration_nonterminal2 is new iteration_nonterminal with record
      WHILE_part : Parseable_Token_Ptr;
      condition_part : access condition_model.condition_nonterminal'Class;
   end record;
   procedure Acceptor(This : access iteration_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type iteration_nonterminal3 is new iteration_nonterminal with record
      iter_part_part : access iter_part_model.iter_part_nonterminal'Class;
      reverse_opt_part : access reverse_opt_model.reverse_opt_nonterminal'Class;
      discrete_range_part : access discrete_range_model.discrete_range_nonterminal'Class;
   end record;
   procedure Acceptor(This : access iteration_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end iteration_model;
