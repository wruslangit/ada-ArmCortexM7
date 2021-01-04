package Registers is
   
   type Byte is mod 2**8;
   type Word is mod 2**32;

   GPIOA_DIRCLR : Word;
   pragma Volatile (GPIOA_DIRCLR);
   pragma Import (C, GPIOA_DIRCLR, "GPIOA_DIRCLR");

   GPIOA_DIRSET : Word;
   pragma Volatile (GPIOA_DIRSET);
   pragma Import (C, GPIOA_DIRSET, "GPIOA_DIRSET");

   GPIOA_OUTCLR : Word;
   pragma Volatile (GPIOA_OUTCLR);
   pragma Import (C, GPIOA_OUTCLR, "GPIOA_OUTCLR");

   GPIOA_OUTSET : Word;
   pragma Volatile (GPIOA_OUTSET);
   pragma Import (C, GPIOA_OUTSET, "GPIOA_OUTSET");

   GPIOA_IN : Word;
   pragma Volatile (GPIOA_IN);
   pragma Import (C, GPIOA_IN, "GPIOA_IN");

   GPIOA_PINCFG8 : Byte;
   pragma Volatile (GPIOA_PINCFG8);
   pragma Import (C, GPIOA_PINCFG8, "GPIOA_PINCFG8");

   GPIOA_PINCFG9 : Byte;
   pragma Volatile (GPIOA_PINCFG9);
   pragma Import (C, GPIOA_PINCFG9, "GPIOA_PINCFG9");

   GPIOA_PINCFG14 : Byte;
   pragma Volatile (GPIOA_PINCFG14);
   pragma Import (C, GPIOA_PINCFG14, "GPIOA_PINCFG14");

   GPIOA_PINCFG15 : Byte;
   pragma Volatile (GPIOA_PINCFG15);
   pragma Import (C, GPIOA_PINCFG15, "GPIOA_PINCFG15");

   GPIOA_PINCFG20 : Byte;
   pragma Volatile (GPIOA_PINCFG20);
   pragma Import (C, GPIOA_PINCFG20, "GPIOA_PINCFG20");

   GPIOA_PINCFG21 : Byte;
   pragma Volatile (GPIOA_PINCFG21);
   pragma Import (C, GPIOA_PINCFG21, "GPIOA_PINCFG21");

   GPIOA_PINCFG6 : Byte;
   pragma Volatile (GPIOA_PINCFG6);
   pragma Import (C, GPIOA_PINCFG6, "GPIOA_PINCFG6");

   GPIOA_PINCFG7 : Byte;
   pragma Volatile (GPIOA_PINCFG7);
   pragma Import (C, GPIOA_PINCFG7, "GPIOA_PINCFG7");

   GPIOA_PINCFG18 : Byte;
   pragma Volatile (GPIOA_PINCFG18);
   pragma Import (C, GPIOA_PINCFG18, "GPIOA_PINCFG18");

   GPIOA_PINCFG16 : Byte;
   pragma Volatile (GPIOA_PINCFG16);
   pragma Import (C, GPIOA_PINCFG16, "GPIOA_PINCFG16");

   GPIOA_PINCFG19 : Byte;
   pragma Volatile (GPIOA_PINCFG19);
   pragma Import (C, GPIOA_PINCFG19, "GPIOA_PINCFG19");

   GPIOA_PINCFG17 : Byte;
   pragma Volatile (GPIOA_PINCFG17);
   pragma Import (C, GPIOA_PINCFG17, "GPIOA_PINCFG17");

end Registers;
