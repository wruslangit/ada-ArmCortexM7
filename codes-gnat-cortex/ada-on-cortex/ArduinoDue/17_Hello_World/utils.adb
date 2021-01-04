with Registers;
with System.Machine_Code;

package body Utils is

   procedure Spin_Indefinitely is
   begin
      loop
         null;
      end loop;
   end Spin_Indefinitely;

   procedure Waste_Some_Time is
      Iterations : constant := 100_000;
   begin
      for I in 1 .. Iterations loop
         null;
      end loop;
   end Waste_Some_Time;

   procedure Enable_Interrupts is
   begin
      System.Machine_Code.Asm (Template => "cpsie i", Volatile => True);
   end Enable_Interrupts;
   
   procedure Disable_Interrupts is
   begin
      System.Machine_Code.Asm (Template => "cpsid i", Volatile => True);
   end Disable_Interrupts;

   procedure Wait_For_Interrupt is
   begin
      System.Machine_Code.Asm (Template => "wfi", Volatile => True);
   end Wait_For_Interrupt;

   Master_Clock_Frequency_Hz : constant := 4_000_000;
   SysTick_Divider : constant := 8;
   SysTick_Clock_Frequency_Hz : constant := Master_Clock_Frequency_Hz / SysTick_Divider;
   SysTick_Period_Millis : constant := 10;
   
   SysTick_Reload_Value : constant :=
      (SysTick_Clock_Frequency_Hz / 1_000) * SysTick_Period_Millis;

   System_Time : Time;
   pragma Volatile (System_Time);

   procedure SysTick_Handler is
   begin
      System_Time := System_Time + SysTick_Period_Millis;
   end SysTick_Handler;

   procedure Enable_System_Time is
      use type Registers.Word;
   begin
      System_Time := 0;
  
      Registers.SysTick_VAL := 0;
      Registers.SysTick_LOAD := SysTick_Reload_Value;
      Registers.SysTick_CTRL := Registers.Bit_0 or Registers.Bit_1;
   end Enable_System_Time;

   function Clock return Time is
   begin
      return System_Time;
   end Clock;

   procedure Reset_Clock (T : in Time := 0) is
   begin
      System_Time := T;
   end Reset_Clock;
   
   procedure Delay_Until (T : in Time) is
   begin
      while System_Time < T loop
         Wait_For_Interrupt;
      end loop;
   end Delay_Until;

end Utils;
