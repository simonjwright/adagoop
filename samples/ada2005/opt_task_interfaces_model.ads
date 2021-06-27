-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with opt_interface_list_model;
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package opt_task_interfaces_model is
   type opt_task_interfaces_nonterminal is abstract new Parseable with null record;
   type opt_task_interfaces_nonterminal1 is new opt_task_interfaces_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access opt_task_interfaces_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type opt_task_interfaces_nonterminal2 is new opt_task_interfaces_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access opt_task_interfaces_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end opt_task_interfaces_model;
