-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package opt_aliased_model is
   type opt_aliased_nonterminal is abstract new Parseable with null record;
   type opt_aliased_nonterminal1 is new opt_aliased_nonterminal with record
      ALIASED_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access opt_aliased_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type opt_aliased_nonterminal2 is new opt_aliased_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access opt_aliased_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end opt_aliased_model;
