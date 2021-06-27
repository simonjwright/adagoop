-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package name_opt_model is
   type name_opt_nonterminal is abstract new Parseable with null record;
   type name_opt_nonterminal1 is new name_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access name_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type name_opt_nonterminal2 is new name_opt_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end name_opt_model;
