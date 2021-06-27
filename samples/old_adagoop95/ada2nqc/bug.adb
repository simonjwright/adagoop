--Author: C4C Valerie Uhl
--Section: T5A
--Instructor: Mr. Tom Eggers
--This program commands the robot to move forward and right in such a pattern as a spiral 

with Lego;
use Lego;
procedure Lab1_1 is 



   procedure Initialize_Robot is --this starts the robot
   begin
      Config_Sensor(
         Sensor => Sensor_1,    
         Config => Config_Touch);
      Output_Power(
         Output => Output_A, 
         Power  => Power_Low);
      Output_Power(
         Output => Output_C, 
         Power  => Power_Low);
   end Initialize_Robot;

   procedure Move_Robot1 is --this moves the robot forward the first time

   begin
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
      Wait(Hundredths_Of_A_Second => 800);
   end Move_Robot1;

   procedure Move_Robot2 is --this moves the robot forward the second time 
   begin
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
      Wait(Hundredths_Of_A_Second => 600);
   end Move_Robot2;

   procedure Move_Robot3 is --this moves the robot forward the third time
   begin
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
      Wait(Hundredths_Of_A_Second => 450);
   end Move_Robot3;

   procedure Move_Robot4 is --this moves the robot forward the final time
   begin
      Output_On_Forward(Output => Output_A);
      Output_On_Forward(Output => Output_C);
      Wait(Hundredths_Of_A_Second => 338);
   end Move_Robot4;

   procedure Turn_Robot is --this turns the robot right 90°
   begin
      Output_On_Forward(Output => Output_A);
      Output_Off(Output => Output_C);
      Wait(Hundredths_Of_A_Second => 250);
   end Turn_Robot;

   procedure Stop_Robot is --this stops the robot
   begin
      Output_Off(Output => Output_A);
      Output_Off(Output => Output_C);
   end Stop_Robot;
   
begin--this starts the program 
   Initialize_Robot;
   Move_Robot1;
   Turn_Robot;
   Move_Robot2;
   Turn_Robot;
   Move_Robot3;
   Turn_Robot;
   Move_Robot4;
   Stop_Robot;
end Lab1_1; --this ends the lab      
