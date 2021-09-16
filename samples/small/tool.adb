with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Test_Parser;
with Test_Model;
with DFS_Print;
procedure Tool is
   type DFS_Access is access all DFS_Print.DFS'Class;
   Parse_Tree : Test_Model.Parseable_Ptr;
   Visitor    : DFS_Access := new DFS_Print.DFS;
begin
   if Argument_Count /= 1 then
      Put_Line ("usage: tool filename");
      return;
   end if;
   Test_Parser.Run (Argument (1));
   Parse_Tree := Test_Parser.Get_Parse_Tree;
   Parse_Tree.Acceptor (Visitor);
end Tool;
