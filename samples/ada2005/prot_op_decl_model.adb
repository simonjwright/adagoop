-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body prot_op_decl_model is
   procedure Acceptor(This : access prot_op_decl_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_prot_op_decl_nonterminal1(This);
   end Acceptor;

   procedure Acceptor(This : access prot_op_decl_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_prot_op_decl_nonterminal2(This);
   end Acceptor;

   procedure Acceptor(This : access prot_op_decl_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_prot_op_decl_nonterminal3(This);
   end Acceptor;

   procedure Acceptor(This : access prot_op_decl_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_prot_op_decl_nonterminal4(This);
   end Acceptor;

end prot_op_decl_model;
