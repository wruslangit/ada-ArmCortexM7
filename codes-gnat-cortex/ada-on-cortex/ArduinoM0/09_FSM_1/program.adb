with Pins;
with Utils;

package body Program is

   type Fan_State is (Stop, Slow, Medium, Fast);

   type Buttons_State is (None, Up, Down, Both);

   procedure Control_Motor (S : in Fan_State) is
   begin
      case S is
         when Stop =>
            -- stop the motor
            Pins.Write (Pins.Pin_4, False);
            Pins.Write (Pins.Pin_5, False);
            Pins.Write (Pins.Pin_6, False);

         when Slow =>
            -- first circuit on
            Pins.Write (Pins.Pin_4, True);
            Pins.Write (Pins.Pin_5, False);
            Pins.Write (Pins.Pin_6, False);

         when Medium =>
            -- second circuit on
            Pins.Write (Pins.Pin_4, False);
            Pins.Write (Pins.Pin_5, True);
            Pins.Write (Pins.Pin_6, False);

         when Fast =>
            -- third circuit on
            Pins.Write (Pins.Pin_4, False);
            Pins.Write (Pins.Pin_5, False);
            Pins.Write (Pins.Pin_6, True);
      end case;
   end Control_Motor;

   procedure Read_Buttons (B : out Buttons_State) is
      B_Down : Boolean;
      B_Up : Boolean;
   begin
      Pins.Read (Pins.Pin_2, B_Down);
      Pins.Read (Pins.Pin_3, B_Up);

      if not B_Down and not B_Up then
         B := Both;
      elsif not B_Down and B_Up then
         B := Down;
      elsif B_Down and not B_Up then
         B := Up;
      else
         B := None;
      end if;
   end Read_Buttons;
   
   procedure Run is
      Current_State : Fan_State;
      Buttons : Buttons_State;
   begin

      -- initialize the device
      Pins.Enable_Input (Pins.Pin_2, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_3, Pins.Pulled_Up);
      Pins.Enable_Output (Pins.Pin_4);
      Pins.Enable_Output (Pins.Pin_5);
      Pins.Enable_Output (Pins.Pin_6);
      Current_State := Stop;
      Control_Motor (Current_State);
   
      -- repeat the control loop
      loop
         Read_Buttons (Buttons);
      
         case Current_State is
            when Stop =>
               case Buttons is
                  when None | Down | Both =>
                     -- nothing to do
                     Null;
                  when Up =>
                     Current_State := Slow;
               end case;

            when Slow =>
               case Buttons is
                  when None =>
                     -- nothing to do
                     Null;
                  when Down | Both =>
                     Current_State := Stop;
                  when Up =>
                     Current_State := Medium;
               end case;

            when Medium =>
               case Buttons is
                  when None =>
                     -- nothing to do
                     Null;
                  when Down =>
                     Current_State := Slow;
                  when Up =>
                     Current_State := Fast;
                  when Both =>
                     Current_State := Stop;
               end case;

            when Fast =>
               case Buttons is
                  when None | Up =>
                     -- nothing to do
                     Null;
                  when Down =>
                     Current_State := Medium;
                  when Both =>
                     Current_State := Stop;
               end case;
         end case;

         Control_Motor (Current_State);
      
         Utils.Waste_Some_Time;
      end loop;
   end Run;

end Program;
