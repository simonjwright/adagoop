-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_pkg_inst_model;
limited with pkg_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package pkg_decl_model is
   type pkg_decl_nonterminal is abstract new Parseable with null record;
   type pkg_decl_nonterminal1 is new pkg_decl_nonterminal with record
      pkg_spec_part : access pkg_spec_model.pkg_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access pkg_decl_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type pkg_decl_nonterminal2 is new pkg_decl_nonterminal with record
      generic_pkg_inst_part : access generic_pkg_inst_model.generic_pkg_inst_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access pkg_decl_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end pkg_decl_model;
