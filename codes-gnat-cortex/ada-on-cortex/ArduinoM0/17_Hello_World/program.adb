with LCD;
with Utils;

package body Program is

   procedure Run is
      Next_Time : Utils.Time;
      Wait_Time_Millis : constant := 500;

      use type Utils.Time;
   begin
      Utils.Enable_Interrupts;
      Utils.Enable_System_Time;
      LCD.Initialize;

      LCD.Print (1, 1, "Ada says ""Hello""");
      
      Next_Time := Utils.Clock;
      loop
         -- arrow moving from left to right
         for I in LCD.Column_Number'Range loop
            LCD.Print (2, I, '>');
            
            Next_Time := Next_Time + Wait_Time_Millis;
            Utils.Delay_Until (Next_Time);
            
            LCD.Print (2, I, ' ');
         end loop;
         
         -- arrow moving from right to left
         for I in reverse LCD.Column_Number'Range loop
            LCD.Print (2, I, '<');
            
            Next_Time := Next_Time + Wait_Time_Millis;
            Utils.Delay_Until (Next_Time);
            
            LCD.Print (2, I, ' ');
         end loop;
      end loop;
   end Run;

end Program;
