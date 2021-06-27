-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with alternative_s_model;
limited with pragma_s_model;
limited with case_hdr_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package case_stmt_model is
   type case_stmt_nonterminal is new Parseable with record
      case_hdr_part : access case_hdr_model.case_hdr_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      alternative_s_part : access alternative_s_model.alternative_s_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      CASE_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access case_stmt_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end case_stmt_model;
