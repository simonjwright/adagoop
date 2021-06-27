-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with handled_stmt_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package opt_do_block_model is
   type opt_do_block_nonterminal is abstract new Parseable with null record;
   type opt_do_block_nonterminal1 is new opt_do_block_nonterminal with record
      DO_part : Parseable_Token_Ptr;
      handled_stmt_s_part : access handled_stmt_s_model.handled_stmt_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      RETURN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access opt_do_block_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type opt_do_block_nonterminal2 is new opt_do_block_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access opt_do_block_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end opt_do_block_model;
