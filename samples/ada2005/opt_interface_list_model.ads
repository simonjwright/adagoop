-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with mark_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package opt_interface_list_model is
   type opt_interface_list_nonterminal is abstract new Parseable with null record;
   type opt_interface_list_nonterminal1 is new opt_interface_list_nonterminal with record
      AND_part : Parseable_Token_Ptr;
      mark_part : access mark_model.mark_nonterminal'Class;
      opt_interface_list_part : access opt_interface_list_model.opt_interface_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access opt_interface_list_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type opt_interface_list_nonterminal2 is new opt_interface_list_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access opt_interface_list_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end opt_interface_list_model;
