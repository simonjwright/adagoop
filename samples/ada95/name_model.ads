-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with operator_symbol_model;
limited with attribute_model;
limited with selected_comp_model;
limited with indexed_comp_model;
limited with simple_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package name_model is
   type name_nonterminal is abstract new Parseable with null record;
   type name_nonterminal1 is new name_nonterminal with record
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type name_nonterminal2 is new name_nonterminal with record
      indexed_comp_part : access indexed_comp_model.indexed_comp_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type name_nonterminal3 is new name_nonterminal with record
      selected_comp_part : access selected_comp_model.selected_comp_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type name_nonterminal4 is new name_nonterminal with record
      attribute_part : access attribute_model.attribute_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type name_nonterminal5 is new name_nonterminal with record
      operator_symbol_part : access operator_symbol_model.operator_symbol_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end name_model;
