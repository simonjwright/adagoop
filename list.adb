with Ada.Unchecked_Deallocation;

package body List is

   function Car (
         Ptr : Listptr ) 
     return Listitem is 
   begin
      return Ptr.Nodecar;
   end Car;

   function Cdr (
         Ptr : Listptr ) 
     return Listptr is 
   begin
      return Ptr.Nodecdr;
   end Cdr;

   function Cons (
         Val : Listitem; 
         Ptr : Listptr   ) 
     return Listptr is 
   begin
      return Listptr'(new Node'(Nodecar => Val, Nodecdr => Ptr));
   end Cons;

   -- set walker to start of list, count to 0
   -- while walker is not null, set walker to cdr(walker) and add one
   --   to count
   -- return count
   function Length (
         Ptr : Listptr ) 
     return Integer is 
      Count  : Integer;  
      Walker : Listptr; -- walks down linked list 
   begin
      Count := 0;
      Walker := Ptr;

      while (Walker /= null) loop
         Walker := Walker.Nodecdr;
         Count := Count+1;
      end loop;

      return Count;
   end Length;

   -- if at front (ptr is NULL), simply change ptr to be a new node
   --   containing val and pointing to NULL and return
   -- otherwise, set walker to point to front of list
   -- while cdr(walker) /= NULL, walker <- cdr(walker)
   -- change cdr(walker) to new node containing val
   procedure Append (
         Val :        Listitem; 
         Ptr : in out Listptr   ) is 
      Walker : Listptr;  
   begin
      if Ptr = null then
         Ptr := Listptr'(new Node'(Nodecar => Val, Nodecdr => null));
         return;
      end if;

      Walker := Ptr;
      while Walker.Nodecdr /= null loop
         Walker := Walker.Nodecdr;
      end loop;

      Walker.Nodecdr := Listptr'(new Node'(Nodecar => Val, Nodecdr => null));
   end Append;

   function Cadr (
         Ptr : Listptr ) 
     return Listitem is 
   begin
      return Ptr.Nodecdr.Nodecar;
   end Cadr;

   function Caddr (
         Ptr : Listptr ) 
     return Listitem is 
   begin
      return Ptr.Nodecdr.Nodecdr.Nodecar;
   end Caddr;

   function Cadddr (
         Ptr : Listptr ) 
     return Listitem is 
   begin
      return Ptr.Nodecdr.Nodecdr.Nodecdr.Nodecar;
   end Cadddr;

   -- set walker to front of list
   -- while walker is not null, call fnptr(car(walker)) then
   -- set walker to cdr(walker)
   procedure Foreach (
         Ptr   : Listptr;     
         Fnptr : not null access procedure (Item : Listitem) ) is 
      Walker : Listptr;  
   begin
      Walker := Ptr;

      while Walker /= null loop
         Fnptr.all(Walker.Nodecar);
         Walker := Walker.Nodecdr;
      end loop;

   end Foreach;

   procedure Deallocate is new Ada.Unchecked_Deallocation(
      Name => Listptr, Object => Node);
   procedure Free (
         Ptr : in out Listptr ) is 
   begin
      if Ptr /= null then
         Free(Ptr.Nodecdr);
         Deallocate(Ptr);
      end if;
   end Free;
end List;

