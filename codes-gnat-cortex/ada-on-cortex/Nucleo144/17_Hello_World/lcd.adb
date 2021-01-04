with Pins;
with Registers;
with Utils;

package body LCD is
   
   Line_RS : constant Pins.Pin_ID := Pins.Pin_2;
   Line_RW : constant Pins.Pin_ID := Pins.Pin_3;
   Line_E  : constant Pins.Pin_ID := Pins.Pin_4;
   Line_D0 : constant Pins.Pin_ID := Pins.Pin_5;
   Line_D1 : constant Pins.Pin_ID := Pins.Pin_6;
   Line_D2 : constant Pins.Pin_ID := Pins.Pin_7;
   Line_D3 : constant Pins.Pin_ID := Pins.Pin_8;
   Line_D4 : constant Pins.Pin_ID := Pins.Pin_9;
   Line_D5 : constant Pins.Pin_ID := Pins.Pin_10;
   Line_D6 : constant Pins.Pin_ID := Pins.Pin_11;
   Line_D7 : constant Pins.Pin_ID := Pins.Pin_12;
   
   procedure Pause is
      Now : constant Utils.Time := Utils.Clock;
      Wait_Time_Millis : constant := 20;
      
      use type Utils.Time;
   begin
      Utils.Delay_Until (Now + Wait_Time_Millis);
   end Pause;
   
   type Byte is mod 2**8;

   procedure Write (RS : in Boolean; Data : in Byte) is
   begin
      Pins.Write (Line_E, True); -- E high
      
      Pins.Write (Line_RS, RS);
      Pins.Write (Line_RW, False); -- RW low (write mode)
      
      Pins.Write (Line_D0, (Data and Registers.Bit_0) /= 0);
      Pins.Write (Line_D1, (Data and Registers.Bit_1) /= 0);
      Pins.Write (Line_D2, (Data and Registers.Bit_2) /= 0);
      Pins.Write (Line_D3, (Data and Registers.Bit_3) /= 0);
      Pins.Write (Line_D4, (Data and Registers.Bit_4) /= 0);
      Pins.Write (Line_D5, (Data and Registers.Bit_5) /= 0);
      Pins.Write (Line_D6, (Data and Registers.Bit_6) /= 0);
      Pins.Write (Line_D7, (Data and Registers.Bit_7) /= 0);
      
      Pins.Write (Line_E, False); -- E low to trigger data transfer
   end Write;
   
   procedure Function_Set is
      D : constant Byte :=
         Registers.Bit_5 or
         Registers.Bit_4 or -- 8-bit interface
         Registers.Bit_3;   -- 2 lines display
   begin
      Write (RS => False, Data => D);
   end Function_Set;
   
   procedure Entry_Mode_Set is
      D : constant Byte :=
         Registers.Bit_2 or
         Registers.Bit_1;   -- cursor increment
   begin
      Write (RS => False, Data => D);
   end Entry_Mode_Set;
   
   procedure Clear_Display is
      D : constant Byte := Registers.Bit_0;
   begin
      Write (RS => False, Data => D);
   end Clear_Display;
   
   procedure Display_On is
      D : constant Byte :=
         Registers.Bit_3 or
         Registers.Bit_2; -- display on, cursor off, blinking off
   begin
      Write (RS => False, Data => D);
   end Display_On;
   
   procedure Initialize is   
   begin
      Pause;
      
      Pins.Enable_Output (Line_RS);
      Pins.Enable_Output (Line_RW);
      Pins.Enable_Output (Line_E);
      Pins.Enable_Output (Line_D0);
      Pins.Enable_Output (Line_D1);
      Pins.Enable_Output (Line_D2);
      Pins.Enable_Output (Line_D3);
      Pins.Enable_Output (Line_D4);
      Pins.Enable_Output (Line_D5);
      Pins.Enable_Output (Line_D6);
      Pins.Enable_Output (Line_D7);
      
      -- initial sequence
      Function_Set;
      Pause;
      Function_Set;
      Pause;
      Function_Set;
      Pause;
      
      -- functional initialization
      Function_Set;
      Pause;
      Display_On;
      Pause;
      Clear_Display;
      Pause;
      Entry_Mode_Set;
      Pause;
   end Initialize;
   
   procedure Print (Line : in Line_Number; Column : in Column_Number; C : in Character) is
      Address : Byte;
   begin
      if Line = 1 then
         Address := Byte (16#00# + Column - 1);
      else
         Address := Byte (16#40# + Column - 1);
      end if;
      
      -- set DDRAM address
      Write (RS => False, Data => Registers.Bit_7 or Address);
      Pause;
      
      -- write data
      Write (RS => True, Data => Byte (Character'Pos (C)));
      Pause;
   end Print;
   
   procedure Print (Line : in Line_Number; Column : in Column_Number; Msg : in String) is
      Address : Byte;
      Current_Column : Column_Number := Column;
   begin
      if Line = 1 then
         Address := Byte (16#00# + Column - 1);
      else
         Address := Byte (16#40# + Column - 1);
      end if;
      
      -- set starting DDRAM address
      Write (RS => False, Data => Registers.Bit_7 or Address);
      Pause;
      
      -- write data
      for I in Msg'Range loop
         Write (RS => True, Data => Byte (Character'Pos (Msg (I))));
         Pause;
         
         exit when Current_Column = Column_Number'Last;
         Current_Column := Current_Column + 1;
      end loop;
   end Print;
   
   procedure Clear is
   begin
      Clear_Display;
      Pause;
   end Clear;
   
end LCD;
