package Registers is

   type Word is mod 2**32;

   RCC_AHBENR : Word;
   pragma Volatile (RCC_AHBENR);
   pragma Import (C, RCC_AHBENR, "RCC_AHBENR");

   GPIOA_MODER : Word;
   pragma Volatile (GPIOA_MODER);
   pragma Import (C, GPIOA_MODER, "GPIOA_MODER");

   GPIOA_PUPDR : Word;
   pragma Volatile (GPIOA_PUPDR);
   pragma Import (C, GPIOA_PUPDR, "GPIOA_PUPDR");

   GPIOA_IDR : Word;
   pragma Volatile (GPIOA_IDR);
   pragma Import (C, GPIOA_IDR, "GPIOA_IDR");

   GPIOA_BSRR : Word;
   pragma Volatile (GPIOA_BSRR);
   pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");

   GPIOA_BRR : Word;
   pragma Volatile (GPIOA_BRR);
   pragma Import (C, GPIOA_BRR, "GPIOA_BRR");

   GPIOB_MODER : Word;
   pragma Volatile (GPIOB_MODER);
   pragma Import (C, GPIOB_MODER, "GPIOB_MODER");

   GPIOB_PUPDR : Word;
   pragma Volatile (GPIOB_PUPDR);
   pragma Import (C, GPIOB_PUPDR, "GPIOB_PUPDR");

   GPIOB_IDR : Word;
   pragma Volatile (GPIOB_IDR);
   pragma Import (C, GPIOB_IDR, "GPIOB_IDR");

   GPIOB_BSRR : Word;
   pragma Volatile (GPIOB_BSRR);
   pragma Import (C, GPIOB_BSRR, "GPIOB_BSRR");

   GPIOB_BRR : Word;
   pragma Volatile (GPIOB_BRR);
   pragma Import (C, GPIOB_BRR, "GPIOB_BRR");

   GPIOF_MODER : Word;
   pragma Volatile (GPIOF_MODER);
   pragma Import (C, GPIOF_MODER, "GPIOF_MODER");

   GPIOF_PUPDR : Word;
   pragma Volatile (GPIOF_PUPDR);
   pragma Import (C, GPIOF_PUPDR, "GPIOF_PUPDR");

   GPIOF_IDR : Word;
   pragma Volatile (GPIOF_IDR);
   pragma Import (C, GPIOF_IDR, "GPIOF_IDR");

   GPIOF_BSRR : Word;
   pragma Volatile (GPIOF_BSRR);
   pragma Import (C, GPIOF_BSRR, "GPIOF_BSRR");

   GPIOF_BRR : Word;
   pragma Volatile (GPIOF_BRR);
   pragma Import (C, GPIOF_BRR, "GPIOF_BRR");

end Registers;
