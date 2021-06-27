-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package condition_model is
   type condition_nonterminal is new Parseable with record
      expression_part : access expression_model.expression_nonterminal'Class;
   end record;
   procedure Acceptor(This : access condition_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end condition_model;
