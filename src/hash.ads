-------------------------------------------------------------
--
-- Generic hash package
--
-- By: Dr. Martin Carlisle
-- 
-- Last modified: October 5, 1998
-------------------------------------------------------------
with List;
with List.Key;
generic
   type Tableitem is private; 
   type Key is private; 
   type Hashvals is range <>; 
   with function Getkey ( X : Tableitem ) return Key; 
   with function "=" (Left, Right : Key ) return Boolean; 
   with function Hashfcn ( K : Key ) return Hashvals; 
package Hash is

   package Listparent is new List(Listitem => Tableitem);
   package Hashtbllist is new Listparent.Key(
      Keytype => Key, 
      "=" => "=",
      Getkey => Getkey);

   type Hashtable is private; 

   Nothashed : exception;

   -- Note that according to Cohen, an access variable is already
   -- initialized to null.  As a result, no initialization routine
   -- should be needed for this package.

   -- check if a key is present in the hash
   function Ishashed (
         Table : Hashtable; 
         K     : Key        ) 
     return Boolean; 
     
   -- add an item to the hash table
   procedure Additem (
         Table : in out Hashtable; 
         X     :        Tableitem  ); 
         
   -- look up a key and return the table item
   -- could raise exception Nothashed
   function Gethashed (
         Table : Hashtable; 
         K     : Key        ) 
     return Tableitem; 

   procedure Clear_Hash(Table : in out Hashtable);
   
   --PROCEDURE RemoveHashed(Table : HashTable; k : Key);

private
   type Hashtable is array (Hashvals'range) of Listparent.Listptr; 

end Hash;
