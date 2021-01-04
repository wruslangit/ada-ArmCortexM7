with Registers;

package body Pins is

   use type Registers.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.PMC_PCER0 := Registers.Bit_12;
            Registers.PIOB_PER := Registers.Bit_25;
            Registers.PIOB_ODR := Registers.Bit_25;
            
            if Mode = Pulled_Up then
               Registers.PIOB_PUER := Registers.Bit_25;
            else
               Registers.PIOB_PUDR := Registers.Bit_25;
            end if;

         when Pin_3 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_28;
            Registers.PIOC_ODR := Registers.Bit_28;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_28;
            else
               Registers.PIOC_PUDR := Registers.Bit_28;
            end if;

         when Pin_4 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_26;
            Registers.PIOC_ODR := Registers.Bit_26;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_26;
            else
               Registers.PIOC_PUDR := Registers.Bit_26;
            end if;

         when Pin_5 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_25;
            Registers.PIOC_ODR := Registers.Bit_25;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_25;
            else
               Registers.PIOC_PUDR := Registers.Bit_25;
            end if;

         when Pin_6 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_24;
            Registers.PIOC_ODR := Registers.Bit_24;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_24;
            else
               Registers.PIOC_PUDR := Registers.Bit_24;
            end if;

         when Pin_7 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_23;
            Registers.PIOC_ODR := Registers.Bit_23;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_23;
            else
               Registers.PIOC_PUDR := Registers.Bit_23;
            end if;

         when Pin_8 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_22;
            Registers.PIOC_ODR := Registers.Bit_22;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_22;
            else
               Registers.PIOC_PUDR := Registers.Bit_22;
            end if;

         when Pin_9 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_21;
            Registers.PIOC_ODR := Registers.Bit_21;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_21;
            else
               Registers.PIOC_PUDR := Registers.Bit_21;
            end if;

         when Pin_10 =>
            Registers.PMC_PCER0 := Registers.Bit_13;
            Registers.PIOC_PER := Registers.Bit_29;
            Registers.PIOC_ODR := Registers.Bit_29;

            if Mode = Pulled_Up then
               Registers.PIOC_PUER := Registers.Bit_29;
            else
               Registers.PIOC_PUDR := Registers.Bit_29;
            end if;

         when Pin_11 =>
            Registers.PMC_PCER0 := Registers.Bit_14;
            Registers.PIOD_PER := Registers.Bit_7;
            Registers.PIOD_ODR := Registers.Bit_7;

            if Mode = Pulled_Up then
               Registers.PIOD_PUER := Registers.Bit_7;
            else
               Registers.PIOD_PUDR := Registers.Bit_7;
            end if;

         when Pin_12 =>
            Registers.PMC_PCER0 := Registers.Bit_14;
            Registers.PIOD_PER := Registers.Bit_8;
            Registers.PIOD_ODR := Registers.Bit_8;

            if Mode = Pulled_Up then
               Registers.PIOD_PUER := Registers.Bit_8;
            else
               Registers.PIOD_PUDR := Registers.Bit_8;
            end if;

         when Pin_13 =>
            Registers.PMC_PCER0 := Registers.Bit_12;
            Registers.PIOB_PER := Registers.Bit_27;
            Registers.PIOB_ODR := Registers.Bit_27;

            if Mode = Pulled_Up then
               Registers.PIOB_PUER := Registers.Bit_27;
            else
               Registers.PIOB_PUDR := Registers.Bit_27;
            end if;

         end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            Registers.PIOB_PER := Registers.Bit_25;
            Registers.PIOB_OER := Registers.Bit_25;

         when Pin_3 =>
            Registers.PIOC_PER := Registers.Bit_28;
            Registers.PIOC_OER := Registers.Bit_28;

         when Pin_4 =>
            Registers.PIOC_PER := Registers.Bit_26;
            Registers.PIOC_OER := Registers.Bit_26;

         when Pin_5 =>
            Registers.PIOC_PER := Registers.Bit_25;
            Registers.PIOC_OER := Registers.Bit_25;

         when Pin_6 =>
            Registers.PIOC_PER := Registers.Bit_24;
            Registers.PIOC_OER := Registers.Bit_24;

         when Pin_7 =>
            Registers.PIOC_PER := Registers.Bit_23;
            Registers.PIOC_OER := Registers.Bit_23;

         when Pin_8 =>
            Registers.PIOC_PER := Registers.Bit_22;
            Registers.PIOC_OER := Registers.Bit_22;

         when Pin_9 =>
            Registers.PIOC_PER := Registers.Bit_21;
            Registers.PIOC_OER := Registers.Bit_21;

         when Pin_10 =>
            Registers.PIOC_PER := Registers.Bit_29;
            Registers.PIOC_OER := Registers.Bit_29;

         when Pin_11 =>
            Registers.PIOD_PER := Registers.Bit_7;
            Registers.PIOD_OER := Registers.Bit_7;

         when Pin_12 =>
            Registers.PIOD_PER := Registers.Bit_8;
            Registers.PIOD_OER := Registers.Bit_8;

         when Pin_13 =>
            Registers.PIOB_PER := Registers.Bit_27;
            Registers.PIOB_OER := Registers.Bit_27;
      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : Registers.Word;
   begin
      case Pin is
         when Pin_2 =>
            Data := Registers.PIOB_PDSR;
            State := (Data and Registers.Bit_25) /= 0;

         when Pin_3 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_28) /= 0;

         when Pin_4 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_26) /= 0;

         when Pin_5 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_25) /= 0;

         when Pin_6 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_24) /= 0;

         when Pin_7 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_23) /= 0;

         when Pin_8 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_22) /= 0;

         when Pin_9 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_21) /= 0;

         when Pin_10 =>
            Data := Registers.PIOC_PDSR;
            State := (Data and Registers.Bit_29) /= 0;

         when Pin_11 =>
            Data := Registers.PIOD_PDSR;
            State := (Data and Registers.Bit_7) /= 0;

         when Pin_12 =>
            Data := Registers.PIOD_PDSR;
            State := (Data and Registers.Bit_8) /= 0;

         when Pin_13 =>
            Data := Registers.PIOB_PDSR;
            State := (Data and Registers.Bit_27) /= 0;
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               Registers.PIOB_SODR := Registers.Bit_25;
            else
               Registers.PIOB_CODR := Registers.Bit_25;
            end if;

         when Pin_3 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_28;
            else
               Registers.PIOC_CODR := Registers.Bit_28;
            end if;

         when Pin_4 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_26;
            else
               Registers.PIOC_CODR := Registers.Bit_26;
            end if;

         when Pin_5 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_25;
            else
               Registers.PIOC_CODR := Registers.Bit_25;
            end if;

         when Pin_6 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_24;
            else
               Registers.PIOC_CODR := Registers.Bit_24;
            end if;

         when Pin_7 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_23;
            else
               Registers.PIOC_CODR := Registers.Bit_23;
            end if;

         when Pin_8 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_22;
            else
               Registers.PIOC_CODR := Registers.Bit_22;
            end if;

         when Pin_9 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_21;
            else
               Registers.PIOC_CODR := Registers.Bit_21;
            end if;

         when Pin_10 =>
            if State then
               Registers.PIOC_SODR := Registers.Bit_29;
            else
               Registers.PIOC_CODR := Registers.Bit_29;
            end if;

         when Pin_11 =>
            if State then
               Registers.PIOD_SODR := Registers.Bit_7;
            else
               Registers.PIOD_CODR := Registers.Bit_7;
            end if;

         when Pin_12 =>
            if State then
               Registers.PIOD_SODR := Registers.Bit_8;
            else
               Registers.PIOD_CODR := Registers.Bit_8;
            end if;

         when Pin_13 =>
            if State then
               Registers.PIOB_SODR := Registers.Bit_27;
            else
               Registers.PIOB_CODR := Registers.Bit_27;
            end if;
      end case;
   end Write;

end Pins;
