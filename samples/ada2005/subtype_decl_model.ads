-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subtype_ind_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subtype_decl_model is
   type subtype_decl_nonterminal is abstract new Parseable with null record;
   type subtype_decl_nonterminal1 is new subtype_decl_nonterminal with record
      SUBTYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IS_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subtype_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subtype_decl_nonterminal2 is new subtype_decl_nonterminal with record
      SUBTYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IS_part : Parseable_Token_Ptr;
      NOT_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subtype_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subtype_decl_model;
