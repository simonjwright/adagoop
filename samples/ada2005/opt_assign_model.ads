-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package opt_assign_model is
   type opt_assign_nonterminal is abstract new Parseable with null record;
   type opt_assign_nonterminal1 is new opt_assign_nonterminal with record
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access opt_assign_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type opt_assign_nonterminal2 is new opt_assign_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access opt_assign_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end opt_assign_model;
