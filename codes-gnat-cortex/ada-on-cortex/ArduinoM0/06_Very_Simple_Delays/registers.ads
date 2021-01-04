package Registers is

   type Word is mod 2**32;

   GPIOA_DIRSET : Word;
   pragma Volatile (GPIOA_DIRSET);
   pragma Import (C, GPIOA_DIRSET, "GPIOA_DIRSET");

   GPIOA_OUTSET : Word;
   pragma Volatile (GPIOA_OUTSET);
   pragma Import (C, GPIOA_OUTSET, "GPIOA_OUTSET");

   GPIOA_OUTCLR : Word;
   pragma Volatile (GPIOA_OUTCLR);
   pragma Import (C, GPIOA_OUTCLR, "GPIOA_OUTCLR");

end Registers;
