-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package adding_model is
   type adding_nonterminal is abstract new Parseable with null record;
   type adding_nonterminal1 is new adding_nonterminal with record
      PLUS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access adding_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type adding_nonterminal2 is new adding_nonterminal with record
      MINUS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access adding_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type adding_nonterminal3 is new adding_nonterminal with record
      BIT_AND_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access adding_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end adding_model;
