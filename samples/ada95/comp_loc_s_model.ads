-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_sym_model;
limited with expression_model;
limited with mark_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package comp_loc_s_model is
   type comp_loc_s_nonterminal is abstract new Parseable with null record;
   type comp_loc_s_nonterminal1 is new comp_loc_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access comp_loc_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type comp_loc_s_nonterminal2 is new comp_loc_s_nonterminal with record
      comp_loc_s_part : access comp_loc_s_model.comp_loc_s_nonterminal'Class;
      mark_part : access mark_model.mark_nonterminal'Class;
      AT_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      RANGE_part : Parseable_Token_Ptr;
      range_sym_part : access range_sym_model.range_sym_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access comp_loc_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end comp_loc_s_model;
