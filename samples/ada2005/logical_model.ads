-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package logical_model is
   type logical_nonterminal is abstract new Parseable with null record;
   type logical_nonterminal1 is new logical_nonterminal with record
      and_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access logical_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type logical_nonterminal2 is new logical_nonterminal with record
      OR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access logical_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type logical_nonterminal3 is new logical_nonterminal with record
      XOR_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access logical_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type logical_nonterminal4 is new logical_nonterminal with record
      and_part : Parseable_Token_Ptr;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access logical_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type logical_nonterminal5 is new logical_nonterminal with record
      OR_part : Parseable_Token_Ptr;
      ELSE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access logical_nonterminal5;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end logical_model;
