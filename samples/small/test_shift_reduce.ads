package Test_Shift_Reduce is

    type Small_Integer is range -32_000 .. 32_000;

    type Shift_Reduce_Entry is record
        T   : Small_Integer;
        Act : Small_Integer;
    end record;
    pragma Pack(Shift_Reduce_Entry);

    subtype Row is Integer range -1 .. Integer'Last;

  --pragma suppress(index_check);

    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

    Shift_Reduce_Matrix : constant Shift_Reduce_Array :=
        ( (-1,-1) -- Dummy Entry

-- state  0
,( 2, 5),(-1,-6000)
-- state  1
,( 9, 7),(-1,-24)

-- state  2
,( 11, 9),(-1,-26)
-- state  3
,(-1,-28)
-- state  4
,(-1,-29)

-- state  5
,(-1,-1)
-- state  6
,( 0,-6001),(-1,-6000)
-- state  7
,(-1,-8)

-- state  8
,( 2, 5),(-1,-6000)
-- state  9
,(-1,-10)
-- state  10
,( 2, 5)
,(-1,-6000)
-- state  11
,(-1,-6000)
-- state  12
,( 11, 9),(-1,-25)

-- state  13
,(-1,-27)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : array (0.. 13) of Integer :=
( 0,
 2, 4, 6, 7, 8, 9, 11, 12, 14, 15,
 17, 18, 20);
end Test_Shift_Reduce;
