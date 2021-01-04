package Registers is

   type Word is mod 2**32;
   
   Bit_0  : constant :=                                       2#1#;
   Bit_1  : constant :=                                      2#10#;
   Bit_2  : constant :=                                     2#100#;
   Bit_3  : constant :=                                    2#1000#;
   Bit_4  : constant :=                                  2#1_0000#;
   Bit_5  : constant :=                                 2#10_0000#;
   Bit_6  : constant :=                                2#100_0000#;
   Bit_7  : constant :=                               2#1000_0000#;
   Bit_8  : constant :=                             2#1_0000_0000#;
   Bit_9  : constant :=                            2#10_0000_0000#;
   Bit_10 : constant :=                           2#100_0000_0000#;
   Bit_11 : constant :=                          2#1000_0000_0000#;
   Bit_12 : constant :=                        2#1_0000_0000_0000#;
   Bit_13 : constant :=                       2#10_0000_0000_0000#;
   Bit_14 : constant :=                      2#100_0000_0000_0000#;
   Bit_15 : constant :=                     2#1000_0000_0000_0000#;
   Bit_16 : constant :=                   2#1_0000_0000_0000_0000#;
   Bit_17 : constant :=                  2#10_0000_0000_0000_0000#;
   Bit_18 : constant :=                 2#100_0000_0000_0000_0000#;
   Bit_19 : constant :=                2#1000_0000_0000_0000_0000#;
   Bit_20 : constant :=              2#1_0000_0000_0000_0000_0000#;
   Bit_21 : constant :=             2#10_0000_0000_0000_0000_0000#;
   Bit_22 : constant :=            2#100_0000_0000_0000_0000_0000#;
   Bit_23 : constant :=           2#1000_0000_0000_0000_0000_0000#;
   Bit_24 : constant :=         2#1_0000_0000_0000_0000_0000_0000#;
   Bit_25 : constant :=        2#10_0000_0000_0000_0000_0000_0000#;
   Bit_26 : constant :=       2#100_0000_0000_0000_0000_0000_0000#;
   Bit_27 : constant :=      2#1000_0000_0000_0000_0000_0000_0000#;
   Bit_28 : constant :=    2#1_0000_0000_0000_0000_0000_0000_0000#;
   Bit_29 : constant :=   2#10_0000_0000_0000_0000_0000_0000_0000#;
   Bit_30 : constant :=  2#100_0000_0000_0000_0000_0000_0000_0000#;
   Bit_31 : constant := 2#1000_0000_0000_0000_0000_0000_0000_0000#;

   PIOB_PER : Word;
   pragma Volatile (PIOB_PER);
   pragma Import (C, PIOB_PER, "PIOB_PER");

   PIOB_OER : Word;
   pragma Volatile (PIOB_OER);
   pragma Import (C, PIOB_OER, "PIOB_OER");

   PIOB_ODR : Word;
   pragma Volatile (PIOB_ODR);
   pragma Import (C, PIOB_ODR, "PIOB_ODR");

   PIOB_PUER : Word;
   pragma Volatile (PIOB_PUER);
   pragma Import (C, PIOB_PUER, "PIOB_PUER");

   PIOB_PUDR : Word;
   pragma Volatile (PIOB_PUDR);
   pragma Import (C, PIOB_PUDR, "PIOB_PUDR");

   PIOB_SODR : Word;
   pragma Volatile (PIOB_SODR);
   pragma Import (C, PIOB_SODR, "PIOB_SODR");

   PIOB_CODR : Word;
   pragma Volatile (PIOB_CODR);
   pragma Import (C, PIOB_CODR, "PIOB_CODR");

   PIOB_PDSR : Word;
   pragma Volatile (PIOB_PDSR);
   pragma Import (C, PIOB_PDSR, "PIOB_PDSR");

   PIOC_PER : Word;
   pragma Volatile (PIOC_PER);
   pragma Import (C, PIOC_PER, "PIOC_PER");

   PIOC_OER : Word;
   pragma Volatile (PIOC_OER);
   pragma Import (C, PIOC_OER, "PIOC_OER");

   PIOC_ODR : Word;
   pragma Volatile (PIOC_ODR);
   pragma Import (C, PIOC_ODR, "PIOC_ODR");

   PIOC_PUER : Word;
   pragma Volatile (PIOC_PUER);
   pragma Import (C, PIOC_PUER, "PIOC_PUER");

   PIOC_PUDR : Word;
   pragma Volatile (PIOC_PUDR);
   pragma Import (C, PIOC_PUDR, "PIOC_PUDR");

   PIOC_SODR : Word;
   pragma Volatile (PIOC_SODR);
   pragma Import (C, PIOC_SODR, "PIOC_SODR");

   PIOC_CODR : Word;
   pragma Volatile (PIOC_CODR);
   pragma Import (C, PIOC_CODR, "PIOC_CODR");

   PIOC_PDSR : Word;
   pragma Volatile (PIOC_PDSR);
   pragma Import (C, PIOC_PDSR, "PIOC_PDSR");

   PIOC_IER : Word;
   pragma Volatile (PIOC_IER);
   pragma Import (C, PIOC_IER, "PIOC_IER");

   PIOC_IDR : Word;
   pragma Volatile (PIOC_IDR);
   pragma Import (C, PIOC_IDR, "PIOC_IDR");

   PIOC_ISR : Word;
   pragma Volatile (PIOC_ISR);
   pragma Import (C, PIOC_ISR, "PIOC_ISR");

   PIOD_PER : Word;
   pragma Volatile (PIOD_PER);
   pragma Import (C, PIOD_PER, "PIOD_PER");

   PIOD_OER : Word;
   pragma Volatile (PIOD_OER);
   pragma Import (C, PIOD_OER, "PIOD_OER");

   PIOD_ODR : Word;
   pragma Volatile (PIOD_ODR);
   pragma Import (C, PIOD_ODR, "PIOD_ODR");

   PIOD_PUER : Word;
   pragma Volatile (PIOD_PUER);
   pragma Import (C, PIOD_PUER, "PIOD_PUER");

   PIOD_PUDR : Word;
   pragma Volatile (PIOD_PUDR);
   pragma Import (C, PIOD_PUDR, "PIOD_PUDR");

   PIOD_SODR : Word;
   pragma Volatile (PIOD_SODR);
   pragma Import (C, PIOD_SODR, "PIOD_SODR");

   PIOD_CODR : Word;
   pragma Volatile (PIOD_CODR);
   pragma Import (C, PIOD_CODR, "PIOD_CODR");

   PIOD_PDSR : Word;
   pragma Volatile (PIOD_PDSR);
   pragma Import (C, PIOD_PDSR, "PIOD_PDSR");

   PMC_PCER0 : Word;
   pragma Volatile (PMC_PCER0);
   pragma Import (C, PMC_PCER0, "PMC_PCER0");

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

   ISER0 : Word;
   pragma Volatile (ISER0);
   pragma Import (C, ISER0, "ISER0");

end Registers;
