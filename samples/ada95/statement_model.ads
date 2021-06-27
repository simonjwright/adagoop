-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with label_model;
limited with unlabeled_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package statement_model is
   type statement_nonterminal is abstract new Parseable with null record;
   type statement_nonterminal1 is new statement_nonterminal with record
      unlabeled_part : access unlabeled_model.unlabeled_nonterminal'Class;
   end record;
   procedure Acceptor(This : access statement_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type statement_nonterminal2 is new statement_nonterminal with record
      label_part : access label_model.label_nonterminal'Class;
      statement_part : access statement_model.statement_nonterminal'Class;
   end record;
   procedure Acceptor(This : access statement_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end statement_model;
