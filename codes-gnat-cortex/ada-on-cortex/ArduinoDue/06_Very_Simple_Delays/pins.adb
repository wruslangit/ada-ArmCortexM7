with Registers;

package body Pins is

   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_11 =>
            Registers.PIOD_PER := 2#1000_0000#;
            Registers.PIOD_OER := 2#1000_0000#;

         when Pin_12 =>
            Registers.PIOD_PER := 2#1_0000_0000#;
            Registers.PIOD_OER := 2#1_0000_0000#;
      end case;
   end Enable_Output;
   
   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_11 =>
            if State then
               Registers.PIOD_SODR := 2#1000_0000#;
            else
               Registers.PIOD_CODR := 2#1000_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.PIOD_SODR := 2#1_0000_0000#;
            else
               Registers.PIOD_CODR := 2#1_0000_0000#;
            end if;
      end case;
   end Write;

end Pins;
