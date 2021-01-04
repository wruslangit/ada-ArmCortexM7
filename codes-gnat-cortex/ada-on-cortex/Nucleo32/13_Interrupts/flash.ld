OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    RCC_AHBENR = 0x40021014;
    RCC_APB2ENR = 0x40021018;

    ISER = 0xe000e100;
    SYSCFG_EXTICR1 = 0x40010008;
    SYSCFG_EXTICR2 = 0x4001000c;
    SYSCFG_EXTICR3 = 0x40010010;
    SYSCFG_EXTICR4 = 0x40010014;
    EXTI_IMR = 0x40010400;
    EXTI_RTSR = 0x40010408;
    EXTI_FTSR = 0x4001040c;
    EXTI_PR = 0x40010414;

    GPIOA_MODER = 0x48000000;
    GPIOA_PUPDR = 0x4800000c;
    GPIOA_IDR = 0x48000010;
    GPIOA_BSRR = 0x48000018;
    GPIOA_BRR = 0x48000028;
    
    GPIOB_MODER = 0x48000400;
    GPIOB_PUPDR = 0x4800040c;
    GPIOB_IDR = 0x48000410;
    GPIOB_BSRR = 0x48000418;
    GPIOB_BRR = 0x48000428;
    
    GPIOF_MODER = 0x48001400;
    GPIOF_PUPDR = 0x4800140c;
    GPIOF_IDR = 0x48001410;
    GPIOF_BSRR = 0x48001418;
    GPIOF_BRR = 0x48001428;
    
    .vectors 0x08000000 :
    {
        LONG(0x20001000)         /* 0x00 -- initial stack pointer */
        LONG(run + 1)            /* 0x04 -- reset                 */
        LONG(0)                  /* 0x08 -- nmi                   */
        LONG(0)                  /* 0x0c -- hard fault            */
        LONG(0)                  /* 0x10                          */
        LONG(0)                  /* 0x14                          */
        LONG(0)                  /* 0x18                          */
        LONG(0)                  /* 0x1c                          */
        LONG(0)                  /* 0x20                          */
        LONG(0)                  /* 0x24                          */
        LONG(0)                  /* 0x28                          */
        LONG(0)                  /* 0x2c -- svcall                */
        LONG(0)                  /* 0x30                          */
        LONG(0)                  /* 0x34                          */
        LONG(0)                  /* 0x38 -- pendsv                */
        LONG(0)                  /* 0x3c -- systick               */
        LONG(0)                  /* 0x40 -- interrupt 0           */
        LONG(0)                  /* 0x44 -- interrupt 1           */
        LONG(0)                  /* 0x48 -- interrupt 2           */
        LONG(0)                  /* 0x4c -- interrupt 3           */
        LONG(0)                  /* 0x50 -- interrupt 4           */
        LONG(button_pressed + 1) /* 0x54 -- EXTI0_1               */
        LONG(0)                  /* 0x58 -- interrupt 6           */
        LONG(0)                  /* 0x5c -- interrupt 7           */
        LONG(0)                  /* 0x60 -- interrupt 8           */
        LONG(0)                  /* 0x64 -- interrupt 9           */
        LONG(0)                  /* 0x68 -- interrupt 10          */
        LONG(0)                  /* 0x6c -- interrupt 11          */
        LONG(0)                  /* 0x70 -- interrupt 12          */
        LONG(0)                  /* 0x74 -- interrupt 13          */
        LONG(0)                  /* 0x78 -- interrupt 14          */
        LONG(0)                  /* 0x7c -- interrupt 15          */
        LONG(0)                  /* 0x80 -- interrupt 16          */
        LONG(0)                  /* 0x84 -- interrupt 17          */
        LONG(0)                  /* 0x88 -- interrupt 18          */
        LONG(0)                  /* 0x8c -- interrupt 19          */
        LONG(0)                  /* 0x90 -- interrupt 20          */
        LONG(0)                  /* 0x94 -- interrupt 21          */
        LONG(0)                  /* 0x98 -- interrupt 22          */
        LONG(0)                  /* 0x9c -- interrupt 23          */
        LONG(0)                  /* 0xa0 -- interrupt 24          */
        LONG(0)                  /* 0xa4 -- interrupt 25          */
        LONG(0)                  /* 0xa8 -- interrupt 26          */
        LONG(0)                  /* 0xac -- interrupt 27          */
        LONG(0)                  /* 0xb0 -- interrupt 28          */
        LONG(0)                  /* 0xb4 -- interrupt 29          */
        LONG(0)                  /* 0xb8 -- interrupt 30          */
        LONG(0)                  /* 0xbc -- interrupt 31          */
        FILL(0)
    }

    .text 0x08000100 :
    {
        *(.text)
    }
}
