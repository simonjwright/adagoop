-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
limited with mark_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package attrib_def_model is
   type attrib_def_nonterminal is new Parseable with record
      FOR_part : Parseable_Token_Ptr;
      mark_part : access mark_model.mark_nonterminal'Class;
      USE_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access attrib_def_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end attrib_def_model;
