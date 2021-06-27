-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package c_id_opt_model is
   type c_id_opt_nonterminal is abstract new Parseable with null record;
   type c_id_opt_nonterminal1 is new c_id_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access c_id_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type c_id_opt_nonterminal2 is new c_id_opt_nonterminal with record
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access c_id_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end c_id_opt_model;
