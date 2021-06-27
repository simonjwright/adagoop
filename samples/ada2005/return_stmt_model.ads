-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with opt_do_block_model;
limited with opt_assign_model;
limited with return_subtype_model;
limited with opt_aliased_model;
limited with name_model;
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package return_stmt_model is
   type return_stmt_nonterminal is abstract new Parseable with null record;
   type return_stmt_nonterminal1 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access return_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type return_stmt_nonterminal2 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access return_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type return_stmt_nonterminal3 is new return_stmt_nonterminal with record
      RETURN_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
      COLON_part : Parseable_Token_Ptr;
      opt_aliased_part : access opt_aliased_model.opt_aliased_nonterminal'Class;
      return_subtype_part : access return_subtype_model.return_subtype_nonterminal'Class;
      opt_assign_part : access opt_assign_model.opt_assign_nonterminal'Class;
      opt_do_block_part : access opt_do_block_model.opt_do_block_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access return_stmt_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end return_stmt_model;
