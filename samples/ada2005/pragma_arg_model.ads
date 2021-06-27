-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with simple_name_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package pragma_arg_model is
   type pragma_arg_nonterminal is abstract new Parseable with null record;
   type pragma_arg_nonterminal1 is new pragma_arg_nonterminal with record
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pragma_arg_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type pragma_arg_nonterminal2 is new pragma_arg_nonterminal with record
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pragma_arg_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end pragma_arg_model;
