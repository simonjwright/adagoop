
with test_Model;
use test_Model;
package test_Parser is
   procedure Run(Filename : in String);
   function Get_Parse_Tree return Parseable_Ptr;
end test_Parser;
