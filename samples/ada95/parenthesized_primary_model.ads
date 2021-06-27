-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with aggregate_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package parenthesized_primary_model is
   type parenthesized_primary_nonterminal is abstract new Parseable with null record;
   type parenthesized_primary_nonterminal1 is new parenthesized_primary_nonterminal with record
      aggregate_part : access aggregate_model.aggregate_nonterminal'Class;
   end record;
   procedure Acceptor(This : access parenthesized_primary_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type parenthesized_primary_nonterminal2 is new parenthesized_primary_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access parenthesized_primary_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end parenthesized_primary_model;
