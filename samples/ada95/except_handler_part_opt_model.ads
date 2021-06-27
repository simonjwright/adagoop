-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with except_handler_part_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package except_handler_part_opt_model is
   type except_handler_part_opt_nonterminal is abstract new Parseable with null record;
   type except_handler_part_opt_nonterminal1 is new except_handler_part_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access except_handler_part_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type except_handler_part_opt_nonterminal2 is new except_handler_part_opt_nonterminal with record
      except_handler_part_part : access except_handler_part_model.except_handler_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access except_handler_part_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end except_handler_part_opt_model;
