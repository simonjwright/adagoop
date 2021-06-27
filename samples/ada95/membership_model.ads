-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package membership_model is
   type membership_nonterminal is abstract new Parseable with null record;
   type membership_nonterminal1 is new membership_nonterminal with record
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access membership_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type membership_nonterminal2 is new membership_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access membership_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end membership_model;
