-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package c_name_list_model is
   type c_name_list_nonterminal is abstract new Parseable with null record;
   type c_name_list_nonterminal1 is new c_name_list_nonterminal with record
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access c_name_list_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type c_name_list_nonterminal2 is new c_name_list_nonterminal with record
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access c_name_list_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end c_name_list_model;
