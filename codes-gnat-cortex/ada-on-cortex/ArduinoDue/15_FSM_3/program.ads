package Program is

   procedure Run;
   pragma Export (C, Run, "run");

   procedure Handle_Buttons;
   pragma Export (C, Handle_Buttons, "handle_buttons");

end Program;
