package LCD is

   procedure Initialize;
   
   type Line_Number is range 1 .. 2;
   type Column_Number is range 1 .. 16;
   
   procedure Print (Line : in Line_Number; Column : in Column_Number; C : in Character);
   procedure Print (Line : in Line_Number; Column : in Column_Number; Msg : in String);
   
   procedure Clear;

end LCD;
