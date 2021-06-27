-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decimal_digits_constraint_model;
limited with range_constraint_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package constraint_model is
   type constraint_nonterminal is abstract new Parseable with null record;
   type constraint_nonterminal1 is new constraint_nonterminal with record
      range_constraint_part : access range_constraint_model.range_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access constraint_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type constraint_nonterminal2 is new constraint_nonterminal with record
      decimal_digits_constraint_part : access decimal_digits_constraint_model.decimal_digits_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access constraint_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end constraint_model;
