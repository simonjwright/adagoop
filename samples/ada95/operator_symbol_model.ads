-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with char_string_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package operator_symbol_model is
   type operator_symbol_nonterminal is new Parseable with record
      char_string_part : access char_string_model.char_string_nonterminal'Class;
   end record;
   procedure Acceptor(This : access operator_symbol_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end operator_symbol_model;
