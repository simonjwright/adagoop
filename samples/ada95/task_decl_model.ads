-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with task_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package task_decl_model is
   type task_decl_nonterminal is new Parseable with record
      task_spec_part : access task_spec_model.task_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access task_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end task_decl_model;
