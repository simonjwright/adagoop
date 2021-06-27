-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subtype_ind_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package subtype_decl_model is
   type subtype_decl_nonterminal is new Parseable with record
      SUBTYPE_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      IS_part : Parseable_Token_Ptr;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subtype_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end subtype_decl_model;
