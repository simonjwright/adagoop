-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_sym_model;
limited with range_constraint_model;
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package discrete_with_range_model is
   type discrete_with_range_nonterminal is abstract new Parseable with null record;
   type discrete_with_range_nonterminal1 is new discrete_with_range_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      range_constraint_part : access range_constraint_model.range_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access discrete_with_range_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type discrete_with_range_nonterminal2 is new discrete_with_range_nonterminal with record
      range_sym_part : access range_sym_model.range_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access discrete_with_range_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end discrete_with_range_model;
