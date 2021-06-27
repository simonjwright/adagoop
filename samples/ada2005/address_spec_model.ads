-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with mark_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package address_spec_model is
   type address_spec_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : access mark_model.mark_nonterminal'Class;
      USE_part : Parseable_Token_Ptr;
      AT_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access address_spec_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end address_spec_model;
