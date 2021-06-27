-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package short_circuit_model is
   type short_circuit_nonterminal is abstract new Parseable with null record;
   type short_circuit_nonterminal1 is new short_circuit_nonterminal with record
      and_part : Parseable_Token_Ptr;
      THEN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access short_circuit_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type short_circuit_nonterminal2 is new short_circuit_nonterminal with record
      OR_part : Parseable_Token_Ptr;
      ELSE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access short_circuit_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end short_circuit_model;
