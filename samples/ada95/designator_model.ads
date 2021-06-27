-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with char_string_model;
limited with compound_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package designator_model is
   type designator_nonterminal is abstract new Parseable with null record;
   type designator_nonterminal1 is new designator_nonterminal with record
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access designator_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type designator_nonterminal2 is new designator_nonterminal with record
      char_string_part : access char_string_model.char_string_nonterminal'Class;
   end record;
   procedure Acceptor(This : access designator_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end designator_model;
