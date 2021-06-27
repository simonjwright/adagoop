-----------------------------------------------------------------------
--
--  File:        Lego.ads
--  Description: Package to implement LEGO commands
--
--
--
-----------------------------------------------------------------------

package Lego is

   --To add a new enumerated type:
   --   1) Add the type in the code below
   --   2) Add the appropriate generic subprogram instantiation near the top of trans_model.adb
   --   3) Add the appropriate translation statement to "Translate_Ada_Mindstorms_Identifier"
   --      in trans_model.adb
   --   4) Add the appropriate call in "Is_Ada_Mindstorms_Identifier" in trans_model.adb so that 
   --      it correctly recognizes members of the new enumerated type as Ada/Mindstorms identifiers
   --   5) Update "Is_Supported_Type" in trans_model.adb
   
   --An enumerated type listing all the predefined Ada/Mindstorms 
   --procedure names in this file.  Never needed in a user 
   --file, must always be kept consistent with the procedure specs that 
   --follow.
   type Ada_Mindstorms_Procedure is (
      Set_Sensor,
      Set_Sensor_Mode, 
      Set_Sensor_Type,
      Clear_Sensor, 
      Get_Sensor_Value,
      Output_On,
      Output_Off,
      Output_Float,
      Output_Forward,
      Output_Reverse,
      Output_Toggle,
      Output_Power,
      Wait,
      Play_Sound,
      Play_Tone,
      Stop_All_Tasks,
      Send_Message,
      Clear_Message_Buffer,
      Config_Sensor,
      Output_On_Forward,
      Output_On_Reverse,
      Output_On_For,
      Set_Output_Mode,
      Set_Output_Direction,
      Random,
      Get_Timer,
      Get_Watch,
      Get_Message,
      Clear_Timer,
      Select_Display,
      Create_Datalog,
      Add_To_Datalog,
      Set_Watch,
      Set_Transmitter_Power_Level
      );
   
   --Names in enumerated types below are important, changing them will result in incorrect translations
   --unless "Translate_Ada_Mindstorms_Identifier" in trans_model.adb is modified appropriately.
   --There must not be any overlap in the names, i.e do not use the name 'foo' in more than one enumerated type below.
   
   -- type used to specify a sensor port (1..3) on the RCX.
   type Sensor_Port is (Sensor_1, Sensor_2, Sensor_3);
   
   -- type used to specify an RCX output port (A B or C).
   type Output_Port is (Output_A, Output_B, Output_C); 
   
   -- type used to specify how the sensor input is handled.
   type Configuration is 
         (Config_Touch,
          Config_Light,      
          Config_Pulse,      
          Config_Rotation,   
          Config_Celsius,    
          Config_Fahrenheit, 
          Config_Edge); 
   
   -- type used to specify an RCX output mode
   type Output_Mode is
         (Output_Mode_On,
          Output_Mode_Off,
          Output_Mode_Float);
          
   -- type used to specify an RCX output direction
   type Output_Direction is
         (Output_Direction_Forward,
          Output_Direction_Reverse, 
          Output_Direction_Toggle);
          
   -- type used to specify the actual sensor type (hardware)
   type Sensor_Type is 
         (Type_Touch,       
          Type_Temperature, 
          Type_Light,       
          Type_Rotation); 
          
   -- type used to specify the power level of an output
   type Power_Type is range 0..7;
        
   -- type used to specify a transmitter power setting
   type Transmitter_Power_Setting is (Transmitter_Power_Low, Transmitter_Power_High);
   
   -- type used to specify the type of sound desired
   type Sound is 
         (Click,       
          Double_Beep, 
          Down,        
          Up,          
          Low_Beep,    
          Fast_Up); 
   -- type used to specify a message number
   subtype Message is integer range 1 .. 255; 
   
   -- Hour and Minute types for setting the watch
   subtype Hour is integer range 0..23;
   subtype Minute is integer range 0..59;
   
   -- range of datalog sizes
   subtype Datalog_Range is integer range 1..1024;
   
   -- type used to specify a duration in 10ths of a second.
   type Duration is new Positive; 
   
   -- type used to specify a frequency
   -- (slightly beyond range of human hearing)
   subtype Frequency is integer range 1..25000; 
   
   -- type used to hold the value of the sensor.
   -- broadest range is below, though sensors are
   -- dynamically configured at runtime to normally
   -- produce values well below this
   subtype Sensor_Value is integer range 0..1023; 
   
   --type for sensor modes
   type Sensor_Mode is (
      Mode_Raw,
      Mode_Bool,
      Mode_Edge,
      Mode_Pulse,
      Mode_Percent,
      Mode_Celsius,
      Mode_Fahrenheit,
      Mode_Rotation);
      
   --type for timers
   type Timer is (Timer_0, Timer_1, Timer_2, Timer_3);
   
   --type for system watch
   subtype Watch_Value_In_Minutes is integer range 0..24*60-1;
   
   --power level definitions, supplied as a convenience
   Power_Low : constant Power_Type := 1;
   Power_Half : constant Power_Type := 4;
   Power_High : constant Power_Type := 7;
   
   --display value definitions, supplied as a convenience
   Display_Watch : constant := 0;
   Display_Sensor_1 : constant := 1;
   Display_Sensor_2 : constant := 2;
   Display_Sensor_3 : constant := 3;
   Display_Output_A : constant := 4;
   Display_Output_B : constant := 5;
   Display_Output_C : constant := 6;
   
   --------------------
   -- Procedures     --
   --------------------

