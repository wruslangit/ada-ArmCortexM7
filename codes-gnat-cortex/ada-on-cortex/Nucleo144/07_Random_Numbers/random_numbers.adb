package body Random_Numbers is

   use type Registers.Word;

   procedure Enable_Generator is
   begin
      Registers.RCC_CR := Registers.RCC_CR
         or 2#1_0000_0000_0000_0000_0000_0000#; -- bit 24
      Registers.RCC_AHB2ENR := Registers.RCC_AHB2ENR
         or 2#100_0000#; -- bit 6
      Registers.RNG_CR := 2#100#; -- bit 2
   end Enable_Generator;
   
   procedure Read_Next_Value (V : out Registers.Word) is
      Ready : Registers.Word;
   begin
      -- make sure new value is available:
      loop
         Ready := Registers.RNG_SR;
         exit when (Ready and 2#1#) /= 0;
      end loop;
      
      V := Registers.RNG_DR;
   end Read_Next_Value;

end Random_Numbers;
