-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_s_model;
limited with pragma_sym_model;
limited with comp_unit_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package compilation_model is
   type compilation_nonterminal is abstract new Parseable with null record;
   type compilation_nonterminal1 is new compilation_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access compilation_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compilation_nonterminal2 is new compilation_nonterminal with record
      compilation_part : access compilation_model.compilation_nonterminal'Class;
      comp_unit_part : access comp_unit_model.comp_unit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compilation_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compilation_nonterminal3 is new compilation_nonterminal with record
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compilation_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end compilation_model;
