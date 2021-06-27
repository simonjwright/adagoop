-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with except_handler_part_opt_model;
limited with statement_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package handled_stmt_s_model is
   type handled_stmt_s_nonterminal is new Parseable with record
      statement_s_part : access statement_s_model.statement_s_nonterminal'Class;
      except_handler_part_opt_part : access except_handler_part_opt_model.except_handler_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access handled_stmt_s_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end handled_stmt_s_model;
