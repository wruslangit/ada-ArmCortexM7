package Utils is

   procedure Spin_Indefinitely;
   
   procedure Waste_Some_Time;

   procedure Enable_Interrupts;
   
   procedure Disable_Interrupts;
   
   procedure Wait_For_Interrupt;

   procedure Enable_System_Time;

   type Time is new Natural;
   
   function Clock return Time;
   
   procedure Reset_Clock (T : in Time := 0);
   
   procedure Delay_Until (T : in Time);
   
   procedure SysTick_Handler;
   pragma Export (C, SysTick_Handler, "systick_handler");

end Utils;
