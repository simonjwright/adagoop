
with Lego;
use Lego;

procedure Test is 
   Left : constant Integer := 0;  
   Right : constant Integer := 1;  
   
   --Motor direction is a function of the orientation of the wires
   --on the output ports and the motors.  If they are changed from the 
   --standard configuration then the procedures below may have to be modified.
   procedure Go_Forward is 
   begin
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
   end Go_Forward;

   procedure Go_Back (Tenths_Of_A_Second : in     Integer ) is 
   begin
      Output_On_Reverse(Output => Output_A);
      Output_On_Reverse(Output => Output_C);
      Wait(Hundredths_Of_A_Second => Tenths_Of_A_Second * 10);
      Output_Off(Output => Output_A);
      Output_Off(Output => Output_C);
   end Go_Back;

   procedure Turn (Direction : in     Integer ) is 
   begin
      if Direction = Left then
         Output_Off(Output => Output_A);
         Output_Power(Power  => Power_Low, Output => Output_C);
         Output_On_Forward(Output => Output_C);
         Wait(Hundredths_Of_A_Second => 100);
         Output_Off(Output => Output_C);
      else --right
         Output_Off(Output => Output_C);
         Output_Power(Output => Output_A,Power  => Power_Low);
         Output_On_Forward(Output => Output_A);
         Wait(Hundredths_Of_A_Second => 100);
         Output_Off(Output => Output_A);
      end if;
   end Turn;

   procedure Initialize_Robot is 
   begin
      Config_Sensor(Sensor => Sensor_1, Config => Config_Touch);
      --motors as mounted must be spinning in opposite directions
      --for robot to move forward
      Output_Power(Output => Output_A,Power  => Power_Low);
      Output_Power(Output => Output_C,Power  => Power_Low);
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
   end Initialize_Robot;

counter : integer := 1;
t_val : integer;
w_val : integer;
msg : integer;
begin
   Initialize_Robot;
   loop
      --touch sensor pressed?
      if Get_Sensor_Value(Sensor => Sensor_1) = 1 then
         Go_Back(Tenths_Of_A_Second => 30);
         if counter = 0 then
            Turn(Direction => Right);
            counter := 1;
         else
            Turn(Direction => Left);
            counter := 0;
         end if;
         Go_Forward;
      end if;
   end loop;
   --these don't do anything at the moment, just test the translator
   t_val := Get_Timer(0);
   w_val := Get_Watch;
   msg := Get_Message;
   Clear_Timer(0);
   Select_Display(0);
   Select_Display(What_To_Display => Display_Output_2);
   Send_Message(Message => 123);
   Clear_Message_Buffer;
   Create_Datalog(1000);
   Add_To_Datalog(Get_Timer(1));
   Set_Watch(Hours => 3, Minutes => 30);
   Set_Transmitter_Power_Level(Transmitter_Power_Low);
end Test;