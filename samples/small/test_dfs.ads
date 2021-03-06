-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with C_Model;
with B_Model;
with A_Model;
limited with test_Model;
with test_Visitor_Interface;
use test_Visitor_Interface;
package test_DFS is
   type Root is tagged null record;
   type DFS is new Root and 
      test_Visitor_Interface.Visit_test_Interface with null record;
   overriding procedure Before_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class);
   overriding procedure After_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class);
   overriding procedure Visit_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class);
   overriding procedure Before_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class);
   overriding procedure After_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class);
   overriding procedure Visit_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class);
   overriding procedure Before_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class);
   overriding procedure After_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class);
   overriding procedure Visit_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class);
   overriding procedure Before_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class);
   overriding procedure After_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class);
   overriding procedure Visit_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class);
   overriding procedure Before_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class);
   overriding procedure After_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class);
   overriding procedure Visit_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class);
end test_DFS;
