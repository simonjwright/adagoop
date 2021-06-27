-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package private_opt_model is
   type private_opt_nonterminal is abstract new Parseable with null record;
   type private_opt_nonterminal1 is new private_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access private_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type private_opt_nonterminal2 is new private_opt_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end private_opt_model;
