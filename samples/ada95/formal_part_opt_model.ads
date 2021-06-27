-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with formal_part_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package formal_part_opt_model is
   type formal_part_opt_nonterminal is abstract new Parseable with null record;
   type formal_part_opt_nonterminal1 is new formal_part_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access formal_part_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type formal_part_opt_nonterminal2 is new formal_part_opt_nonterminal with record
      formal_part_part : access formal_part_model.formal_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access formal_part_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end formal_part_opt_model;
