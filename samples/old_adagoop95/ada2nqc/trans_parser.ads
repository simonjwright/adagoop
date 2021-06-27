
with trans_Model;
use trans_Model;
package trans_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end trans_Parser;
