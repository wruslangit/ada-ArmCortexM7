with Registers;

package body Pins is

   use type Registers.Byte;
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

   procedure Enable_Interrupts (Pin : in Pin_ID) is
   begin
      Registers.ISER := Registers.Bit_4; -- EIC
      Registers.GCLK_CLKCTRL := 2#0100_0000_0000_0101#; -- GCLK_EIC from GCLKGEN0
      Registers.EIC_CTRL := Registers.Bit_1;
      
      case Pin is
         when Pin_2 => -- PA08 -> EXTINT8
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_8;
            Registers.EIC_CONFIG1 := (Registers.EIC_CONFIG1
              and 2#1111_1111_1111_1111_1111_1111_1111_0000#)
               or 2#0000_0000_0000_0000_0000_0000_0000_0011#;
            Registers.GPIOA_PMUX4 := Registers.GPIOA_PMUX4
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG8 := Registers.GPIOA_PINCFG8
              or Registers.Bit_0;
            
         when Pin_3 => -- PA09 -> EXTINT9
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_9;
            Registers.EIC_CONFIG1 := (Registers.EIC_CONFIG1
              and 2#1111_1111_1111_1111_1111_1111_0000_1111#)
               or 2#0000_0000_0000_0000_0000_0000_0011_0000#;
            Registers.GPIOA_PMUX4 := Registers.GPIOA_PMUX4
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG9 := Registers.GPIOA_PINCFG9
              or Registers.Bit_0;
            
         when Pin_4 => -- PA14 -> EXTINT14
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_14;
            Registers.EIC_CONFIG1 := (Registers.EIC_CONFIG1
              and 2#1111_0000_1111_1111_1111_1111_1111_1111#)
               or 2#0000_0011_0000_0000_0000_0000_0000_0000#;
            Registers.GPIOA_PMUX7 := Registers.GPIOA_PMUX7
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG14 := Registers.GPIOA_PINCFG14
              or Registers.Bit_0;
            
         when Pin_5 => -- PA15 -> EXTINT15
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_15;
            Registers.EIC_CONFIG1 := (Registers.EIC_CONFIG1
              and 2#0000_1111_1111_1111_1111_1111_1111_1111#)
               or 2#0011_0000_0000_0000_0000_0000_0000_0000#;
            Registers.GPIOA_PMUX7 := Registers.GPIOA_PMUX7
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG15 := Registers.GPIOA_PINCFG15
              or Registers.Bit_0;
            
         when Pin_6 => -- PA20 -> EXTINT4
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_4;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_1111_0000_1111_1111_1111_1111#)
               or 2#0000_0000_0000_0011_0000_0000_0000_0000#;
            Registers.GPIOA_PMUX10 := Registers.GPIOA_PMUX10
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG20 := Registers.GPIOA_PINCFG20
              or Registers.Bit_0;
            
         when Pin_7 => -- PA21 -> EXTINT5
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_5;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_0000_1111_1111_1111_1111_1111#)
               or 2#0000_0000_0011_0000_0000_0000_0000_0000#;
            Registers.GPIOA_PMUX10 := Registers.GPIOA_PMUX10
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG21 := Registers.GPIOA_PINCFG21
              or Registers.Bit_0;
            
         when Pin_8 => -- PA06 -> EXTINT6
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_6;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_0000_1111_1111_1111_1111_1111_1111#)
               or 2#0000_0011_0000_0000_0000_0000_0000_0000#;
            Registers.GPIOA_PMUX3 := Registers.GPIOA_PMUX3
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG6 := Registers.GPIOA_PINCFG6
              or Registers.Bit_0;
            
         when Pin_9 => -- PA07 -> EXTINT9
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_9;
            Registers.EIC_CONFIG1 := (Registers.EIC_CONFIG1
              and 2#1111_1111_1111_1111_1111_1111_0000_1111#)
               or 2#0000_0000_0000_0000_0000_0000_0011_0000#;
            Registers.GPIOA_PMUX3 := Registers.GPIOA_PMUX3
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG7 := Registers.GPIOA_PINCFG7
              or Registers.Bit_0;
            
         when Pin_10 => -- PA18 -> EXTINT2
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_2;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_1111_1111_1111_0000_1111_1111#)
               or 2#0000_0000_0000_0000_0000_0011_0000_0000#;
            Registers.GPIOA_PMUX9 := Registers.GPIOA_PMUX9
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG18 := Registers.GPIOA_PINCFG18
              or Registers.Bit_0;
            
         when Pin_11 => -- PA16 -> EXTINT0
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_0;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_1111_1111_1111_1111_1111_0000#)
               or 2#0000_0000_0000_0000_0000_0000_0000_0011#;
            Registers.GPIOA_PMUX8 := Registers.GPIOA_PMUX8
              and 2#1111_0000#;
            Registers.GPIOA_PINCFG16 := Registers.GPIOA_PINCFG16
              or Registers.Bit_0;
            
         when Pin_12 => -- PA19 -> EXTINT3
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_3;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_1111_1111_0000_1111_1111_1111#)
               or 2#0000_0000_0000_0000_0011_0000_0000_0000#;
            Registers.GPIOA_PMUX9 := Registers.GPIOA_PMUX9
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG19 := Registers.GPIOA_PINCFG19
              or Registers.Bit_0;
            
         when Pin_13 => -- PA17 -> EXTINT1
            Registers.EIC_INTENTSET := Registers.EIC_INTENTSET
              or Registers.Bit_1;
            Registers.EIC_CONFIG0 := (Registers.EIC_CONFIG0
              and 2#1111_1111_1111_1111_1111_1111_0000_1111#)
               or 2#0000_0000_0000_0000_0000_0000_0011_0000#;
            Registers.GPIOA_PMUX8 := Registers.GPIOA_PMUX8
              and 2#0000_1111#;
            Registers.GPIOA_PINCFG17 := Registers.GPIOA_PINCFG17
              or Registers.Bit_0;
            
      end case;
   end Enable_Interrupts;
   
   procedure Disable_Interrupts (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.GPIOA_PINCFG8 := Registers.GPIOA_PINCFG8
              and (not Registers.Bit_0);
            
         when Pin_3 =>
            Registers.GPIOA_PINCFG9 := Registers.GPIOA_PINCFG9
              and (not Registers.Bit_0);
            
         when Pin_4 =>
            Registers.GPIOA_PINCFG14 := Registers.GPIOA_PINCFG14
              and (not Registers.Bit_0);
            
         when Pin_5 =>
            Registers.GPIOA_PINCFG15 := Registers.GPIOA_PINCFG15
              and (not Registers.Bit_0);
            
         when Pin_6 =>
            Registers.GPIOA_PINCFG20 := Registers.GPIOA_PINCFG20
              and (not Registers.Bit_0);
            
         when Pin_7 =>
            Registers.GPIOA_PINCFG21 := Registers.GPIOA_PINCFG21
              and (not Registers.Bit_0);
            
         when Pin_8 =>
            Registers.GPIOA_PINCFG6 := Registers.GPIOA_PINCFG6
              and (not Registers.Bit_0);
            
         when Pin_9 =>
            Registers.GPIOA_PINCFG7 := Registers.GPIOA_PINCFG7
              and (not Registers.Bit_0);
            
         when Pin_10 =>
            Registers.GPIOA_PINCFG18 := Registers.GPIOA_PINCFG18
              and (not Registers.Bit_0);
            
         when Pin_11 =>
            Registers.GPIOA_PINCFG16 := Registers.GPIOA_PINCFG16
              and (not Registers.Bit_0);
            
         when Pin_12 =>
            Registers.GPIOA_PINCFG19 := Registers.GPIOA_PINCFG19
              and (not Registers.Bit_0);
            
         when Pin_13 =>
            Registers.GPIOA_PINCFG17 := Registers.GPIOA_PINCFG17
              and (not Registers.Bit_0);
            
      end case;
   end Disable_Interrupts;
   
   procedure Clear_Interrupt (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.EIC_INTFLAG := Registers.Bit_8;
            
         when Pin_3 =>
            Registers.EIC_INTFLAG := Registers.Bit_9;
            
         when Pin_4 =>
            Registers.EIC_INTFLAG := Registers.Bit_14;
            
         when Pin_5 =>
            Registers.EIC_INTFLAG := Registers.Bit_15;
            
         when Pin_6 =>
            Registers.EIC_INTFLAG := Registers.Bit_4;
            
         when Pin_7 =>
            Registers.EIC_INTFLAG := Registers.Bit_5;
            
         when Pin_8 =>
            Registers.EIC_INTFLAG := Registers.Bit_6;
            
         when Pin_9 =>
            Registers.EIC_INTFLAG := Registers.Bit_9;
            
         when Pin_10 =>
            Registers.EIC_INTFLAG := Registers.Bit_2;
            
         when Pin_11 =>
            Registers.EIC_INTFLAG := Registers.Bit_0;
            
         when Pin_12 =>
            Registers.EIC_INTFLAG := Registers.Bit_3;
            
         when Pin_13 =>
            Registers.EIC_INTFLAG := Registers.Bit_1;
            
      end case;
   end Clear_Interrupt;
   
end Pins;
