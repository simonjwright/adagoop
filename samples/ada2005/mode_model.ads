-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package mode_model is
   type mode_nonterminal is abstract new Parseable with null record;
   type mode_nonterminal1 is new mode_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access mode_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type mode_nonterminal2 is new mode_nonterminal with record
      IN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access mode_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type mode_nonterminal3 is new mode_nonterminal with record
      OUT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access mode_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type mode_nonterminal4 is new mode_nonterminal with record
      IN_part : Parseable_Token_Ptr;
      OUT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access mode_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end mode_model;
