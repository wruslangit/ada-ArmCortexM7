package Pins is

   type Pin_ID is ( Pin_2, Pin_3, Pin_4, Pin_5,
      Pin_6, Pin_7, Pin_8, Pin_9,
      Pin_10, Pin_11, Pin_12, Pin_13 );
   
   type Input_Mode is (Direct, Pulled_Up);
   
   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode);
   procedure Enable_Output (Pin : in Pin_ID);
   
   procedure Read (Pin : in Pin_ID; State : out Boolean);
   procedure Write (Pin : in Pin_ID; State : in Boolean);

end Pins;
