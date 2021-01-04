with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            
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
                or 2#1_0000#; -- bit 4
            
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
                or 2#10_0000#; -- bit 5
            
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
                or 2#1_0000#; -- bit 4
            
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
                or 2#1_0000#; -- bit 4
            
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
                or 2#10_0000#; -- bit 5
            
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
                or 2#10_0000#; -- bit 5
            
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
                or 2#1000#; -- bit 3
            
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
                or 2#1000#; -- bit 3
            
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
                or 2#1#; -- bit 0
            
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
                or 2#1#; -- bit 0
            
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
                or 2#1#; -- bit 0
            
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
                or 2#10_0000#; -- bit 5
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_3 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_4 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_5 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                or 2#0000_0000_0100_0000_0000_0000_0000_0000#; -- bits 22-23

         when Pin_6 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            Registers.GPIOE_MODER := (Registers.GPIOE_MODER
               and 2#1111_1111_1111_0011_1111_1111_1111_1111#)
                or 2#0000_0000_0000_0100_0000_0000_0000_0000#; -- bits 18-19

         when Pin_7 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_8 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            Registers.GPIOF_MODER := (Registers.GPIOF_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0001_0000_0000_0000_0000_0000_0000#; -- bits 24-25

         when Pin_9 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            Registers.GPIOD_MODER := (Registers.GPIOD_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_10 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            Registers.GPIOD_MODER := (Registers.GPIOD_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_11 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1#; -- bit 0
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0100_0000_0000_0000#; -- bits 14-15

         when Pin_12 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1#; -- bit 0
            Registers.GPIOA_MODER := (Registers.GPIOA_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0001_0000_0000_0000#; -- bits 12-13

         when Pin_13 =>
            Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR
                or 2#1#; -- bit 0
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
            State := (Data and 2#1000_0000_0000_0000#) /= 0; -- bit 15

         when Pin_3 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and 2#10_0000_0000_0000#) /= 0; -- bit 13

         when Pin_4 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and 2#100_0000_0000_0000#) /= 0; -- bit 14

         when Pin_5 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and 2#1000_0000_0000#) /= 0; -- bit 11

         when Pin_6 =>
            Data := Registers.GPIOE_IDR;
            State := (Data and 2#10_0000_0000#) /= 0; -- bit 9

         when Pin_7 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and 2#10_0000_0000_0000#) /= 0; -- bit 13

         when Pin_8 =>
            Data := Registers.GPIOF_IDR;
            State := (Data and 2#1_0000_0000_0000#) /= 0; -- bit 12

         when Pin_9 =>
            Data := Registers.GPIOD_IDR;
            State := (Data and 2#1000_0000_0000_0000#) /= 0; -- bit 15

         when Pin_10 =>
            Data := Registers.GPIOD_IDR;
            State := (Data and 2#100_0000_0000_0000#) /= 0; -- bit 14

         when Pin_11 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and 2#1000_0000#) /= 0; -- bit 7

         when Pin_12 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and 2#100_0000#) /= 0; -- bit 6

         when Pin_13 =>
            Data := Registers.GPIOA_IDR;
            State := (Data and 2#10_0000#) /= 0; -- bit 5
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.GPIOF_BSRR := 2#1000_0000_0000_0000#; -- bit 15
            else
               Registers.GPIOF_BSRR := 2#1000_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_3 =>
            if State then
               Registers.GPIOE_BSRR := 2#10_0000_0000_0000#; -- bit 13
            else
               Registers.GPIOE_BSRR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_4 =>
            if State then
               Registers.GPIOF_BSRR := 2#100_0000_0000_0000#; -- bit 14
            else
               Registers.GPIOF_BSRR := 2#100_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_5 =>
            if State then
               Registers.GPIOE_BSRR := 2#1000_0000_0000#; -- bit 11
            else
               Registers.GPIOE_BSRR := 2#1000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_6 =>
            if State then
               Registers.GPIOE_BSRR := 2#10_0000_0000#; -- bit 9
            else
               Registers.GPIOE_BSRR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_7 =>
            if State then
               Registers.GPIOF_BSRR := 2#10_0000_0000_0000#; -- bit 13
            else
               Registers.GPIOF_BSRR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_8 =>
            if State then
               Registers.GPIOF_BSRR := 2#1_0000_0000_0000#; -- bit 12
            else
               Registers.GPIOF_BSRR := 2#1_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_9 =>
            if State then
               Registers.GPIOD_BSRR := 2#1000_0000_0000_0000#; -- bit 15
            else
               Registers.GPIOD_BSRR := 2#1000_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_10 =>
            if State then
               Registers.GPIOD_BSRR := 2#100_0000_0000_0000#; -- bit 14
            else
               Registers.GPIOD_BSRR := 2#100_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_11 =>
            if State then
               Registers.GPIOA_BSRR := 2#1000_0000#; -- bit 7
            else
               Registers.GPIOA_BSRR := 2#1000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.GPIOA_BSRR := 2#100_0000#; -- bit 6
            else
               Registers.GPIOA_BSRR := 2#100_0000_0000_0000_0000_0000#;
            end if;

         when Pin_13 =>
            if State then
               Registers.GPIOA_BSRR := 2#10_0000#; -- bit 5
            else
               Registers.GPIOA_BSRR := 2#10_0000_0000_0000_0000_0000#;
            end if;
      end case;
   end Write;

end Pins;
