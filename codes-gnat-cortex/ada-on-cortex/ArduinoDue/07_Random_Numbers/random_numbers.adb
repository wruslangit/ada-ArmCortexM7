package body Random_Numbers is

   use type Registers.Word;

   procedure Enable_Generator is
      Key : constant := 16#524e4700#;
   begin
      Registers.PMC_PCER1 := 2#10_0000_0000#; -- 10th bit
      Registers.TRNG_CR := Key or 2#1#;
   end Enable_Generator;
   
   procedure Read_Next_Value (V : out Registers.Word) is
      Ready : Registers.Word;
   begin
      -- make sure new value is available:
      loop
         Ready := Registers.TRNG_ISR;
         exit when (Ready and 2#1#) /= 0;
      end loop;
      
      V := Registers.TRNG_ODATA;
   end Read_Next_Value;

end Random_Numbers;
