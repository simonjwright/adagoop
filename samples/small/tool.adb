with Ada.Command_Line;
use Ada.Command_Line;
with ada.text_io;
use ada.text_io;
with test_parser;
with test_model;
with DFS_Print;
with a_model;
procedure tool is
   type DFS_Access is access all DFS_Print.DFS'Class;
   Parse_Tree : test_model.parseable_ptr;
   Visitor : DFS_Access := new DFS_Print.DFS;
begin
   if argument_count /= 1 then
      put_line("usage: tool filename");
     return;
   end if;
   test_parser.run(argument(1));
   parse_tree := test_parser.get_parse_tree;
   parse_tree.Acceptor(Visitor);
end tool;