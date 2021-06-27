
with ada05_Model;
use ada05_Model;
package ada05_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end ada05_Parser;
