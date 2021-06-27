-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_sym_model;
limited with compound_stmt_model;
limited with simple_stmt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package unlabeled_model is
   type unlabeled_nonterminal is abstract new Parseable with null record;
   type unlabeled_nonterminal1 is new unlabeled_nonterminal with record
      simple_stmt_part : access simple_stmt_model.simple_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unlabeled_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unlabeled_nonterminal2 is new unlabeled_nonterminal with record
      compound_stmt_part : access compound_stmt_model.compound_stmt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unlabeled_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type unlabeled_nonterminal3 is new unlabeled_nonterminal with record
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unlabeled_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end unlabeled_model;
