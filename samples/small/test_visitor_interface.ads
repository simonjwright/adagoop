-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with C_Model;
limited with B_Model;
limited with A_Model;
limited with test_Model;
package test_Visitor_Interface is
   type Visit_test_Interface is interface;

   procedure Visit_Parseable_Token(
      I : access Visit_test_Interface;
      T : access test_Model.Parseable_Token'Class) is null;

   procedure Before_A_nonterminal1(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal1'Class) is null;
   procedure Visit_A_nonterminal1(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal1'Class) is abstract;
   procedure After_A_nonterminal1(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal1'Class) is null;

   procedure Before_A_nonterminal2(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal2'Class) is null;
   procedure Visit_A_nonterminal2(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal2'Class) is abstract;
   procedure After_A_nonterminal2(
      I : access Visit_test_Interface;
      N : access A_Model.A_nonterminal2'Class) is null;

   procedure Before_B_nonterminal1(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal1'Class) is null;
   procedure Visit_B_nonterminal1(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal1'Class) is abstract;
   procedure After_B_nonterminal1(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal1'Class) is null;

   procedure Before_B_nonterminal2(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal2'Class) is null;
   procedure Visit_B_nonterminal2(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal2'Class) is abstract;
   procedure After_B_nonterminal2(
      I : access Visit_test_Interface;
      N : access B_Model.B_nonterminal2'Class) is null;

   procedure Before_C_nonterminal(
      I : access Visit_test_Interface;
      N : access C_Model.C_nonterminal'Class) is null;
   procedure Visit_C_nonterminal(
      I : access Visit_test_Interface;
      N : access C_Model.C_nonterminal'Class) is abstract;
   procedure After_C_nonterminal(
      I : access Visit_test_Interface;
      N : access C_Model.C_nonterminal'Class) is null;

end test_Visitor_Interface;
