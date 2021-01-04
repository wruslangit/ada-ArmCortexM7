with Registers;

package body Pins is

   use type Registers.Word;
   
   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.GPIOA_DIRCLR := 2#1_0000_0000#; -- bit 8
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG8 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1_0000_0000#;
            else
               Registers.GPIOA_PINCFG8 := 2#0000_0010#;
            end if;

         when Pin_3 =>
            Registers.GPIOA_DIRCLR := 2#10_0000_0000#; -- bit 9
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG9 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#10_0000_0000#;
            else
               Registers.GPIOA_PINCFG9 := 2#0000_0010#;
            end if;

         when Pin_4 =>
            Registers.GPIOA_DIRCLR := 2#100_0000_0000_0000#; -- bit 14
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG14 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#100_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG14 := 2#0000_0010#;
            end if;

         when Pin_5 =>
            Registers.GPIOA_DIRCLR := 2#1000_0000_0000_0000#; -- bit 15
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG15 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG15 := 2#0000_0010#;
            end if;

         when Pin_6 =>
            Registers.GPIOA_DIRCLR := 2#1_0000_0000_0000_0000_0000#; -- bit 20
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG20 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG20 := 2#0000_0010#;
            end if;

         when Pin_7 =>
            Registers.GPIOA_DIRCLR := 2#10_0000_0000_0000_0000_0000#; -- bit 21
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG21 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#10_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG21 := 2#0000_0010#;
            end if;

         when Pin_8 =>
            Registers.GPIOA_DIRCLR := 2#100_0000#; -- bit 6
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG6 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#100_0000#;
            else
               Registers.GPIOA_PINCFG6 := 2#0000_0010#;
            end if;

         when Pin_9 =>
            Registers.GPIOA_DIRCLR := 2#1000_0000#; -- bit 7
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG7 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1000_0000#;
            else
               Registers.GPIOA_PINCFG7 := 2#0000_0010#;
            end if;

         when Pin_10 =>
            Registers.GPIOA_DIRCLR := 2#100_0000_0000_0000_0000#; -- bit 18
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG18 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#100_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG18 := 2#0000_0010#;
            end if;

         when Pin_11 =>
            Registers.GPIOA_DIRCLR := 2#1_0000_0000_0000_0000#; -- bit 16
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG16 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG16 := 2#0000_0010#;
            end if;

         when Pin_12 =>
            Registers.GPIOA_DIRCLR := 2#1000_0000_0000_0000_0000#; -- bit 19
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG19 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#1000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG19 := 2#0000_0010#;
            end if;

         when Pin_13 =>
            Registers.GPIOA_DIRCLR := 2#10_0000_0000_0000_0000#; -- bit 17
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PINCFG17 := 2#0000_0110#;
               Registers.GPIOA_OUTSET := 2#10_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PINCFG17 := 2#0000_0010#;
            end if;

      end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.GPIOA_DIRSET := 2#1_0000_0000#; -- bit 8

         when Pin_3 =>
            Registers.GPIOA_DIRSET := 2#10_0000_0000#; -- bit 9

         when Pin_4 =>
            Registers.GPIOA_DIRSET := 2#100_0000_0000_0000#; -- bit 14

         when Pin_5 =>
            Registers.GPIOA_DIRSET := 2#1000_0000_0000_0000#; -- bit 15

         when Pin_6 =>
            Registers.GPIOA_DIRSET := 2#1_0000_0000_0000_0000_0000#; -- bit 20

         when Pin_7 =>
            Registers.GPIOA_DIRSET := 2#10_0000_0000_0000_0000_0000#; -- bit 21

         when Pin_8 =>
            Registers.GPIOA_DIRSET := 2#100_0000#; -- bit 6

         when Pin_9 =>
            Registers.GPIOA_DIRSET := 2#1000_0000#; -- bit 7

         when Pin_10 =>
            Registers.GPIOA_DIRSET := 2#100_0000_0000_0000_0000#; -- bit 18

         when Pin_11 =>
            Registers.GPIOA_DIRSET := 2#1_0000_0000_0000_0000#; -- bit 16

         when Pin_12 =>
            Registers.GPIOA_DIRSET := 2#1000_0000_0000_0000_0000#; -- bit 19
            
         when Pin_13 =>
            Registers.GPIOA_DIRSET := 2#10_0000_0000_0000_0000#; -- bit 17

      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      Data := Registers.GPIOA_IN;
      
      case Pin is
         when Pin_2 =>
            State := (Data and 2#1_0000_0000#) /= 0; -- bit 8

         when Pin_3 =>
            State := (Data and 2#10_0000_0000#) /= 0; -- bit 9

         when Pin_4 =>
            State := (Data and 2#100_0000_0000_0000#) /= 0; -- bit 14

         when Pin_5 =>
            State := (Data and 2#1000_0000_0000_0000#) /= 0; -- bit 15

         when Pin_6 =>
            State := (Data and 2#1_0000_0000_0000_0000_0000#) /= 0; -- bit 20

         when Pin_7 =>
            State := (Data and 2#10_0000_0000_0000_0000_0000#) /= 0; -- bit 21

         when Pin_8 =>
            State := (Data and 2#100_0000#) /= 0; -- bit 6

         when Pin_9 =>
            State := (Data and 2#1000_0000#) /= 0; -- bit 7

         when Pin_10 =>
            State := (Data and 2#100_0000_0000_0000_0000#) /= 0; -- bit 18

         when Pin_11 =>
            State := (Data and 2#1_0000_0000_0000_0000#) /= 0; -- bit 16

         when Pin_12 =>
            State := (Data and 2#1000_0000_0000_0000_0000#) /= 0; -- bit 19
            
         when Pin_13 =>
            State := (Data and 2#10_0000_0000_0000_0000#) /= 0; -- bit 17
      end case;
   end Read;
   
   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1_0000_0000#; -- bit 8
            else
               Registers.GPIOA_OUTCLR := 2#1_0000_0000#;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOA_OUTSET := 2#10_0000_0000#; -- bit 9
            else
               Registers.GPIOA_OUTCLR := 2#10_0000_0000#;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOA_OUTSET := 2#100_0000_0000_0000#; -- bit 14
            else
               Registers.GPIOA_OUTCLR := 2#100_0000_0000_0000#;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1000_0000_0000_0000#; -- bit 15
            else
               Registers.GPIOA_OUTCLR := 2#1000_0000_0000_0000#;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1_0000_0000_0000_0000_0000#; -- bit 20
            else
               Registers.GPIOA_OUTCLR := 2#1_0000_0000_0000_0000_0000#;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOA_OUTSET := 2#10_0000_0000_0000_0000_0000#; -- bit 21
            else
               Registers.GPIOA_OUTCLR := 2#10_0000_0000_0000_0000_0000#;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOA_OUTSET := 2#100_0000#; -- bit 6
            else
               Registers.GPIOA_OUTCLR := 2#100_0000#;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1000_0000#; -- bit 7
            else
               Registers.GPIOA_OUTCLR := 2#1000_0000#;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOA_OUTSET := 2#100_0000_0000_0000_0000#; -- bit 18
            else
               Registers.GPIOA_OUTCLR := 2#100_0000_0000_0000_0000#;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1_0000_0000_0000_0000#; -- bit 16
            else
               Registers.GPIOA_OUTCLR := 2#1_0000_0000_0000_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOA_OUTSET := 2#1000_0000_0000_0000_0000#; -- bit 19
            else
               Registers.GPIOA_OUTCLR := 2#1000_0000_0000_0000_0000#;
            end if;
            
         when Pin_13 =>
            if State then
               Registers.GPIOA_OUTSET := 2#10_0000_0000_0000_0000#; -- bit 17
            else
               Registers.GPIOA_OUTCLR := 2#10_0000_0000_0000_0000#;
            end if;
      end case;
   end Write;

end Pins;
