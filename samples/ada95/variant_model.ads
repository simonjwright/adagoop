-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with comp_list_model;
limited with pragma_s_model;
limited with choice_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package variant_model is
   type variant_nonterminal is new Parseable with record
      WHEN_part : Parseable_Token_Ptr;
      choice_s_part : access choice_s_model.choice_s_nonterminal'Class;
      ARROW_part : Parseable_Token_Ptr;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      comp_list_part : access comp_list_model.comp_list_nonterminal'Class;
   end record;
   procedure Acceptor(This : access variant_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end variant_model;
