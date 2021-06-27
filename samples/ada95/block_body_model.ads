-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with handled_stmt_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package block_body_model is
   type block_body_nonterminal is new Parseable with record
      BEGIN_part : Parseable_Token_Ptr;
      handled_stmt_s_part : access handled_stmt_s_model.handled_stmt_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access block_body_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end block_body_model;
