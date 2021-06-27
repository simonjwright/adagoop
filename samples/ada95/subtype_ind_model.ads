-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with constraint_model;
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package subtype_ind_model is
   type subtype_ind_nonterminal is abstract new Parseable with null record;
   type subtype_ind_nonterminal1 is new subtype_ind_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
      constraint_part : access constraint_model.constraint_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subtype_ind_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type subtype_ind_nonterminal2 is new subtype_ind_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subtype_ind_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end subtype_ind_model;
