-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with c_name_list_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package with_clause_model is
   type with_clause_nonterminal is new Parseable with record
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access with_clause_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end with_clause_model;
