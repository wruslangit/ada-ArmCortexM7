with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.PMC_PCER0 := 2#1_0000_0000_0000#; -- bit 12
            Registers.PIOB_PER := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            Registers.PIOB_ODR := 2#10_0000_0000_0000_0000_0000_0000#;
            
            if Mode = Pulled_Up then
               Registers.PIOB_PUER := 2#10_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOB_PUDR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_3 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#1_0000_0000_0000_0000_0000_0000_0000#; -- bit 28
            Registers.PIOC_ODR := 2#1_0000_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#1_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#1_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_4 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#100_0000_0000_0000_0000_0000_0000#; -- bit 26
            Registers.PIOC_ODR := 2#100_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#100_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#100_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_5 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            Registers.PIOC_ODR := 2#10_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#10_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_6 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#1_0000_0000_0000_0000_0000_0000#; -- bit 24
            Registers.PIOC_ODR := 2#1_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#1_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#1_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_7 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#1000_0000_0000_0000_0000_0000#; -- bit 23
            Registers.PIOC_ODR := 2#1000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#1000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#1000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_8 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#100_0000_0000_0000_0000_0000#; -- bit 22
            Registers.PIOC_ODR := 2#100_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#100_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#100_0000_0000_0000_0000_0000#;
            end if;

         when Pin_9 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000#; -- bit 21
            Registers.PIOC_ODR := 2#10_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#10_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#10_0000_0000_0000_0000_0000#;
            end if;

         when Pin_10 =>
            Registers.PMC_PCER0 := 2#10_0000_0000_0000#; -- bit 13
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000_0000_0000#; -- bit 29
            Registers.PIOC_ODR := 2#10_0000_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOC_PUDR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_11 =>
            Registers.PMC_PCER0 := 2#100_0000_0000_0000#; -- bit 14
            Registers.PIOD_PER := 2#1000_0000#; -- bit 7
            Registers.PIOD_ODR := 2#1000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOD_PUER := 2#1000_0000#;
            else
               Registers.PIOD_PUDR := 2#1000_0000#;
            end if;

         when Pin_12 =>
            Registers.PMC_PCER0 := 2#100_0000_0000_0000#; -- bit 14
            Registers.PIOD_PER := 2#1_0000_0000#; -- bit 8
            Registers.PIOD_ODR := 2#1_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOD_PUER := 2#1_0000_0000#;
            else
               Registers.PIOD_PUDR := 2#1_0000_0000#;
            end if;

         when Pin_13 =>
            Registers.PMC_PCER0 := 2#1_0000_0000_0000#; -- bit 12
            Registers.PIOB_PER := 2#1000_0000_0000_0000_0000_0000_0000#; -- bit 27
            Registers.PIOB_ODR := 2#1000_0000_0000_0000_0000_0000_0000#;

            if Mode = Pulled_Up then
               Registers.PIOB_PUER := 2#1000_0000_0000_0000_0000_0000_0000#;
            else
               Registers.PIOB_PUDR := 2#1000_0000_0000_0000_0000_0000_0000#;
            end if;

         end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.PIOB_PER := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            Registers.PIOB_OER := 2#10_0000_0000_0000_0000_0000_0000#;

         when Pin_3 =>
            Registers.PIOC_PER := 2#1_0000_0000_0000_0000_0000_0000_0000#; -- bit 28
            Registers.PIOC_OER := 2#1_0000_0000_0000_0000_0000_0000_0000#;

         when Pin_4 =>
            Registers.PIOC_PER := 2#100_0000_0000_0000_0000_0000_0000#; -- bit 26
            Registers.PIOC_OER := 2#100_0000_0000_0000_0000_0000_0000#;

         when Pin_5 =>
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            Registers.PIOC_OER := 2#10_0000_0000_0000_0000_0000_0000#;

         when Pin_6 =>
            Registers.PIOC_PER := 2#1_0000_0000_0000_0000_0000_0000#; -- bit 24
            Registers.PIOC_OER := 2#1_0000_0000_0000_0000_0000_0000#;

         when Pin_7 =>
            Registers.PIOC_PER := 2#1000_0000_0000_0000_0000_0000#; -- bit 23
            Registers.PIOC_OER := 2#1000_0000_0000_0000_0000_0000#;

         when Pin_8 =>
            Registers.PIOC_PER := 2#100_0000_0000_0000_0000_0000#; -- bit 22
            Registers.PIOC_OER := 2#100_0000_0000_0000_0000_0000#;

         when Pin_9 =>
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000#; -- bit 21
            Registers.PIOC_OER := 2#10_0000_0000_0000_0000_0000#;

         when Pin_10 =>
            Registers.PIOC_PER := 2#10_0000_0000_0000_0000_0000_0000_0000#; -- bit 29
            Registers.PIOC_OER := 2#10_0000_0000_0000_0000_0000_0000_0000#;

         when Pin_11 =>
            Registers.PIOD_PER := 2#1000_0000#; -- bit 7
            Registers.PIOD_OER := 2#1000_0000#;

         when Pin_12 =>
            Registers.PIOD_PER := 2#1_0000_0000#; -- bit 8
            Registers.PIOD_OER := 2#1_0000_0000#;

         when Pin_13 =>
            Registers.PIOB_PER := 2#1000_0000_0000_0000_0000_0000_0000#; -- bit 27
            Registers.PIOB_OER := 2#1000_0000_0000_0000_0000_0000_0000#;
      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      case Pin is
         when Pin_2 =>
            Data := Registers.PIOB_PDSR;
            State := (Data and 2#10_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 25

         when Pin_3 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#1_0000_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 28

         when Pin_4 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#100_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 26

         when Pin_5 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#10_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 25

         when Pin_6 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#1_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 24

         when Pin_7 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#1000_0000_0000_0000_0000_0000#) /= 0; -- bit 23

         when Pin_8 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#100_0000_0000_0000_0000_0000#) /= 0; -- bit 22

         when Pin_9 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#10_0000_0000_0000_0000_0000#) /= 0; -- bit 21

         when Pin_10 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and 2#10_0000_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 29

         when Pin_11 =>
            Data := Registers.PIOD_PDSR;
            State := (Data and 2#1000_0000#) /= 0; -- bit 7

         when Pin_12 =>
            Data := Registers.PIOD_PDSR;
            State := (Data and 2#1_0000_0000#) /= 0; -- bit 8

         when Pin_13 =>
            Data := Registers.PIOB_PDSR;
            State := (Data and 2#1000_0000_0000_0000_0000_0000_0000#) /= 0; -- bit 27
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.PIOB_SODR := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            else
               Registers.PIOB_CODR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_3 =>
            if State then
               Registers.PIOC_SODR := 2#1_0000_0000_0000_0000_0000_0000_0000#; -- bit 28
            else
               Registers.PIOC_CODR := 2#1_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_4 =>
            if State then
               Registers.PIOC_SODR := 2#100_0000_0000_0000_0000_0000_0000#; -- bit 26
            else
               Registers.PIOC_CODR := 2#100_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_5 =>
            if State then
               Registers.PIOC_SODR := 2#10_0000_0000_0000_0000_0000_0000#; -- bit 25
            else
               Registers.PIOC_CODR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_6 =>
            if State then
               Registers.PIOC_SODR := 2#1_0000_0000_0000_0000_0000_0000#; -- bit 24
            else
               Registers.PIOC_CODR := 2#1_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_7 =>
            if State then
               Registers.PIOC_SODR := 2#1000_0000_0000_0000_0000_0000#; -- bit 23
            else
               Registers.PIOC_CODR := 2#1000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_8 =>
            if State then
               Registers.PIOC_SODR := 2#100_0000_0000_0000_0000_0000#; -- bit 22
            else
               Registers.PIOC_CODR := 2#100_0000_0000_0000_0000_0000#;
            end if;

         when Pin_9 =>
            if State then
               Registers.PIOC_SODR := 2#10_0000_0000_0000_0000_0000#; -- bit 21
            else
               Registers.PIOC_CODR := 2#10_0000_0000_0000_0000_0000#;
            end if;

         when Pin_10 =>
            if State then
               Registers.PIOC_SODR := 2#10_0000_0000_0000_0000_0000_0000_0000#; -- bit 29
            else
               Registers.PIOC_CODR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_11 =>
            if State then
               Registers.PIOD_SODR := 2#1000_0000#; -- bit 7
            else
               Registers.PIOD_CODR := 2#1000_0000#;
            end if;

         when Pin_12 =>
            if State then
               Registers.PIOD_SODR := 2#1_0000_0000#; -- bit 8
            else
               Registers.PIOD_CODR := 2#1_0000_0000#;
            end if;

         when Pin_13 =>
            if State then
               Registers.PIOB_SODR := 2#1000_0000_0000_0000_0000_0000_0000#; -- bit 27
            else
               Registers.PIOB_CODR := 2#1000_0000_0000_0000_0000_0000_0000#;
            end if;
      end case;
   end Write;

end Pins;
