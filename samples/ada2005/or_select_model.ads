-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with guarded_select_alt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package or_select_model is
   type or_select_nonterminal is abstract new Parseable with null record;
   type or_select_nonterminal1 is new or_select_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access or_select_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type or_select_nonterminal2 is new or_select_nonterminal with record
      or_select_part : access or_select_model.or_select_nonterminal'Class;
      OR_part : Parseable_Token_Ptr;
      guarded_select_alt_part : access guarded_select_alt_model.guarded_select_alt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access or_select_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end or_select_model;
