-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with parenthesized_primary_model;
limited with qualified_model;
limited with allocator_model;
limited with name_model;
limited with literal_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package primary_model is
   type primary_nonterminal is abstract new Parseable with null record;
   type primary_nonterminal1 is new primary_nonterminal with record
      literal_part : access literal_model.literal_nonterminal'Class;
   end record;
   procedure Acceptor(This : access primary_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type primary_nonterminal2 is new primary_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access primary_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type primary_nonterminal3 is new primary_nonterminal with record
      allocator_part : access allocator_model.allocator_nonterminal'Class;
   end record;
   procedure Acceptor(This : access primary_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type primary_nonterminal4 is new primary_nonterminal with record
      qualified_part : access qualified_model.qualified_nonterminal'Class;
   end record;
   procedure Acceptor(This : access primary_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type primary_nonterminal5 is new primary_nonterminal with record
      parenthesized_primary_part : access parenthesized_primary_model.parenthesized_primary_nonterminal'Class;
   end record;
   procedure Acceptor(This : access primary_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end primary_model;
