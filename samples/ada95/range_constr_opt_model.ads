-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_constraint_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package range_constr_opt_model is
   type range_constr_opt_nonterminal is abstract new Parseable with null record;
   type range_constr_opt_nonterminal1 is new range_constr_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access range_constr_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type range_constr_opt_nonterminal2 is new range_constr_opt_nonterminal with record
      range_constraint_part : access range_constraint_model.range_constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access range_constr_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end range_constr_opt_model;
