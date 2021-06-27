with Ada.Command_Line;
use Ada.Command_Line;
with ada.text_io;
use ada.text_io;
with ada05_parser;
with ada05_model;
--with DFS_Print;
procedure tool is
--   type DFS_Access is access all DFS_Print.DFS'Class;
   Parse_Tree : ada05_model.parseable_ptr;
--   Visitor : DFS_Access := new DFS_Print.DFS;
begin
   if argument_count /= 1 then
      put_line("usage: tool filename");
     return;
   end if;
   ada05_parser.run(argument(1));
   parse_tree := ada05_parser.get_parse_tree;
--   parse_tree.Acceptor(Visitor);
end tool;