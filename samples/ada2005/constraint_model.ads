-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decimal_digits_constraint_model;
limited with range_constraint_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package constraint_model is
   type constraint_nonterminal is abstract new Parseable with null record;
   type constraint_nonterminal1 is new constraint_nonterminal with record
      range_constraint_part : access range_constraint_model.range_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access constraint_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type constraint_nonterminal2 is new constraint_nonterminal with record
      decimal_digits_constraint_part : access decimal_digits_constraint_model.decimal_digits_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access constraint_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end constraint_model;
