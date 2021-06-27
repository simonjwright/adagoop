-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package raise_stmt_model is
   type raise_stmt_nonterminal is new Parseable with record
      RAISE_part : Parseable_Token_Ptr;
      name_opt_part : access name_opt_model.name_opt_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access raise_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end raise_stmt_model;
