with ada.strings.unbounded; use ada.strings.unbounded;

package lego_builtins is

--To add a new builtin procedure:
--   1) Add the name to the enumerated type Ada_Mindstorms_Procedure_Type in lego.ads
--   2) Add the spec at the bottom of lego.ads
--   3) Add the body at the bottom of lego.adb
--   4) Add an appropriate clause to the procedure Translate_Ada_Mindstorms_Identifier in trans_model.adb
--   5) Add an appropriate record to the Procedure_Info_Table below
--   6) Rebuild ada2nqc

Max_Procedure_Arity : constant Integer := 8;   --really, why would you ever need more?
type Formal_Parameter_Array_Type is array (1..Max_Procedure_Arity) of Unbounded_String;

type Procedure_Info_Record_Type is record
   Name : Unbounded_String;
   Arity : Natural;
   Formal_Parameters : Formal_Parameter_Array_Type;
   end record;
type Procedure_Info_Record_Type_Ptr is access all Procedure_Info_Record_Type;

Max_Procedures : constant Integer := 64;   --max num of procedures the tool can handle, including builtins
type Procedure_Info_Array_Type is array (1..Max_Procedures) of Procedure_Info_Record_Type;

--global table that tracks builtin procedures/functions, to support named association
--fill this with information about all Ada/Mindstorms builtin procedures
--strictly speaking, only need info for arity > 1, but all are included here for
--completeness and maintainability
--this table has to be kept consistent with lego.ads
--parameters must be given in the order required, since NQC doesn't support named association


Procedure_Info_Table : Procedure_Info_Array_Type := (   
   1 => (
      Name => To_Unbounded_String("Set_Sensor"),    
      Arity => 2, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"), 
         2 => To_Unbounded_String("Config"), 
         others => To_Unbounded_String(""))),
   2 => (
      Name => To_Unbounded_String("Clear_Sensor"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"), 
         others => To_Unbounded_String(""))),
   3 => (
      Name => To_Unbounded_String("Output_On"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),
   4 => (
      Name => To_Unbounded_String("Output_Off"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),
   5 => (
      Name => To_Unbounded_String("Output_Float"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),
   6 => (
      Name => To_Unbounded_String("Output_Forward"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),   
   7 => (
      Name => To_Unbounded_String("Output_Reverse"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),
   8 => (
      Name => To_Unbounded_String("Output_Toggle"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         others => To_Unbounded_String(""))),
   9 => (
      Name => To_Unbounded_String("Output_Power"),    
      Arity => 2, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         2 => To_Unbounded_String("Power"),
         others => To_Unbounded_String(""))),
   10 => (
      Name => To_Unbounded_String("Wait"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Hundredths_Of_A_Second"), 
         others => To_Unbounded_String(""))),
   11 => (
      Name => To_Unbounded_String("Play_Sound"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Sound_To_Play"), 
         others => To_Unbounded_String(""))),
   12 => (
      Name => To_Unbounded_String("Play_Tone"),    
      Arity => 2, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Frequency_In_Hertz"), 
         2 => To_Unbounded_String("Tenths_Of_A_Second"),
         others => To_Unbounded_String(""))),
   13 => (
      Name => To_Unbounded_String("Stop_All_Tasks"),
      Arity => 0,
      Formal_Parameters => (
         others => To_Unbounded_String(""))),   
   14 => (
      Name => To_Unbounded_String("Send_Message"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Message_To_Send"), 
         others => To_Unbounded_String(""))),
   15 => (
      Name => To_Unbounded_String("Clear_Message_Buffer"),
      Arity => 0,
      Formal_Parameters => (
         others => To_Unbounded_String(""))),
   16 => (
      Name => To_Unbounded_String("Config_Sensor"),    
      Arity => 2, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"), 
         2 => To_Unbounded_String("Config"),
         others => To_Unbounded_String(""))),      
   17 => (
      Name => To_Unbounded_String("Output_On_Forward"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"),
         others => To_Unbounded_String(""))),
   18 => (
      Name => To_Unbounded_String("Output_On_Reverse"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"),
         others => To_Unbounded_String(""))), 
   19 => (
      Name => To_Unbounded_String("Output_On_For"),    
      Arity => 2, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"), 
         2 => To_Unbounded_String("Hundredths_Of_A_Second"),
         others => To_Unbounded_String(""))), 
   20 => (
      Name => To_Unbounded_String("Get_Sensor_Value"),    
      Arity => 1, 
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"),
         others => To_Unbounded_String(""))), 
   21 => (
      Name => To_Unbounded_String("Set_Sensor_Mode"),
      Arity => 2,
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"),
         2 => To_Unbounded_String("Mode"),
         others => To_Unbounded_String(""))),
   22 => (
      Name => To_Unbounded_String("Set_Sensor_Type"),
      Arity => 2,
      Formal_Parameters => (
         1 => To_Unbounded_String("Sensor"),
         2 => To_Unbounded_String("Kind"),
         others => To_Unbounded_String(""))),
   23 => (
      Name => To_Unbounded_String("Set_Output_Mode"),
      Arity => 2,
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"),
         2 => To_Unbounded_String("Mode"),
         others => To_Unbounded_String(""))),
   24 => (
      Name => To_Unbounded_String("Set_Output_Direction"),
      Arity => 2,
      Formal_Parameters => (
         1 => To_Unbounded_String("Output"),
         2 => To_Unbounded_String("Direction"),
         others => To_Unbounded_String(""))),
   25 => (
      Name => To_Unbounded_string("Random"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Max"),
         others => To_Unbounded_String(""))),
   26 => (
      Name => To_Unbounded_String("Get_Timer"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Timer_To_Read"),
         others => To_Unbounded_String(""))),
   27 => (
      Name => To_Unbounded_String("Get_Watch"),
      Arity => 0,
      Formal_Parameters => (
         others => To_Unbounded_String(""))),
   28 => (
      Name => To_Unbounded_String("Get_Message"),
      Arity => 0,
      Formal_Parameters => (
         others => To_Unbounded_String(""))),
   29 => (
      Name => To_Unbounded_String("Clear_Timer"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Timer_To_Clear"),
         others => To_Unbounded_String(""))), 
   30 => (
      Name => To_Unbounded_String("Select_Display"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("What_To_Show"),
         others => To_Unbounded_String(""))),    
   31 => (
      Name => To_Unbounded_String("Create_Datalog"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Size"),
         others => To_Unbounded_String(""))),  
   32 => (
      Name => To_Unbounded_String("Add_To_Datalog"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Value"),
         others => To_Unbounded_String(""))),  
   33 => (
      Name => To_Unbounded_String("Set_Watch"),
      Arity => 2,
      Formal_Parameters => (
         1 => To_Unbounded_String("Set_Hours_To"),
         2 => To_Unbounded_String("Set_Minutes_To"),
         others => To_Unbounded_String(""))),
   34 => (
      Name => To_Unbounded_String("Set_Transmitter_Power_Level"),
      Arity => 1,
      Formal_Parameters => (
         1 => To_Unbounded_String("Level"),
         others => To_Unbounded_String(""))),  
   others => (
      Name => To_Unbounded_String(""),
      Arity => 0,
      Formal_Parameters => (
         others => To_Unbounded_String("")))
   );

end lego_builtins;