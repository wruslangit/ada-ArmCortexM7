with Pins;
with Utils;

package body Program is

   procedure Run is
      Period : constant := 1_000;
      Cycle_Begin : Utils.Time;
      use type Utils.Time;
   begin
      -- initialize output pin
      Pins.Enable_Output (Pins.Pin_12);
      
      -- enable interrupts and set up system time
      Utils.Enable_Interrupts;
      Utils.Enable_System_Time;
      
      Cycle_Begin := Utils.Clock;
      loop      
         Pins.Write (Pins.Pin_12, True);
         Utils.Delay_Until (Cycle_Begin + Period / 2);

         Pins.Write (Pins.Pin_12, False);
         
         Cycle_Begin := Cycle_Begin + Period;
         Utils.Delay_Until (Cycle_Begin);
      end loop;
   end Run;
   
end Program;
