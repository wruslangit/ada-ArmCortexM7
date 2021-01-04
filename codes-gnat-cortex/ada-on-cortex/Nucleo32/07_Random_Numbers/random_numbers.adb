package body Random_Numbers is

   procedure Enable_Generator is
   begin
      null;
   end Enable_Generator;
   
   procedure Read_Next_Value (V : out Registers.Word) is
   begin
      V := 42;
   end Read_Next_Value;

end Random_Numbers;
