-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_formal_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package generic_formal_part_model is
   type generic_formal_part_nonterminal is abstract new Parseable with null record;
   type generic_formal_part_nonterminal1 is new generic_formal_part_nonterminal with record
      GENERIC_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_formal_part_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_formal_part_nonterminal2 is new generic_formal_part_nonterminal with record
      generic_formal_part_part : access generic_formal_part_model.generic_formal_part_nonterminal'Class;
      generic_formal_part : access generic_formal_model.generic_formal_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_formal_part_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end generic_formal_part_model;
