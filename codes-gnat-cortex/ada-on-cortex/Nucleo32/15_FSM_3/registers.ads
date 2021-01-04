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

   RCC_AHBENR : Word;
   pragma Volatile (RCC_AHBENR);
   pragma Import (C, RCC_AHBENR, "RCC_AHBENR");

   RCC_APB2ENR : Word;
   pragma Volatile (RCC_APB2ENR);
   pragma Import (C, RCC_APB2ENR, "RCC_APB2ENR");

   ISER : Word;
   pragma Volatile (ISER);
   pragma Import (C, ISER, "ISER");

   SYSCFG_EXTICR1 : Word;
   pragma Volatile (SYSCFG_EXTICR1);
   pragma Import (C, SYSCFG_EXTICR1, "SYSCFG_EXTICR1");

   SYSCFG_EXTICR2 : Word;
   pragma Volatile (SYSCFG_EXTICR2);
   pragma Import (C, SYSCFG_EXTICR2, "SYSCFG_EXTICR2");

   SYSCFG_EXTICR3 : Word;
   pragma Volatile (SYSCFG_EXTICR3);
   pragma Import (C, SYSCFG_EXTICR3, "SYSCFG_EXTICR3");

   SYSCFG_EXTICR4 : Word;
   pragma Volatile (SYSCFG_EXTICR4);
   pragma Import (C, SYSCFG_EXTICR4, "SYSCFG_EXTICR4");

   EXTI_IMR : Word;
   pragma Volatile (EXTI_IMR);
   pragma Import (C, EXTI_IMR, "EXTI_IMR");

   EXTI_RTSR : Word;
   pragma Volatile (EXTI_RTSR);
   pragma Import (C, EXTI_RTSR, "EXTI_RTSR");

   EXTI_FTSR : Word;
   pragma Volatile (EXTI_FTSR);
   pragma Import (C, EXTI_FTSR, "EXTI_FTSR");
     
   EXTI_PR : Word;
   pragma Volatile (EXTI_PR);
   pragma Import (C, EXTI_PR, "EXTI_PR");
     
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
