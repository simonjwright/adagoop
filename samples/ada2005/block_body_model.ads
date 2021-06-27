-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with handled_stmt_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package block_body_model is
   type block_body_nonterminal is new Parseable with record
      BEGIN_part : Parseable_Token_Ptr;
      handled_stmt_s_part : access handled_stmt_s_model.handled_stmt_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access block_body_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end block_body_model;
