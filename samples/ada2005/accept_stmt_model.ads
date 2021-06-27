-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with handled_stmt_s_model;
limited with accept_hdr_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package accept_stmt_model is
   type accept_stmt_nonterminal is abstract new Parseable with null record;
   type accept_stmt_nonterminal1 is new accept_stmt_nonterminal with record
      accept_hdr_part : access accept_hdr_model.accept_hdr_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access accept_stmt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type accept_stmt_nonterminal2 is new accept_stmt_nonterminal with record
      accept_hdr_part : access accept_hdr_model.accept_hdr_nonterminal'Class;
      DO_part : Parseable_Token_Ptr;
      handled_stmt_s_part : access handled_stmt_s_model.handled_stmt_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access accept_stmt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end accept_stmt_model;
