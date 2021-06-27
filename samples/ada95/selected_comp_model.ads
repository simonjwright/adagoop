-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with operator_symbol_model;
limited with used_char_model;
limited with simple_name_model;
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package selected_comp_model is
   type selected_comp_nonterminal is abstract new Parseable with null record;
   type selected_comp_nonterminal1 is new selected_comp_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access selected_comp_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type selected_comp_nonterminal2 is new selected_comp_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      used_char_part : access used_char_model.used_char_nonterminal'Class;
   end record;
   procedure Acceptor(This : access selected_comp_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type selected_comp_nonterminal3 is new selected_comp_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      operator_symbol_part : access operator_symbol_model.operator_symbol_nonterminal'Class;
   end record;
   procedure Acceptor(This : access selected_comp_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type selected_comp_nonterminal4 is new selected_comp_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      all_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access selected_comp_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end selected_comp_model;
