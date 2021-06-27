-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with simple_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package compound_name_model is
   type compound_name_nonterminal is abstract new Parseable with null record;
   type compound_name_nonterminal1 is new compound_name_nonterminal with record
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_name_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type compound_name_nonterminal2 is new compound_name_nonterminal with record
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      DOT_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access compound_name_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end compound_name_model;
