-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with range_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package integer_type_model is
   type integer_type_nonterminal is abstract new Parseable with null record;
   type integer_type_nonterminal1 is new integer_type_nonterminal with record
      range_spec_part : access range_spec_model.range_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access integer_type_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type integer_type_nonterminal2 is new integer_type_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access integer_type_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end integer_type_model;
