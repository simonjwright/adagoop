-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrim_part_opt_model;
limited with task_def_model;
limited with simple_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package task_spec_model is
   type task_spec_nonterminal is abstract new Parseable with null record;
   type task_spec_nonterminal1 is new task_spec_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      task_def_part : access task_def_model.task_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access task_spec_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type task_spec_nonterminal2 is new task_spec_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      TYPE_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      discrim_part_opt_part : access discrim_part_opt_model.discrim_part_opt_nonterminal'Class;
      task_def_part : access task_def_model.task_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access task_spec_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end task_spec_model;
