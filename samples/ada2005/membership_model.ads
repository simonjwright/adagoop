-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package membership_model is
   type membership_nonterminal is abstract new Parseable with null record;
   type membership_nonterminal1 is new membership_nonterminal with record
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access membership_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type membership_nonterminal2 is new membership_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access membership_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end membership_model;
