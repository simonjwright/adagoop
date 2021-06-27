-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package assign_stmt_model is
   type assign_stmt_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      ASSIGNMENT_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access assign_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end assign_stmt_model;
