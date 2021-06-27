-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with enum_id_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package enumeration_type_model is
   type enumeration_type_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      enum_id_s_part : access enum_id_s_model.enum_id_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access enumeration_type_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end enumeration_type_model;
