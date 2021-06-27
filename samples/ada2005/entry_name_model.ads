-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with simple_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package entry_name_model is
   type entry_name_nonterminal is abstract new Parseable with null record;
   type entry_name_nonterminal1 is new entry_name_nonterminal with record
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_name_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type entry_name_nonterminal2 is new entry_name_nonterminal with record
      entry_name_part : access entry_name_model.entry_name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access entry_name_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end entry_name_model;
