-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with designator_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package id_opt_model is
   type id_opt_nonterminal is abstract new Parseable with null record;
   type id_opt_nonterminal1 is new id_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access id_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type id_opt_nonterminal2 is new id_opt_nonterminal with record
      designator_part : access designator_model.designator_nonterminal'Class;
   end record;
   procedure Acceptor(This : access id_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end id_opt_model;
