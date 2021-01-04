with Registers;

package body Pins is

   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_11 =>
            Registers.GPIOA_DIRSET := 2#1_0000_0000_0000_0000#;

         when Pin_12 =>
            Registers.GPIOA_DIRSET := 2#1000_0000_0000_0000_0000#;
      end case;
   end Enable_Output;
   
   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_11 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1_0000_0000_0000_0000#;
            else
               Registers.GPIOA_OUTCLR := 2#1_0000_0000_0000_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_OUTCLR := 2#1000_0000_0000_0000_0000#;
            end if;
      end case;
   end Write;

end Pins;
