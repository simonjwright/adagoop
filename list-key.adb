PACKAGE BODY list.key IS

FUNCTION Find(key : KeyType; ptr : ListPtr) RETURN ListItem IS
  walker : ListPtr;

BEGIN
  walker := ptr;

  WHILE (walker /= NULL) LOOP
    IF key=GetKey(car(walker)) THEN
      RETURN car(walker);
    END IF;
    walker := walker.nodecdr;
  END LOOP;
  
  RAISE notfound;
END Find;

FUNCTION IsPresent(key : KeyType; ptr : ListPtr) RETURN Boolean IS
  walker : ListPtr;

BEGIN
  walker := ptr;

  WHILE (walker /= NULL) LOOP
    IF key=GetKey(car(walker)) THEN
      RETURN True;
    END IF;
    walker := walker.nodecdr;
  END LOOP;
  
  RETURN False;
END IsPresent;

PROCEDURE Replace(item : ListItem; ptr : ListPtr) IS
  walker : ListPtr;
  key : KeyType;
BEGIN
  key := GetKey(item);
  walker := ptr;
  
  WHILE (walker /= NULL) LOOP
    IF key=GetKey(car(walker)) THEN
      walker.nodecar := item;
      RETURN;
    END IF;
    walker := walker.nodecdr;
  END LOOP;
  
  RAISE notfound;
END Replace;

END list.key;
