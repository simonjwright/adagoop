-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_spec_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package range_spec_opt_model is
   type range_spec_opt_nonterminal is abstract new Parseable with null record;
   type range_spec_opt_nonterminal1 is new range_spec_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access range_spec_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type range_spec_opt_nonterminal2 is new range_spec_opt_nonterminal with record
      range_spec_part : access range_spec_model.range_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access range_spec_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end range_spec_opt_model;
