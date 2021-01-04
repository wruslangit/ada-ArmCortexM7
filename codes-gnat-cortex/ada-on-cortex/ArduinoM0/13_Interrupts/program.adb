with Pins;
with Utils;

package body Program is

   procedure Button_Pressed is
      State : Boolean;
   begin
      -- copy state from pin 3 to pin 4
      Pins.Read (Pins.Pin_3, State);
      Pins.Write (Pins.Pin_4, State);

      Pins.Clear_Interrupt (Pins.Pin_3);
   end Button_Pressed;
   
   procedure Run is
   begin

      -- initialize the device
      Pins.Enable_Input (Pins.Pin_3, Pins.Pulled_Up);
      Pins.Enable_Output (Pins.Pin_4);

      -- allow interrupts from pin 3
      Utils.Enable_Interrupts;
      Pins.Enable_Interrupts (Pins.Pin_3);
   
      -- do nothing,
      -- the whole activity is driven by interrupts
      loop
         Utils.Wait_For_Interrupt;
      end loop;
   end Run;

end Program;
