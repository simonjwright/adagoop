-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package multiplying_model is
   type multiplying_nonterminal is abstract new Parseable with null record;
   type multiplying_nonterminal1 is new multiplying_nonterminal with record
      star_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access multiplying_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type multiplying_nonterminal2 is new multiplying_nonterminal with record
      SLASH_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access multiplying_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type multiplying_nonterminal3 is new multiplying_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access multiplying_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type multiplying_nonterminal4 is new multiplying_nonterminal with record
      REM_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access multiplying_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end multiplying_model;