--PROCEDURES FOR CONTROLLING AND READING THE INPUT PORTS

   -- Name : ClearSensor
   -- Description :  
   -- This procedure takes in a sensor port and clears the
   -- current value of that sensor to '0'.  This only needs to
   -- performed on sensors configured as Rotation, Edge, or Pulse,
   -- since they are the only sensors that maintain a value.
   
   -- Example: Clear_Sensor(Sensor => Sensor_1);
   procedure Clear_Sensor (
         Sensor : in Sensor_Port ); 
         
         
   -- Name : Config_Sensor
   -- Description :  
   -- This procedure takes in a sensor type and a config type.
   -- It tells the RCX how to configure the given input.  It 
   -- differs from setsensortype because setsensortype deals
   -- with the attached hardware and not the output.  For 
   -- example, a touch sensor (hardware) can be used as a touch
   -- sensor giving a value of 0 or 1, or as a pulse sensor
   -- that keeps a count of presses, or as an edge sensor that
   -- keeps a count of state transitions.  Depending on how you
   -- want to use the sensor, is how you configure it.
   
   -- Example:  Config_Sensor(Sensor => Sensor_2,
   --            Config => Touch);
   
   procedure Config_Sensor (
         Sensor : in Sensor_Port; 
         Config : in Configuration  ); 
         
   -- Name : Get_Sensor_Value
   -- Description :  
   -- Takes in a sensor port and returns the current value.
   
   -- Example:  if (Get_Sensor_Value(Sensor => Sensor_1) = 0) then ...
   
   function Get_Sensor_Value (Sensor : in Sensor_Port ) 
     return sensor_value; 
   

   -- Name : Set_Sensor_Mode
   -- Description:
   -- This procedure takes in a sensor port and a mode, setting
   -- the sensor appropriately.  Normally not used, Config_Sensor is better.
   
   -- Example:  Set_Sensor_Mode(Sensor => Sensor_1, Mode => Pulse);
   
   procedure Set_Sensor_Mode (
         Sensor : in Sensor_Port;
         Mode : in sensor_mode );
         
         
   -- Name : Set_Sensor_Type
   -- Description:
   -- This procedure sets the type of a sensor.  Normally not used, Config_Sensor is better.
   
   -- Example:  Set_Sensor_Type(Sensor => Sensor_1, Kind => Type_Touch);
   
   procedure Set_Sensor_Type(
      Sensor : in Sensor_Port;
      Kind : in Sensor_Type );


   -- PROCEDURES FOR CONTROLLING THE OUTPUT PORTS   
    
   -- Name : Output_float
   -- Description :  
   -- This procedure takes in an output port (the ports most
   -- commonly used to run motors) and turns it off, but in a 
   -- way that allows it to glide to a stop.
   
   -- Example:  Output_Float(Output => Output_1);
   
   procedure Output_Float (Output : in Output_Port ); 
   
   
   -- Name : Output_Forward
   -- Description :  
   -- This procedure takes in an output port and sets it in the
   -- forward direction.  The port must be on for this to work.
   
   -- Example: Output_Forward(Output => Output_1);
   
   procedure Output_Forward (Output : in Output_Port ); 
   
   
   -- Name : Output_Off
   -- Description :  
   -- This procedure takes in an output port (the ports most
   -- commonly used to run motors) and turns it off.
   
   -- Example:  Output_Off(Output => Output_1);
   
   procedure Output_Off (Output : in Output_Port ); 
  
             
   -- Name : Output_On
   -- Description :  
   -- This procedure takes in an output port (the ports most
   -- commonly used to run motors) and turns it on.  
   
   -- Example:  Output_On(Output => Output_1);

   procedure Output_On (Output : in Output_Port ); 

   -- Name : Output_on_for
   -- Description :  
   -- This procedure takes in an output port and a time in hundredths
   -- of a second.  It turns the output port on for the specified 
   -- time duration.
   
   -- Example:  Output_On_For(Output => Output_1,
   --            Hundredths_Of_A_Second => 200);
   
   procedure Output_On_For (
         Output : in Output_Port; 
         Hundredths_Of_A_Second : in Natural  ); 
         
         
   -- Name : Output_on_forward 
   -- Description :  
   -- This procedure takes in an output port.  It simply turns
   -- on the port AND sets it forward.
   
   -- Example:  Output_On_Forward(Output => Output_1);
   
   procedure Output_On_Forward (
         Output : in Output_Port ); 
         
         
   -- Name : Output_on_reverse
   -- Description :  
   -- This procedure takes in an output port.  It simply turns
   -- on the port AND sets it to reverse.
   
   -- Example:  Output_On_Reverse(Output => Output_1)
    
   procedure Output_On_Reverse (
         Output : in Output_Port ); 

   -- Name : Ouput_power
   -- Description :  
   -- This procedure takes in an ouput port and a power value.
   -- It applies this power to the output.  The minimum power
   -- is zero (Power_Low) and the max is seven (Power_High).
   
   -- Example:  Output_Power(Output => Output_1, Power => Power_Low);
   --           Output_Power(Output => Output_1, Power => 3);
   
   procedure Output_Power (
         Output : in Output_Port; 
         Power  : in Power_Type   ); 
         
         
   -- Name : Output_Reverse
   -- Description :  
   -- This procedure takes in an output port and sets it in the
   -- reverse direction.  The port must be on for this to work.
   
   -- Example:  Output_Reverse(Output => Output_1);
   
   procedure Output_Reverse (Output : in Output_Port ); 
         
         
   -- Name : Output_toggle
   -- Description :  
   -- This procedure takes in an output port and flips the 
   -- direction of the output.  The port must be on for this to
   -- work.
   
   -- Example:  Output_Toggle(Output => Output_1);
   
   procedure Output_Toggle (Output : in Output_Port ); 

   
   -- Name : Set_Output_Direction
   -- Description:
   -- Sets the direction of a given output.
   
   -- Example:  Set_Output_Direction(Output => Output_1, 
   --             Direction => Forward);
   
   procedure Set_Output_Direction(
      Output : in Output_Port;
      Direction : in Output_Direction);
      
      
   -- Name : Set_Output_Mode
   -- Description:
   -- Turns a given output on or off.
   
   -- Example:  Set_Output_Mode(Output => Output_1, Mode => Output_Mode_On);
   
   procedure Set_Output_Mode(
      Output : in Output_Port;
      Mode : in Output_Mode);
      
            
   --OTHER PROCEDURES
   
   -- Name : Clear_Message_Buffer
   -- Description :  
   -- This procedure cleas the IR message buffer.  For example,
   -- if an RCX receives a message from another RCX, this 
   -- message is retained until cleared.
   
   -- Example:  Clear_Message_Buffer;
   
   procedure Clear_Message_Buffer; 
   
   -- Name : Clear_Timer
   -- Description :  
   -- Clears the indicated timer value
   
   -- Example:  Clear_Timer(Timer_To_Clear => 1);
   
   procedure Clear_Timer (
         Timer_To_Clear : in Timer ); 
   
   -- Name : Play_Sound
   -- Description :  This procedure takes in a sound type and plays it.
   
   -- Example:  Play_Sound(Sound_To_Play => Double_Beep);
   
   procedure Play_Sound (
         Sound_To_Play : in sound ); 

   -- Name : Play_Tone
   -- Description :  
   -- This procedure takes in a frequency and a duration and
   -- plays the frequency for that duration.  The frequency
   -- can be any in the range of the human ear, and the duration
   -- is given in 10ths of a second.
   
   -- Example:  Play_Tone(Frequency_In_Hertz => 440,
   --            Tenths_Of_A_Second => 20);
   
   procedure Play_Tone (
         Frequency_In_Hertz : in frequency; 
         Tenths_Of_A_Second : in Natural   ); 
         
         
   -- Name : Send_Message
   -- Description :  
   -- This procedure takes in a message type.  RCX will send the
   -- message (a number from 1 to 255) through its IR port.  This is
   -- commonly used for communicating between RCX's. 
   
   -- Example:  Send_Message(Message => 124);
   
   procedure Send_Message (
         Message_To_Send : in Message ); 


   -- Name : Stop_All_Tasks
   -- Description :  This procedure will stop everything running on the RCX.
   
   -- Example:  Stop_All_Tasks;
   
   procedure Stop_All_Tasks; 
      
   -- Name : Select_Display
   -- Description : determines what is shown in the RCX window.  Input parameter
   -- is an integer to allow parameter to be an expression.
   procedure Select_Display(What_To_Show : in integer);
   
   -- Name : Create_Datalog
   -- Description : creates a datalog to hold 'Size' values
   procedure Create_Datalog(Size : in Datalog_Range);
   
   -- Name : Add_To_Datalog
   -- Description : adds indicated value to datalog
   -- input parameter is an integer to allow it to be an expression
   procedure Add_To_Datalog(Value : in integer);
   
      
   -- Name : Wait
   -- Description :  
   -- This procedure takes in a time duration and waits for that
   -- amount of time before moving on to the next command.  The
   -- duration is in 100ths of a second.
   
   -- Example:  Wait(Hundredths_Of_A_Second => 50);

   procedure Wait (Hundredths_Of_A_Second : in Natural ); 
   
   procedure Set_Watch(Set_Hours_To : in Hour; Set_Minutes_To : in Minute);
   
   procedure Set_Transmitter_Power_Level(Level : in Transmitter_Power_Setting);
   
   --functions
   
   function Random (Max : in Integer) return integer;
   function Get_Timer (Timer_To_Read : in Timer) return integer;   
   function Get_Watch return Watch_Value_In_Minutes;
   function Get_Message return Message;

end Lego;