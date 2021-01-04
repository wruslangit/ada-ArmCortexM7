package Registers is

   type Word is mod 2**32;

   RCC_CR : Word;
   pragma Volatile (RCC_CR);
   pragma Import (C, RCC_CR, "RCC_CR");

   RCC_AHB1ENR : Word;
   pragma Volatile (RCC_AHB1ENR);
   pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");

   RCC_AHB2ENR : Word;
   pragma Volatile (RCC_AHB2ENR);
   pragma Import (C, RCC_AHB2ENR, "RCC_AHB2ENR");

   GPIOA_MODER : Word;
   pragma Volatile (GPIOA_MODER);
   pragma Import (C, GPIOA_MODER, "GPIOA_MODER");

   GPIOA_BSRR : Word;
   pragma Volatile (GPIOA_BSRR);
   pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");

   RNG_CR : Word;
   pragma Volatile (RNG_CR);
   pragma Import (C, RNG_CR, "RNG_CR");

   RNG_SR : Word;
   pragma Volatile (RNG_SR);
   pragma Import (C, RNG_SR, "RNG_SR");

   RNG_DR : Word;
   pragma Volatile (RNG_DR);
   pragma Import (C, RNG_DR, "RNG_DR");

end Registers;
