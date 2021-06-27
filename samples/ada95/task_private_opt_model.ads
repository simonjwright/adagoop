-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with rep_spec_s_model;
limited with entry_decl_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package task_private_opt_model is
   type task_private_opt_nonterminal is abstract new Parseable with null record;
   type task_private_opt_nonterminal1 is new task_private_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access task_private_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type task_private_opt_nonterminal2 is new task_private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      entry_decl_s_part : access entry_decl_s_model.entry_decl_s_nonterminal'Class;
      rep_spec_s_part : access rep_spec_s_model.rep_spec_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access task_private_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end task_private_opt_model;
