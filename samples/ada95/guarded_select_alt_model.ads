-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with condition_model;
limited with select_alt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package guarded_select_alt_model is
   type guarded_select_alt_nonterminal is abstract new Parseable with null record;
   type guarded_select_alt_nonterminal1 is new guarded_select_alt_nonterminal with record
      select_alt_part : access select_alt_model.select_alt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access guarded_select_alt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type guarded_select_alt_nonterminal2 is new guarded_select_alt_nonterminal with record
      WHEN_part : Parseable_Token_Ptr;
      condition_part : access condition_model.condition_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      select_alt_part : access select_alt_model.select_alt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access guarded_select_alt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end guarded_select_alt_model;
