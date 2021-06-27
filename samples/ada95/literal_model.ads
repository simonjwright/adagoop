-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with used_char_model;
limited with numeric_lit_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package literal_model is
   type literal_nonterminal is abstract new Parseable with null record;
   type literal_nonterminal1 is new literal_nonterminal with record
      numeric_lit_part : access numeric_lit_model.numeric_lit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access literal_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type literal_nonterminal2 is new literal_nonterminal with record
      used_char_part : access used_char_model.used_char_nonterminal'Class;
   end record;
   procedure Acceptor(This : access literal_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type literal_nonterminal3 is new literal_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access literal_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end literal_model;
