with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#10_0000_0000_0000_0000#; -- bit 17
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000_0000#; -- bit 22
            
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
                or 2#100_0000_0000_0000_0000_0000#; -- bit 22
            
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
                or 2#10_0000_0000_0000_0000#; -- bit 17
            
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
                or 2#10_0000_0000_0000_0000#; -- bit 17
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#100_0000_0000_0000_0000#; -- bit 18
            
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
                or 2#10_0000_0000_0000_0000#; -- bit 17
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0001_0000_0000_0000_0000_0000_0000#; -- bits 24-25

         when Pin_3 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0001#; -- bits 0-1

         when Pin_4 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0100_0000_0000_0000#; -- bits 14-15

         when Pin_5 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0001_0000_0000_0000#; -- bits 12-13

         when Pin_6 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0100#; -- bits 2-3

         when Pin_7 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000_0000#; -- bit 22
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_1100#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0001#; -- bits 0-1

         when Pin_8 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000_0000#; -- bit 22
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1111_1111_1111_1111_1111_1111_0011#)
                or 2#0000_0000_0000_0000_0000_0000_0000_0100#; -- bits 2-3

         when Pin_9 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#10_0000_0000_0000_0000#; -- bit 17
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1100_1111_1111_1111_1111#)
                or 2#0000_0000_0000_0001_0000_0000_0000_0000#; -- bits 16-17

         when Pin_10 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#10_0000_0000_0000_0000#; -- bit 17
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                or 2#0000_0000_0100_0000_0000_0000_0000_0000#; -- bits 22-23

         when Pin_11 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0100_0000_0000#; -- bits 10-11

         when Pin_12 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
            Registers.GPIOB_MODER := (Registers.GPIOB_MODER
               and 2#1111_1111_1111_1111_1111_1100_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0001_0000_0000#; -- bits 8-9

         when Pin_13 =>
            Registers.RCC_AHBENR := Registers.RCC_AHBENR
                or 2#100_0000_0000_0000_0000#; -- bit 18
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
            State := (Data and 2#1_0000_0000_0000#) /= 0; -- bit 12

         when Pin_3 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#1#) /= 0; -- bit 0

         when Pin_4 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#1000_0000#) /= 0; -- bit 7

         when Pin_5 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#100_0000#) /= 0; -- bit 6

         when Pin_6 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#10#) /= 0; -- bit 1

         when Pin_7 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and 2#1#) /= 0; -- bit 0

         when Pin_8 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and 2#10#) /= 0; -- bit 1

         when Pin_9 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and 2#1_0000_0000#) /= 0; -- bit 8

         when Pin_10 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and 2#1000_0000_0000#) /= 0; -- bit 11

         when Pin_11 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#10_0000#) /= 0; -- bit 5

         when Pin_12 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#1_0000#) /= 0; -- bit 4

         when Pin_13 =>
            Data := Registers.GPIOB_IDR;
            State := (Data and 2#1000#) /= 0; -- bit 3
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOA_BSRR := 2#1_0000_0000_0000#; -- bit 12
            else
               Registers.GPIOA_BRR := 2#1_0000_0000_0000#;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOB_BSRR := 2#1#; -- bit 0
            else
               Registers.GPIOB_BRR := 2#1#;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOB_BSRR := 2#1000_0000#; -- bit 7
            else
               Registers.GPIOB_BRR := 2#1000_0000#;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOB_BSRR := 2#100_0000#; -- bit 6
            else
               Registers.GPIOB_BRR := 2#100_0000#;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOB_BSRR := 2#10#; -- bit 1
            else
               Registers.GPIOB_BRR := 2#10#;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOF_BSRR := 2#1#; -- bit 0
            else
               Registers.GPIOF_BRR := 2#1#;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOF_BSRR := 2#10#; -- bit 1
            else
               Registers.GPIOF_BRR := 2#10#;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOA_BSRR := 2#1_0000_0000#; -- bit 8
            else
               Registers.GPIOA_BRR := 2#1_0000_0000#;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOA_BSRR := 2#1000_0000_0000#; -- bit 11
            else
               Registers.GPIOA_BRR := 2#1000_0000_0000#;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOB_BSRR := 2#10_0000#; -- bit 5
            else
               Registers.GPIOB_BRR := 2#10_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOB_BSRR := 2#1_0000#; -- bit 4
            else
               Registers.GPIOB_BRR := 2#1_0000#;
            end if;

         when Pin_13 =>
            if State then
               Registers.GPIOB_BSRR := 2#1000#; -- bit 3
            else
               Registers.GPIOB_BRR := 2#1000#;
            end if;
      end case;
   end Write;

end Pins;
