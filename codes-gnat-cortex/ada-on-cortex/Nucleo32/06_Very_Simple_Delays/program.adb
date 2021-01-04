with Pins;
with Utils;

package body Program is

   procedure Run is
   begin
      Pins.Enable_Output (Pins.Pin_11);
      Pins.Enable_Output (Pins.Pin_12);

      loop      
         Pins.Write (Pins.Pin_12, True);
         Utils.Waste_Some_Time;

         Pins.Write (Pins.Pin_12, False);
         Utils.Waste_Some_Time;
      end loop;
   end Run;
   
end Program;
