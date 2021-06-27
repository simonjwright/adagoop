-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with variant_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package variant_s_model is
   type variant_s_nonterminal is abstract new Parseable with null record;
   type variant_s_nonterminal1 is new variant_s_nonterminal with record
      variant_part : access variant_model.variant_nonterminal'Class;
   end record;
   procedure Acceptor(This : access variant_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type variant_s_nonterminal2 is new variant_s_nonterminal with record
      variant_s_part : access variant_s_model.variant_s_nonterminal'Class;
      variant_part : access variant_model.variant_nonterminal'Class;
   end record;
   procedure Acceptor(This : access variant_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end variant_s_model;
