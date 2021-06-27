-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_constraint_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package range_spec_model is
   type range_spec_nonterminal is new Parseable with record
      range_constraint_part : access range_constraint_model.range_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access range_spec_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end range_spec_model;
