-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with qualified_model;
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package allocator_model is
   type allocator_nonterminal is abstract new Parseable with null record;
   type allocator_nonterminal1 is new allocator_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access allocator_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type allocator_nonterminal2 is new allocator_nonterminal with record
      NEW_part : Parseable_Token_Ptr;
      qualified_part : access qualified_model.qualified_nonterminal'Class;
   end record;
   procedure Acceptor(This : access allocator_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end allocator_model;
