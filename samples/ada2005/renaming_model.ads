-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package renaming_model is
   type renaming_nonterminal is new Parseable with record
      RENAMES_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access renaming_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end renaming_model;
