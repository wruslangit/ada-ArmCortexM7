package Registers is

   type Word is mod 2**32;

   PIOD_PER : Word;
   pragma Volatile (PIOD_PER);
   pragma Import (C, PIOD_PER, "PIOD_PER");

   PIOD_OER : Word;
   pragma Volatile (PIOD_OER);
   pragma Import (C, PIOD_OER, "PIOD_OER");

   PIOD_SODR : Word;
   pragma Volatile (PIOD_SODR);
   pragma Import (C, PIOD_SODR, "PIOD_SODR");

   PIOD_CODR : Word;
   pragma Volatile (PIOD_CODR);
   pragma Import (C, PIOD_CODR, "PIOD_CODR");

   PMC_PCER1 : Word;
   pragma Volatile (PMC_PCER1);
   pragma Import (C, PMC_PCER1, "PMC_PCER1");

   TRNG_CR : Word;
   pragma Volatile (TRNG_CR);
   pragma Import (C, TRNG_CR, "TRNG_CR");

   TRNG_ISR : Word;
   pragma Volatile (TRNG_ISR);
   pragma Import (C, TRNG_ISR, "TRNG_ISR");

   TRNG_ODATA : Word;
   pragma Volatile (TRNG_ODATA);
   pragma Import (C, TRNG_ODATA, "TRNG_ODATA");

end Registers;
