with Pins;
with Random_Numbers;
with Registers;
with Utils;

package body Program is

   use type Registers.Word;

   procedure Run is
      R : Registers.Word;
      Bit_0 : Boolean;
      Bit_1 : Boolean;
   begin
      Pins.Enable_Output (Pins.Pin_11);
      Pins.Enable_Output (Pins.Pin_12);

      Random_Numbers.Enable_Generator;

      loop
         Random_Numbers.Read_Next_Value (R);
         Bit_0 := (R and 2#01#) /= 0;
         Bit_1 := (R and 2#10#) /= 0;
         
         Pins.Write (Pins.Pin_11, Bit_0);
         Pins.Write (Pins.Pin_12, Bit_1);

         Utils.Waste_Some_Time;
      end loop;
   end Run;
   
end Program;
