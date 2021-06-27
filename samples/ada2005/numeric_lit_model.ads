-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package NUMERIC_LIT_model is
   type NUMERIC_LIT_nonterminal is abstract new Parseable with null record;
   type NUMERIC_LIT_nonterminal1 is new NUMERIC_LIT_nonterminal with record
      DECIMAL_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NUMERIC_LIT_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type NUMERIC_LIT_nonterminal2 is new NUMERIC_LIT_nonterminal with record
      BASED_LITERAL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access NUMERIC_LIT_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end NUMERIC_LIT_model;
