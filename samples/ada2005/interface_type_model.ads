-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with opt_interface_list_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package interface_type_model is
   type interface_type_nonterminal is abstract new Parseable with null record;
   type interface_type_nonterminal1 is new interface_type_nonterminal with record
      INTERFACE_part : Parseable_Token_Ptr;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access interface_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type interface_type_nonterminal2 is new interface_type_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
      INTERFACE_part : Parseable_Token_Ptr;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access interface_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type interface_type_nonterminal3 is new interface_type_nonterminal with record
      TASK_part : Parseable_Token_Ptr;
      INTERFACE_part : Parseable_Token_Ptr;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access interface_type_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type interface_type_nonterminal4 is new interface_type_nonterminal with record
      PROTECTED_part : Parseable_Token_Ptr;
      INTERFACE_part : Parseable_Token_Ptr;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access interface_type_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end interface_type_model;
