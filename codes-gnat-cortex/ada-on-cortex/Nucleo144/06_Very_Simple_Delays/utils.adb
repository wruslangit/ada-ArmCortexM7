package body Utils is

   procedure Spin_Indefinitely is
   begin
      loop
         null;
      end loop;
   end Spin_Indefinitely;

   procedure Waste_Some_Time is
      Iterations : constant := 100_000;
   begin
      for I in 1 .. Iterations loop
         null;
      end loop;
   end Waste_Some_Time;

end Utils;
