-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package tagged_opt_model is
   type tagged_opt_nonterminal is abstract new Parseable with null record;
   type tagged_opt_nonterminal1 is new tagged_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access tagged_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type tagged_opt_nonterminal2 is new tagged_opt_nonterminal with record
      TAGGED_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access tagged_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type tagged_opt_nonterminal3 is new tagged_opt_nonterminal with record
      abstract_part : Parseable_Token_Ptr;
      TAGGED_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access tagged_opt_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end tagged_opt_model;
