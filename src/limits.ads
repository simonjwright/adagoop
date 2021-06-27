--------------------------------------------------------------
-- Ada Generator for Object-Oriented Parsers (AdaGOOP)
--
-- PACKAGE Limits
-- constant limits of program
--
-- By: Martin C. Carlisle
--     United States Air Force Academy
--     Department of Computer Science
--------------------------------------------------------------
package Limits is
   Symbols_Per_Production      : constant := 20;
   Productions_Per_Nonterminal : constant := 200;
   Maximum_Number_Of_Visitors  : constant := 10;
end Limits;
