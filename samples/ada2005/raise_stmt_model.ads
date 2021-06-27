-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with CHAR_STRING_model;
limited with name_model;
limited with name_opt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package raise_stmt_model is
   type raise_stmt_nonterminal is abstract new Parseable with null record;
   type raise_stmt_nonterminal1 is new raise_stmt_nonterminal with record
      RAISE_part : Parseable_Token_Ptr;
      name_opt_part : access name_opt_model.name_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access raise_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type raise_stmt_nonterminal2 is new raise_stmt_nonterminal with record
      RAISE_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      WITH_part : Parseable_Token_Ptr;
      CHAR_STRING_part : access CHAR_STRING_model.CHAR_STRING_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access raise_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end raise_stmt_model;
