-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with Ada.Text_IO;
package body test_DFS is
   Visit_Depth : Natural := 0;
   procedure Log_Visit (Cla : String; Entering : Boolean) is
   begin
      if Entering then
         for J in 1 .. Visit_Depth loop 
            Ada.Text_IO.Put ("  ");
         end loop;
         Ada.Text_IO.Put_Line ("visiting " & Cla);
         Visit_Depth := Visit_Depth + 1;
      else
         Visit_Depth := Visit_Depth - 1;
         for J in 1 .. Visit_Depth loop 
            Ada.Text_IO.Put ("  ");
         end loop;
         Ada.Text_IO.Put_Line ("leaving " & Cla);
      end if;
   end Log_Visit;
   procedure Before_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class) is
   begin
      null;
   end Before_A_nonterminal1;
   procedure After_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class) is
   begin
      null;
   end After_A_nonterminal1;
   procedure Visit_A_nonterminal1(
         I : access DFS;
         N : access A_Model.A_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("A_nonterminal1", Entering => True));
      I_Classwide.Before_A_nonterminal1(N);
      N.A_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.B_part.Acceptor(I);
      I_Classwide.After_A_nonterminal1(N);
      pragma Debug (Log_Visit ("A_nonterminal1", Entering => False));
   end Visit_A_nonterminal1;
   procedure Before_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class) is
   begin
      null;
   end Before_A_nonterminal2;
   procedure After_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class) is
   begin
      null;
   end After_A_nonterminal2;
   procedure Visit_A_nonterminal2(
         I : access DFS;
         N : access A_Model.A_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("A_nonterminal2", Entering => True));
      I_Classwide.Before_A_nonterminal2(N);
      N.B_part.Acceptor(I);
      I_Classwide.After_A_nonterminal2(N);
      pragma Debug (Log_Visit ("A_nonterminal2", Entering => False));
   end Visit_A_nonterminal2;
   procedure Before_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class) is
   begin
      null;
   end Before_B_nonterminal1;
   procedure After_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class) is
   begin
      null;
   end After_B_nonterminal1;
   procedure Visit_B_nonterminal1(
         I : access DFS;
         N : access B_Model.B_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("B_nonterminal1", Entering => True));
      I_Classwide.Before_B_nonterminal1(N);
      N.B_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OPEN_part);
      N.C_part.Acceptor(I);
      I_Classwide.After_B_nonterminal1(N);
      pragma Debug (Log_Visit ("B_nonterminal1", Entering => False));
   end Visit_B_nonterminal1;
   procedure Before_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class) is
   begin
      null;
   end Before_B_nonterminal2;
   procedure After_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class) is
   begin
      null;
   end After_B_nonterminal2;
   procedure Visit_B_nonterminal2(
         I : access DFS;
         N : access B_Model.B_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("B_nonterminal2", Entering => True));
      I_Classwide.Before_B_nonterminal2(N);
      N.C_part.Acceptor(I);
      I_Classwide.After_B_nonterminal2(N);
      pragma Debug (Log_Visit ("B_nonterminal2", Entering => False));
   end Visit_B_nonterminal2;
   procedure Before_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class) is
   begin
      null;
   end Before_C_nonterminal;
   procedure After_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class) is
   begin
      null;
   end After_C_nonterminal;
   procedure Visit_C_nonterminal(
         I : access DFS;
         N : access C_Model.C_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      pragma Debug (Log_Visit ("C_nonterminal", Entering => True));
      I_Classwide.Before_C_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.WRITE_part);
      I_Classwide.After_C_nonterminal(N);
      pragma Debug (Log_Visit ("C_nonterminal", Entering => False));
   end Visit_C_nonterminal;
end test_DFS;
