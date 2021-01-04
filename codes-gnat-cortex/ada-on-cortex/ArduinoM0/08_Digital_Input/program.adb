with Pins;

package body Program is

   procedure Run is
      State : Boolean;
   begin
      Pins.Enable_Input (Pins.Pin_8, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_9, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_10, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_11, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_12, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_13, Pins.Pulled_Up);
      Pins.Enable_Output (Pins.Pin_2);
      Pins.Enable_Output (Pins.Pin_3);
      Pins.Enable_Output (Pins.Pin_4);
      Pins.Enable_Output (Pins.Pin_5);
      Pins.Enable_Output (Pins.Pin_6);
      Pins.Enable_Output (Pins.Pin_7);
      
      loop
         Pins.Read (Pins.Pin_8, State);
         Pins.Write (Pins.Pin_2, State);
         
         Pins.Read (Pins.Pin_9, State);
         Pins.Write (Pins.Pin_3, State);
         
         Pins.Read (Pins.Pin_10, State);
         Pins.Write (Pins.Pin_4, State);
         
         Pins.Read (Pins.Pin_11, State);
         Pins.Write (Pins.Pin_5, State);
         
         Pins.Read (Pins.Pin_12, State);
         Pins.Write (Pins.Pin_6, State);
         
         Pins.Read (Pins.Pin_13, State);
         Pins.Write (Pins.Pin_7, State);
      end loop;
   end Run;
   
end Program;
