package Program is

   procedure Run;
   pragma Export (C, Run, "run");

   procedure Button_Pressed;
   pragma Export (C, Button_Pressed, "button_pressed");

end Program;
