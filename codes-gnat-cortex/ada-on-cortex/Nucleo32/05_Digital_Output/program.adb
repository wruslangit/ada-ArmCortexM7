with Pins;
with Utils;

package body Program is

   procedure Run is
   begin
      Pins.Enable_Output (Pins.Pin_11);
      Pins.Enable_Output (Pins.Pin_12);
      
      Pins.Write (Pins.Pin_11, True);
      Pins.Write (Pins.Pin_12, False);
      
      Utils.Spin_Indefinitely;
   end Run;
   
end Program;
