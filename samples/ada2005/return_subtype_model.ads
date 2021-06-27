-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with access_type_model;
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package return_subtype_model is
   type return_subtype_nonterminal is abstract new Parseable with null record;
   type return_subtype_nonterminal1 is new return_subtype_nonterminal with record
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access return_subtype_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type return_subtype_nonterminal2 is new return_subtype_nonterminal with record
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access return_subtype_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end return_subtype_model;
