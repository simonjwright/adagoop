-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_s_model;
limited with unit_model;
limited with private_opt_model;
limited with context_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package comp_unit_model is
   type comp_unit_nonterminal is abstract new Parseable with null record;
   type comp_unit_nonterminal1 is new comp_unit_nonterminal with record
      context_spec_part : access context_spec_model.context_spec_nonterminal'Class;
      private_opt_part : access private_opt_model.private_opt_nonterminal'Class;
      unit_part : access unit_model.unit_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_unit_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type comp_unit_nonterminal2 is new comp_unit_nonterminal with record
      private_opt_part : access private_opt_model.private_opt_nonterminal'Class;
      unit_part : access unit_model.unit_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access comp_unit_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end comp_unit_model;
