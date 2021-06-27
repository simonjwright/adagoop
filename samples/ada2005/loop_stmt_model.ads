-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with id_opt_model;
limited with basic_loop_model;
limited with iteration_model;
limited with label_opt_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package loop_stmt_model is
   type loop_stmt_nonterminal is new Parseable with record
      label_opt_part : access label_opt_model.label_opt_nonterminal'Class;
      iteration_part : access iteration_model.iteration_nonterminal'Class;
      basic_loop_part : access basic_loop_model.basic_loop_nonterminal'Class;
      id_opt_part : access id_opt_model.id_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access loop_stmt_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end loop_stmt_model;
