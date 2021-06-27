-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with def_id_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package def_id_s_model is
   type def_id_s_nonterminal is abstract new Parseable with null record;
   type def_id_s_nonterminal1 is new def_id_s_nonterminal with record
      def_id_part : access def_id_model.def_id_nonterminal'Class;
   end record;
   procedure Acceptor(This : access def_id_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type def_id_s_nonterminal2 is new def_id_s_nonterminal with record
      def_id_s_part : access def_id_s_model.def_id_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      def_id_part : access def_id_model.def_id_nonterminal'Class;
   end record;
   procedure Acceptor(This : access def_id_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end def_id_s_model;
