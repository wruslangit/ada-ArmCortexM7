with Registers;

package body Random_Numbers is
   
   Initial_State : Registers.Word;
   State : Registers.Word;
   
   procedure Enable_Generator is
   begin
      Initial_State := 16#12345678#;
      State := Initial_State;
   end Enable_Generator;
   
   procedure Read_Next_Value (V : out Registers.Word) is
      New_State : Registers.Word;
      use type Registers.Word;
   begin
      New_State := State * 16#42# + 7;
      if New_State = State then
         Initial_State := Initial_State + 1;
         New_State := Initial_State;
      end if;
      
      State := New_State;
      V := State;
   end Read_Next_Value;

end Random_Numbers;
