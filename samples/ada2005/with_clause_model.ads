-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with c_name_list_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package with_clause_model is
   type with_clause_nonterminal is abstract new Parseable with null record;
   type with_clause_nonterminal1 is new with_clause_nonterminal with record
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access with_clause_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type with_clause_nonterminal2 is new with_clause_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access with_clause_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type with_clause_nonterminal3 is new with_clause_nonterminal with record
      LIMITED_part : Parseable_Token_Ptr;
      PRIVATE_part : Parseable_Token_Ptr;
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access with_clause_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type with_clause_nonterminal4 is new with_clause_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      WITH_part : Parseable_Token_Ptr;
      c_name_list_part : access c_name_list_model.c_name_list_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access with_clause_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end with_clause_model;
