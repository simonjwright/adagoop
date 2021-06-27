-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_body_model;
limited with task_body_model;
limited with pkg_body_model;
limited with subprog_body_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package body_nt_model is
   type body_nt_nonterminal is abstract new Parseable with null record;
   type body_nt_nonterminal1 is new body_nt_nonterminal with record
      subprog_body_part : access subprog_body_model.subprog_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access body_nt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_nt_nonterminal2 is new body_nt_nonterminal with record
      pkg_body_part : access pkg_body_model.pkg_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access body_nt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_nt_nonterminal3 is new body_nt_nonterminal with record
      task_body_part : access task_body_model.task_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access body_nt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type body_nt_nonterminal4 is new body_nt_nonterminal with record
      prot_body_part : access prot_body_model.prot_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access body_nt_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end body_nt_model;
