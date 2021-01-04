with Registers;

package Random_Numbers is

   procedure Enable_Generator;
   
   procedure Read_Next_Value (V : out Registers.Word);

end Random_Numbers;
