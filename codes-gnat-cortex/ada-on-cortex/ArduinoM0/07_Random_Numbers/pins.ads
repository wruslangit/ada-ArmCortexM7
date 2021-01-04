package Pins is

   type Pin_ID is ( Pin_11, Pin_12 );
   
   procedure Enable_Output (Pin : in Pin_ID);
   
   procedure Write (Pin : in Pin_ID; State : in Boolean);

end Pins;
