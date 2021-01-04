with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#; -- bits 30-31
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0100_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_3 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            
            Registers.GPIOE_MODER := Registers.GPIOE_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#; -- bits 26-27
            
            if Mode = Pulled_Up then
               Registers.GPIOE_PUPDR := (Registers.GPIOE_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0100_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOE_PUPDR := Registers.GPIOE_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_4 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#; -- bits 28-29
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0001_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_5 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            
            Registers.GPIOE_MODER := Registers.GPIOE_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#; -- bits 22-23
            
            if Mode = Pulled_Up then
               Registers.GPIOE_PUPDR := (Registers.GPIOE_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                   or 2#0000_0000_0100_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOE_PUPDR := Registers.GPIOE_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#;
            end if;

         when Pin_6 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            
            Registers.GPIOE_MODER := Registers.GPIOE_MODER
               and 2#1111_1111_1111_0011_1111_1111_1111_1111#; -- bits 18-19
            
            if Mode = Pulled_Up then
               Registers.GPIOE_PUPDR := (Registers.GPIOE_PUPDR
                  and 2#1111_1111_1111_0011_1111_1111_1111_1111#)
                   or 2#0000_0000_0000_0100_0000_0000_0000_0000#;
            else
               Registers.GPIOE_PUPDR := Registers.GPIOE_PUPDR
                  and 2#1111_1111_1111_0011_1111_1111_1111_1111#;
            end if;

         when Pin_7 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#; -- bits 26-27
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0100_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_8 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#; -- bits 24-25
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0001_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_9 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_3;
            
            Registers.GPIOD_MODER := Registers.GPIOD_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#; -- bit pair 30-31
            
            if Mode = Pulled_Up then
               Registers.GPIOD_PUPDR := (Registers.GPIOD_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0100_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOD_PUPDR := Registers.GPIOD_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_10 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_3;
            
            Registers.GPIOD_MODER := Registers.GPIOD_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#; -- bit pair 28-29
            
            if Mode = Pulled_Up then
               Registers.GPIOD_PUPDR := (Registers.GPIOD_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0001_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOD_PUPDR := Registers.GPIOD_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_11 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#; -- bit pair 14-15
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0100_0000_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#;
            end if;

         when Pin_12 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#; -- bit pair 12-13
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0001_0000_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#;
            end if;

         when Pin_13 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#; -- bit pair 10-11
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                   or 2#0000_0000_0000_0000_0000_0100_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#;
            end if;

         end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_3 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_4 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_5 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                or 2#0000_0000_0100_0000_0000_0000_0000_0000#; -- bits 22-23

         when Pin_6 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_4;
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_1111_1111_0011_1111_1111_1111_1111#)
                or 2#0000_0000_0000_0100_0000_0000_0000_0000#; -- bits 18-19

         when Pin_7 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_8 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_5;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0001_0000_0000_0000_0000_0000_0000#; -- bits 24-25

         when Pin_9 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_3;
            Registers.GPIOD_MODER := (Registers.GPIOD_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_10 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_3;
            Registers.GPIOD_MODER := (Registers.GPIOD_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_11 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0100_0000_0000_0000#; -- bits 14-15

         when Pin_12 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0001_0000_0000_0000#; -- bits 12-13

         when Pin_13 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or Registers.Bit_0;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0100_0000_0000#; -- bits 10-11
      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      case Pin is
         when Pin_2 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_15) /= 0;

         when Pin_3 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and Registers.Bit_13) /= 0;

         when Pin_4 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_14) /= 0;

         when Pin_5 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and Registers.Bit_11) /= 0;

         when Pin_6 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and 2#10_0000_0000#) /= 0; -- bit 9

         when Pin_7 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_13) /= 0;

         when Pin_8 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_12) /= 0;

         when Pin_9 =>
            Data := Registers.GPIOD_IDR;
            State := (Data and Registers.Bit_15) /= 0;

         when Pin_10 =>
            Data := Registers.GPIOD_IDR;
            State := (Data and Registers.Bit_14) /= 0;

         when Pin_11 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_7) /= 0;

         when Pin_12 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_6) /= 0;

         when Pin_13 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_5) /= 0;
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_15;
            else
               Registers.GPIOF_BSRR := Registers.Bit_31;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOE_BSRR := Registers.Bit_13;
            else
               Registers.GPIOE_BSRR := Registers.Bit_29;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_14;
            else
               Registers.GPIOF_BSRR := Registers.Bit_30;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOE_BSRR := Registers.Bit_11;
            else
               Registers.GPIOE_BSRR := Registers.Bit_27;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOE_BSRR := Registers.Bit_9;
            else
               Registers.GPIOE_BSRR := Registers.Bit_25;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_13;
            else
               Registers.GPIOF_BSRR := Registers.Bit_29;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_12;
            else
               Registers.GPIOF_BSRR := Registers.Bit_28;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOD_BSRR := Registers.Bit_15;
            else
               Registers.GPIOD_BSRR := Registers.Bit_31;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOD_BSRR := Registers.Bit_14;
            else
               Registers.GPIOD_BSRR := Registers.Bit_30;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_7;
            else
               Registers.GPIOA_BSRR := Registers.Bit_23;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_6;
            else
               Registers.GPIOA_BSRR := Registers.Bit_22;
            end if;

         when Pin_13 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_5;
            else
               Registers.GPIOA_BSRR := Registers.Bit_21;
            end if;
      end case;
   end Write;

end Pins;
