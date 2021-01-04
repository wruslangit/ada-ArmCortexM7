package Registers is

   type Word is mod 2**32;

   RCC_AHB1ENR : Word;
   pragma Volatile (RCC_AHB1ENR);
   pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");

   GPIOA_MODER : Word;
   pragma Volatile (GPIOA_MODER);
   pragma Import (C, GPIOA_MODER, "GPIOA_MODER");

   GPIOA_BSRR : Word;
   pragma Volatile (GPIOA_BSRR);
   pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");

end Registers;
