with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#; -- bit pair 24-25
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0001_0000_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_3 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#; -- bit pair 0-1
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                   or 2#0000_0000_0000_0000_0000_0000_0000_0001#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_1100#;
            end if;

         when Pin_4 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#; -- bit pair 14-15
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0100_0000_0000_0000#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#;
            end if;

         when Pin_5 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#; -- bit pair 12-13
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0001_0000_0000_0000#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#;
            end if;

         when Pin_6 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#; -- bit pair 2-3
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                   or 2#0000_0000_0000_0000_0000_0000_0000_0100#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_0011#;
            end if;

         when Pin_7 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_22;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#; -- bit pair 0-1
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                   or 2#0000_0000_0000_0000_0000_0000_0000_0001#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_1100#;
            end if;

         when Pin_8 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_22;
            
            Registers.GPIOF_MODER := Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#; -- bit pair 1-2
            
            if Mode = Pulled_Up then
               Registers.GPIOF_PUPDR := (Registers.GPIOF_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                   or 2#0000_0000_0000_0000_0000_0000_0000_0100#;
            else
               Registers.GPIOF_PUPDR := Registers.GPIOF_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_1111_0011#;
            end if;

         when Pin_9 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1111_1111_1100_1111_1111_1111_1111#; -- bit pair 16-17
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1100_1111_1111_1111_1111#)
                   or 2#0000_0000_0000_0001_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1111_1111_1100_1111_1111_1111_1111#;
            end if;

         when Pin_10 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            
            Registers.GPIOA_MODER := Registers.GPIOA_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#; -- bit pair 22-23
            
            if Mode = Pulled_Up then
               Registers.GPIOA_PUPDR := (Registers.GPIOA_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                   or 2#0000_0000_0100_0000_0000_0000_0000_0000#;
            else
               Registers.GPIOA_PUPDR := Registers.GPIOA_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#;
            end if;

         when Pin_11 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#; -- bit pair 10-11
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                   or 2#0000_0000_0000_0000_0000_0100_0000_0000#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#;
            end if;

         when Pin_12 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1100_1111_1111#; -- bit pair 8-9
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1100_1111_1111#)
                   or 2#0000_0000_0000_0000_0000_0001_0000_0000#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1100_1111_1111#;
            end if;

         when Pin_13 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            
            Registers.GPIOB_MODER := Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_0011_1111#; -- bit pair 6-7
            
            if Mode = Pulled_Up then
               Registers.GPIOB_PUPDR := (Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_0011_1111#)
                   or 2#0000_0000_0000_0000_0000_0000_0100_0000#;
            else
               Registers.GPIOB_PUPDR := Registers.GPIOB_PUPDR
                  and 2#1111_1111_1111_1111_1111_1111_0011_1111#;
            end if;

         end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0001_0000_0000_0000_0000_0000_0000#; -- bits 24-25

         when Pin_3 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0001#; -- bits 0-1

         when Pin_4 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0100_0000_0000_0000#; -- bits 14-15

         when Pin_5 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0001_0000_0000_0000#; -- bits 12-13

         when Pin_6 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0100#; -- bits 2-3

         when Pin_7 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_22;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0001#; -- bits 0-1

         when Pin_8 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_22;
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0100#; -- bits 2-3

         when Pin_9 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1100_1111_1111_1111_1111#)
                or 2#0000_0000_0000_0001_0000_0000_0000_0000#; -- bits 16-17

         when Pin_10 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_17;
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                or 2#0000_0000_0100_0000_0000_0000_0000_0000#; -- bits 22-23

         when Pin_11 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0100_0000_0000#; -- bits 10-11

         when Pin_12 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1100_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0001_0000_0000#; -- bits 8-9

         when Pin_13 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or Registers.Bit_18;
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_0011_1111#)
                or 2#0000_0000_0000_0000_0000_0000_0100_0000#; -- bits 6-7
      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      case Pin is
         when Pin_2 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_12) /= 0;

         when Pin_3 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_0) /= 0;

         when Pin_4 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_7) /= 0;

         when Pin_5 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_6) /= 0;

         when Pin_6 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_1) /= 0;

         when Pin_7 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_0) /= 0;

         when Pin_8 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and Registers.Bit_1) /= 0;

         when Pin_9 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_8) /= 0;

         when Pin_10 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and Registers.Bit_11) /= 0;

         when Pin_11 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_5) /= 0;

         when Pin_12 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_4) /= 0;

         when Pin_13 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and Registers.Bit_3) /= 0;
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_12;
            else
               Registers.GPIOA_BRR := Registers.Bit_12;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_0;
            else
               Registers.GPIOB_BRR := Registers.Bit_0;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_7;
            else
               Registers.GPIOB_BRR := Registers.Bit_7;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_6;
            else
               Registers.GPIOB_BRR := Registers.Bit_6;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_1;
            else
               Registers.GPIOB_BRR := Registers.Bit_1;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_0;
            else
               Registers.GPIOF_BRR := Registers.Bit_0;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOF_BSRR := Registers.Bit_1;
            else
               Registers.GPIOF_BRR := Registers.Bit_1;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_8;
            else
               Registers.GPIOA_BRR := Registers.Bit_8;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOA_BSRR := Registers.Bit_11;
            else
               Registers.GPIOA_BRR := Registers.Bit_11;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_5;
            else
               Registers.GPIOB_BRR := Registers.Bit_5;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_4;
            else
               Registers.GPIOB_BRR := Registers.Bit_4;
            end if;

         when Pin_13 =>
            if State then
               Registers.GPIOB_BSRR := Registers.Bit_3;
            else
               Registers.GPIOB_BRR := Registers.Bit_3;
            end if;
      end case;
   end Write;

end Pins;
