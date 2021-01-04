with Pins;
with Utils;

package body Program is

   type Fan_State is (Stop, Slow, Medium, Fast);

   Current_State : Fan_State;
   
   type Buttons_State is (None, Up, Down, Both);

   type Transition_Table is array (Fan_State, Buttons_State) of Fan_State;

   Transitions : constant Transition_Table :=
      (Stop   => (None => Stop,   Up => Slow,   Down => Stop,   Both => Stop),
       Slow   => (None => Slow,   Up => Medium, Down => Stop,   Both => Stop),
       Medium => (None => Medium, Up => Fast,   Down => Slow,   Both => Stop),
       Fast   => (None => Fast,   Up => Fast,   Down => Medium, Both => Stop));

   subtype Output_Pins is Pins.Pin_ID range Pins.Pin_4 .. Pins.Pin_6;
   
   type Output_Mapping_Array is array (Fan_State, Output_Pins) of Boolean;
   
   Outputs : constant Output_Mapping_Array :=
      (Stop   => (False, False, False),
       Slow   => (True,  False, False),
       Medium => (False, True,  False),
       Fast   => (False, False, True));

   procedure Control_Motor is
   begin
      Pins.Write (Pins.Pin_4, Outputs (Current_State, Pins.Pin_4));
      Pins.Write (Pins.Pin_5, Outputs (Current_State, Pins.Pin_5));
      Pins.Write (Pins.Pin_6, Outputs (Current_State, Pins.Pin_6));
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

   -- interrupt handler:
   procedure Handle_Buttons is
      Buttons : Buttons_State;
   begin
      Read_Buttons (Buttons);
      
      Current_State := Transitions (Current_State, Buttons);
      
      Control_Motor;
      
      Utils.Waste_Some_Time;
      Pins.Clear_Interrupt (Pins.Pin_2);
      Pins.Clear_Interrupt (Pins.Pin_3);
   end Handle_Buttons;
   
   procedure Run is
   begin

      -- initialize the device
      Pins.Enable_Input (Pins.Pin_2, Pins.Pulled_Up);
      Pins.Enable_Input (Pins.Pin_3, Pins.Pulled_Up);
      Pins.Enable_Output (Pins.Pin_4);
      Pins.Enable_Output (Pins.Pin_5);
      Pins.Enable_Output (Pins.Pin_6);

      Current_State := Stop;
      Control_Motor;
   
      -- allow interrupts
      Utils.Enable_Interrupts;
      Pins.Enable_Interrupts (Pins.Pin_2);
      Pins.Enable_Interrupts (Pins.Pin_3);

      -- do nothing,
      -- the whole activity is driven by interrupts
      loop
         Utils.Wait_For_Interrupt;
      end loop;
   end Run;

end Program;
