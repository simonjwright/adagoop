-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package limited_opt_model is
   type limited_opt_nonterminal is abstract new Parseable with null record;
   type limited_opt_nonterminal1 is new limited_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access limited_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type limited_opt_nonterminal2 is new limited_opt_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access limited_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end limited_opt_model;
