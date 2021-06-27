-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
limited with range_sym_model;
limited with membership_model;
limited with relational_model;
limited with simple_expression_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package relation_model is
   type relation_nonterminal is abstract new Parseable with null record;
   type relation_nonterminal1 is new relation_nonterminal with record
      simple_expression_part : access simple_expression_model.simple_expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relation_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relation_nonterminal2 is new relation_nonterminal with record
      simple_expression_part1 : access simple_expression_model.simple_expression_nonterminal'Class;
      relational_part : access relational_model.relational_nonterminal'Class;
      simple_expression_part2 : access simple_expression_model.simple_expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relation_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relation_nonterminal3 is new relation_nonterminal with record
      simple_expression_part : access simple_expression_model.simple_expression_nonterminal'Class;
      membership_part : access membership_model.membership_nonterminal'Class;
      range_sym_part : access range_sym_model.range_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relation_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relation_nonterminal4 is new relation_nonterminal with record
      simple_expression_part : access simple_expression_model.simple_expression_nonterminal'Class;
      membership_part : access membership_model.membership_nonterminal'Class;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relation_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end relation_model;
