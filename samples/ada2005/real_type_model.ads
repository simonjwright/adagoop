-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with fixed_type_model;
limited with float_type_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package real_type_model is
   type real_type_nonterminal is abstract new Parseable with null record;
   type real_type_nonterminal1 is new real_type_nonterminal with record
      float_type_part : access float_type_model.float_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access real_type_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type real_type_nonterminal2 is new real_type_nonterminal with record
      fixed_type_part : access fixed_type_model.fixed_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access real_type_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end real_type_model;
