-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with char_lit_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package enum_id_model is
   type enum_id_nonterminal is abstract new Parseable with null record;
   type enum_id_nonterminal1 is new enum_id_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access enum_id_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type enum_id_nonterminal2 is new enum_id_nonterminal with record
      char_lit_part : access char_lit_model.char_lit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access enum_id_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end enum_id_model;
