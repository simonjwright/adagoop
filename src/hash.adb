-------------------------------------------------------------
--
-- Generic hash package
--
-- By: Dr. Martin Carlisle
-- 
-- Last modified: May 30, 1997
-------------------------------------------------------------
package body Hash is


   function Ishashed (
         Table : Hashtable; 
         K     : Key        ) 
     return Boolean is 
      Hashval : Hashvals;  

   begin
      Hashval := Hashfcn(K);
      return Hashtbllist.Ispresent(K,Table(Hashval));
   end Ishashed;

   procedure Additem (
         Table : in out Hashtable; 
         X     :        Tableitem  ) is 
      Hashval : Hashvals;  
      Thekey  : Key;  
   begin
      Thekey := Getkey(X);
      Hashval := Hashfcn(Thekey);

      if Hashtbllist.Ispresent(Thekey,Table(Hashval)) then
         Hashtbllist.Replace(X,Table(Hashval));
      else
         Table(Hashval) := Listparent.Cons(X,Table(Hashval));
      end if;
   end Additem;

   function Gethashed (
         Table : Hashtable; 
         K     : Key        ) 
     return Tableitem is 
      Hashval : Hashvals;  

   begin
      Hashval := Hashfcn(K);

      return Hashtbllist.Find(K,Table(Hashval));

   exception
      when Hashtbllist.Notfound =>
         raise Nothashed;

   end Gethashed;

   procedure Clear_Hash(Table : in out Hashtable) is
   begin
      for i in Table'range loop
         Listparent.Free(Table(i));
      end loop;
   end Clear_Hash;

end Hash;
