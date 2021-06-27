-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body decl_part_model is
   procedure Acceptor(This : access decl_part_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_decl_part_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access decl_part_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_decl_part_nonterminal2(This);
   end Acceptor;

end decl_part_model;
