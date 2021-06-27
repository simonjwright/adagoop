-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with char_lit_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package used_char_model is
   type used_char_nonterminal is new Parseable with record
      char_lit_part : access char_lit_model.char_lit_nonterminal'Class;
   end record;
   procedure Acceptor(This : access used_char_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end used_char_model;
