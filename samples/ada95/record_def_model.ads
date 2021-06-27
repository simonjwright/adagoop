-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with comp_list_model;
limited with pragma_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package record_def_model is
   type record_def_nonterminal is abstract new Parseable with null record;
   type record_def_nonterminal1 is new record_def_nonterminal with record
      RECORD_part1 : Parseable_Token_Ptr;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      comp_list_part : access comp_list_model.comp_list_nonterminal'Class;
      END_part : Parseable_Token_Ptr;
      RECORD_part2 : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access record_def_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type record_def_nonterminal2 is new record_def_nonterminal with record
      NULL_part : Parseable_Token_Ptr;
      RECORD_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access record_def_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end record_def_model;
