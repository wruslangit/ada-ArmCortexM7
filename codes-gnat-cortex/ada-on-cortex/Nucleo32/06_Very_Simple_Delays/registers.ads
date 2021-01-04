package Registers is

   type Word is mod 2**32;

   RCC_AHBENR : Word;
   pragma Volatile (RCC_AHBENR);
   pragma Import (C, RCC_AHBENR, "RCC_AHBENR");

   GPIOB_MODER : Word;
   pragma Volatile (GPIOB_MODER);
   pragma Import (C, GPIOB_MODER, "GPIOB_MODER");

   GPIOB_BSRR : Word;
   pragma Volatile (GPIOB_BSRR);
   pragma Import (C, GPIOB_BSRR, "GPIOB_BSRR");

   GPIOB_BRR : Word;
   pragma Volatile (GPIOB_BRR);
   pragma Import (C, GPIOB_BRR, "GPIOB_BRR");

end Registers;
