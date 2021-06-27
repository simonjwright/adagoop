-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with task_private_opt_model;
limited with rep_spec_s_model;
limited with entry_decl_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package task_def_model is
   type task_def_nonterminal is abstract new Parseable with null record;
   type task_def_nonterminal1 is new task_def_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access task_def_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type task_def_nonterminal2 is new task_def_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      entry_decl_s_part : access entry_decl_s_model.entry_decl_s_nonterminal'Class;
      rep_spec_s_part : access rep_spec_s_model.rep_spec_s_nonterminal'Class;
      task_private_opt_part : access task_private_opt_model.task_private_opt_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access task_def_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end task_def_model;
