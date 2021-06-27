-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with entry_decl_model;
limited with pragma_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package entry_decl_s_model is
   type entry_decl_s_nonterminal is abstract new Parseable with null record;
   type entry_decl_s_nonterminal1 is new entry_decl_s_nonterminal with record
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_decl_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type entry_decl_s_nonterminal2 is new entry_decl_s_nonterminal with record
      entry_decl_s_part : access entry_decl_s_model.entry_decl_s_nonterminal'Class;
      entry_decl_part : access entry_decl_model.entry_decl_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access entry_decl_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end entry_decl_s_model;
