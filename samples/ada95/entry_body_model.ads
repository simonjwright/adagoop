-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrete_range_model;
limited with iter_part_model;
limited with entry_body_part_model;
limited with condition_model;
limited with formal_part_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package entry_body_model is
   type entry_body_nonterminal is abstract new Parseable with null record;
   type entry_body_nonterminal1 is new entry_body_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      WHEN_part : Parseable_Token_Ptr;
      condition_part : access condition_model.condition_nonterminal'Class;
      entry_body_part_part : access entry_body_part_model.entry_body_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_body_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type entry_body_nonterminal2 is new entry_body_nonterminal with record
      ENTRY_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      iter_part_part : access iter_part_model.iter_part_nonterminal'Class;
      discrete_range_part : access discrete_range_model.discrete_range_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
      WHEN_part : Parseable_Token_Ptr;
      condition_part : access condition_model.condition_nonterminal'Class;
      entry_body_part_part : access entry_body_part_model.entry_body_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_body_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end entry_body_model;
