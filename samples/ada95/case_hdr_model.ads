-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package case_hdr_model is
   type case_hdr_nonterminal is new Parseable with record
      CASE_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access case_hdr_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end case_hdr_model;
