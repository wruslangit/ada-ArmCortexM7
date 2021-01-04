with Registers;

package body Pins is

   use type Registers.Word;
   
   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_8;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG8 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_8;
            else
               Registers.GPIOA_PINCFG8 := 2#0000_0010#;
            end if;

         when Pin_3 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_9;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG9 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_9;
            else
               Registers.GPIOA_PINCFG9 := 2#0000_0010#;
            end if;

         when Pin_4 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_14;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG14 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_14;
            else
               Registers.GPIOA_PINCFG14 := 2#0000_0010#;
            end if;

         when Pin_5 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_15;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG15 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_15;
            else
               Registers.GPIOA_PINCFG15 := 2#0000_0010#;
            end if;

         when Pin_6 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_20;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG20 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_20;
            else
               Registers.GPIOA_PINCFG20 := 2#0000_0010#;
            end if;

         when Pin_7 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_21;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG21 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_21;
            else
               Registers.GPIOA_PINCFG21 := 2#0000_0010#;
            end if;

         when Pin_8 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_6;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG6 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_6;
            else
               Registers.GPIOA_PINCFG6 := 2#0000_0010#;
            end if;

         when Pin_9 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_7;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG7 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_7;
            else
               Registers.GPIOA_PINCFG7 := 2#0000_0010#;
            end if;

         when Pin_10 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_18;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG18 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_18;
            else
               Registers.GPIOA_PINCFG18 := 2#0000_0010#;
            end if;

         when Pin_11 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_16;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG16 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_16;
            else
               Registers.GPIOA_PINCFG16 := 2#0000_0010#;
            end if;

         when Pin_12 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_19;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG19 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_19;
            else
               Registers.GPIOA_PINCFG19 := 2#0000_0010#;
            end if;

         when Pin_13 =>
            Registers.GPIOA_DIRCLR := Registers.Bit_17;
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG17 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := Registers.Bit_17;
            else
               Registers.GPIOA_PINCFG17 := 2#0000_0010#;
            end if;

      end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.GPIOA_DIRSET := Registers.Bit_8;

         when Pin_3 =>
            Registers.GPIOA_DIRSET := Registers.Bit_9;

         when Pin_4 =>
            Registers.GPIOA_DIRSET := Registers.Bit_14;

         when Pin_5 =>
            Registers.GPIOA_DIRSET := Registers.Bit_15;

         when Pin_6 =>
            Registers.GPIOA_DIRSET := Registers.Bit_20;

         when Pin_7 =>
            Registers.GPIOA_DIRSET := Registers.Bit_21;

         when Pin_8 =>
            Registers.GPIOA_DIRSET := Registers.Bit_6;

         when Pin_9 =>
            Registers.GPIOA_DIRSET := Registers.Bit_7;

         when Pin_10 =>
            Registers.GPIOA_DIRSET := Registers.Bit_18;

         when Pin_11 =>
            Registers.GPIOA_DIRSET := Registers.Bit_16;

         when Pin_12 =>
            Registers.GPIOA_DIRSET := Registers.Bit_19;
            
         when Pin_13 =>
            Registers.GPIOA_DIRSET := Registers.Bit_17;

      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      Data := Registers.GPIOA_IN;
      
      case Pin is
         when Pin_2 =>
            State := (Data and Registers.Bit_8) /= 0;

         when Pin_3 =>
            State := (Data and Registers.Bit_9) /= 0;

         when Pin_4 =>
            State := (Data and Registers.Bit_14) /= 0;

         when Pin_5 =>
            State := (Data and Registers.Bit_15) /= 0;

         when Pin_6 =>
            State := (Data and Registers.Bit_20) /= 0;

         when Pin_7 =>
            State := (Data and Registers.Bit_21) /= 0;

         when Pin_8 =>
            State := (Data and Registers.Bit_6) /= 0;

         when Pin_9 =>
            State := (Data and Registers.Bit_7) /= 0;

         when Pin_10 =>
            State := (Data and Registers.Bit_18) /= 0;

         when Pin_11 =>
            State := (Data and Registers.Bit_16) /= 0;

         when Pin_12 =>
            State := (Data and Registers.Bit_19) /= 0;
            
         when Pin_13 =>
            State := (Data and Registers.Bit_17) /= 0;
      end case;
   end Read;
   
   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_8;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_8;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_9;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_9;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_14;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_14;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_15;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_15;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_20;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_20;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_21;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_21;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_6;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_6;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_7;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_7;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_18;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_18;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_16;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_16;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_19;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_19;
            end if;
            
         when Pin_13 =>
            if State then
               Registers.GPIOA_OUTSET := Registers.Bit_17;
            else
               Registers.GPIOA_OUTCLR := Registers.Bit_17;
            end if;
      end case;
   end Write;

end Pins;
