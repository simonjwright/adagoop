-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package generic_inst_model is
   type generic_inst_nonterminal is new Parseable with record
      NEW_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_inst_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end generic_inst_model;
