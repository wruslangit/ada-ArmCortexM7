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

   RCC_CR : Word;
   pragma Volatile (RCC_CR);
   pragma Import (C, RCC_CR, "RCC_CR");

   RCC_AHB1ENR : Word;
   pragma Volatile (RCC_AHB1ENR);
   pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");

   RCC_AHB2ENR : Word;
   pragma Volatile (RCC_AHB2ENR);
   pragma Import (C, RCC_AHB2ENR, "RCC_AHB2ENR");

   RCC_APB2ENR : Word;
   pragma Volatile (RCC_APB2ENR);
   pragma Import (C, RCC_APB2ENR, "RCC_APB2ENR");

   SysTick_CTRL : Word;
   pragma Volatile (SysTick_CTRL);
   pragma Import (C, SysTick_CTRL, "SysTick_CTRL");

   SysTick_LOAD : Word;
   pragma Volatile (SysTick_LOAD);
   pragma Import (C, SysTick_LOAD, "SysTick_LOAD");

   SysTick_VAL : Word;
   pragma Volatile (SysTick_VAL);
   pragma Import (C, SysTick_VAL, "SysTick_VAL");

   ISER0 : Word;
   pragma Volatile (ISER0);
   pragma Import (C, ISER0, "ISER0");

   ISER1 : Word;
   pragma Volatile (ISER1);
   pragma Import (C, ISER1, "ISER1");

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

   GPIOD_MODER : Word;
   pragma Volatile (GPIOD_MODER);
   pragma Import (C, GPIOD_MODER, "GPIOD_MODER");

   GPIOD_PUPDR : Word;
   pragma Volatile (GPIOD_PUPDR);
   pragma Import (C, GPIOD_PUPDR, "GPIOD_PUPDR");

   GPIOD_IDR : Word;
   pragma Volatile (GPIOD_IDR);
   pragma Import (C, GPIOD_IDR, "GPIOD_IDR");

   GPIOD_BSRR : Word;
   pragma Volatile (GPIOD_BSRR);
   pragma Import (C, GPIOD_BSRR, "GPIOD_BSRR");

   GPIOE_MODER : Word;
   pragma Volatile (GPIOE_MODER);
   pragma Import (C, GPIOE_MODER, "GPIOE_MODER");

   GPIOE_PUPDR : Word;
   pragma Volatile (GPIOE_PUPDR);
   pragma Import (C, GPIOE_PUPDR, "GPIOE_PUPDR");

   GPIOE_IDR : Word;
   pragma Volatile (GPIOE_IDR);
   pragma Import (C, GPIOE_IDR, "GPIOE_IDR");

   GPIOE_BSRR : Word;
   pragma Volatile (GPIOE_BSRR);
   pragma Import (C, GPIOE_BSRR, "GPIOE_BSRR");

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
