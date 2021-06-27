-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with use_clause_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package use_clause_opt_model is
   type use_clause_opt_nonterminal is abstract new Parseable with null record;
   type use_clause_opt_nonterminal1 is new use_clause_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access use_clause_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type use_clause_opt_nonterminal2 is new use_clause_opt_nonterminal with record
      use_clause_opt_part : access use_clause_opt_model.use_clause_opt_nonterminal'Class;
      use_clause_part : access use_clause_model.use_clause_nonterminal'Class;
   end record;
   procedure Acceptor(This : access use_clause_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end use_clause_opt_model;
