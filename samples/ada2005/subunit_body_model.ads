-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_body_model;
limited with task_body_model;
limited with pkg_body_model;
limited with subprog_body_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subunit_body_model is
   type subunit_body_nonterminal is abstract new Parseable with null record;
   type subunit_body_nonterminal1 is new subunit_body_nonterminal with record
      subprog_body_part : access subprog_body_model.subprog_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subunit_body_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subunit_body_nonterminal2 is new subunit_body_nonterminal with record
      pkg_body_part : access pkg_body_model.pkg_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subunit_body_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subunit_body_nonterminal3 is new subunit_body_nonterminal with record
      task_body_part : access task_body_model.task_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subunit_body_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subunit_body_nonterminal4 is new subunit_body_nonterminal with record
      prot_body_part : access prot_body_model.prot_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subunit_body_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subunit_body_model;
