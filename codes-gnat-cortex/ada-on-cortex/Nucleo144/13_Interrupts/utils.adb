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

end Utils;
