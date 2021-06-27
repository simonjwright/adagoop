-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_inst_model;
limited with compound_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_pkg_inst_model is
   type generic_pkg_inst_nonterminal is new Parseable with record
      PACKAGE_part : Parseable_Token_Ptr;
      compound_name_part : access compound_name_model.compound_name_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : access generic_inst_model.generic_inst_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_pkg_inst_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_pkg_inst_model;
