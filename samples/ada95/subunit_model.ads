-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subunit_body_model;
limited with compound_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package subunit_model is
   type subunit_nonterminal is new Parseable with record
      SEPARATE_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
      subunit_body_part : access subunit_body_model.subunit_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subunit_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end subunit_model;
