with Registers;

package body Pins is

   procedure Enable_Output (Pin : in Pin_ID) is
      use type Registers.Word;
   begin
      Registers.RCC_AHBENR := Registers.RCC_AHBENR or 2#100_0000_0000_0000_0000#;

      case Pin is
         when Pin_11 =>
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0100_0000_0000#;

         when Pin_12 =>
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1100_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0001_0000_0000#;
      end case;
   end Enable_Output;
   
   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_11 =>
            if State then
               Registers.GPIOB_BSRR := 2#10_0000#;
            else
               Registers.GPIOB_BRR := 2#10_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOB_BSRR := 2#1_0000#;
            else
               Registers.GPIOB_BRR := 2#1_0000#;
            end if;
      end case;
   end Write;

end Pins;
