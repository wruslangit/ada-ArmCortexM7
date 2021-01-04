OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    RCC_CR = 0x40023800;
    RCC_AHB1ENR = 0x40023830;
    RCC_APB2ENR = 0x40023844;

    ISER0 = 0xe000e100;
    ISER1 = 0xe000e104;
    SYSCFG_EXTICR1 = 0x40013808;
    SYSCFG_EXTICR2 = 0x4001380c;
    SYSCFG_EXTICR3 = 0x40013810;
    SYSCFG_EXTICR4 = 0x40013814;
    EXTI_IMR = 0x40013c00;
    EXTI_RTSR = 0x40013c08;
    EXTI_FTSR = 0x40013c0c;
    EXTI_PR = 0x40013c14;

    GPIOA_MODER = 0x40020000;
    GPIOA_PUPDR = 0x4002000c;
    GPIOA_IDR = 0x40020010;
    GPIOA_BSRR = 0x40020018;
    
    GPIOD_MODER = 0x40020c00;
    GPIOD_PUPDR = 0x4002c0c;
    GPIOD_IDR = 0x40020c10;
    GPIOD_BSRR = 0x40020c18;
    
    GPIOE_MODER = 0x40021000;
    GPIOE_PUPDR = 0x4002100c;
    GPIOE_IDR = 0x40021010;
    GPIOE_BSRR = 0x40021018;
    
    GPIOF_MODER = 0x40021400;
    GPIOF_PUPDR = 0x4002140c;
    GPIOF_IDR = 0x40021410;
    GPIOF_BSRR = 0x40021418;
    
    RNG_CR = 0x50060800;
    RNG_SR = 0x50060804;
    RNG_DR = 0x50060808;
    
    .vectors 0x08000000 :
    {
        LONG(0x20010000)         /* 0x000 -- initial stack pointer */
        LONG(run + 1)            /* 0x004 -- reset                 */
        LONG(0)                  /* 0x008 -- nmi                   */
        LONG(0)                  /* 0x00c -- hard fault            */
        LONG(0)                  /* 0x010                          */
        LONG(0)                  /* 0x014                          */
        LONG(0)                  /* 0x018                          */
        LONG(0)                  /* 0x01c                          */
        LONG(0)                  /* 0x020                          */
        LONG(0)                  /* 0x024                          */
        LONG(0)                  /* 0x028                          */
        LONG(0)                  /* 0x02c -- svcall                */
        LONG(0)                  /* 0x030                          */
        LONG(0)                  /* 0x034                          */
        LONG(0)                  /* 0x038 -- pendsv                */
        LONG(0)                  /* 0x03c -- systick               */
        LONG(0)                  /* 0x040 -- interrupt 0           */
        LONG(0)                  /* 0x044 -- interrupt 1           */
        LONG(0)                  /* 0x048 -- interrupt 2           */
        LONG(0)                  /* 0x04c -- interrupt 3           */
        LONG(0)                  /* 0x050 -- interrupt 4           */
        LONG(0)                  /* 0x054 -- interrupt 5           */
        LONG(0)                  /* 0x058 -- interrupt 6           */
        LONG(0)                  /* 0x05c -- interrupt 7           */
        LONG(0)                  /* 0x060 -- interrupt 8           */
        LONG(0)                  /* 0x064 -- interrupt 9           */
        LONG(0)                  /* 0x068 -- interrupt 10          */
        LONG(0)                  /* 0x06c -- interrupt 11          */
        LONG(0)                  /* 0x070 -- interrupt 12          */
        LONG(0)                  /* 0x074 -- interrupt 13          */
        LONG(0)                  /* 0x078 -- interrupt 14          */
        LONG(0)                  /* 0x07c -- interrupt 15          */
        LONG(0)                  /* 0x080 -- interrupt 16          */
        LONG(0)                  /* 0x084 -- interrupt 17          */
        LONG(0)                  /* 0x088 -- interrupt 18          */
        LONG(0)                  /* 0x08c -- interrupt 19          */
        LONG(0)                  /* 0x090 -- interrupt 20          */
        LONG(0)                  /* 0x094 -- interrupt 21          */
        LONG(0)                  /* 0x098 -- interrupt 22          */
        LONG(0)                  /* 0x09c -- interrupt 23          */
        LONG(0)                  /* 0x0a0 -- interrupt 24          */
        LONG(0)                  /* 0x0a4 -- interrupt 25          */
        LONG(0)                  /* 0x0a8 -- interrupt 26          */
        LONG(0)                  /* 0x0ac -- interrupt 27          */
        LONG(0)                  /* 0x0b0 -- interrupt 28          */
        LONG(0)                  /* 0x0b4 -- interrupt 29          */
        LONG(0)                  /* 0x0b8 -- interrupt 30          */
        LONG(0)                  /* 0x0bc -- interrupt 31          */
        LONG(0)                  /* 0x0c0 -- interrupt 32          */
        LONG(0)                  /* 0x0c4 -- interrupt 33          */
        LONG(0)                  /* 0x0c8 -- interrupt 34          */
        LONG(0)                  /* 0x0cc -- interrupt 35          */
        LONG(0)                  /* 0x0d0 -- interrupt 36          */
        LONG(0)                  /* 0x0d4 -- interrupt 37          */
        LONG(0)                  /* 0x0d8 -- interrupt 38          */
        LONG(0)                  /* 0x0dc -- interrupt 39          */
        LONG(button_pressed + 1) /* 0x0e0 -- EXTI15_10             */
        LONG(0)                  /* 0x0e4 -- interrupt 41          */
        LONG(0)                  /* 0x0e8 -- interrupt 42          */
        LONG(0)                  /* 0x0ec -- interrupt 43          */
        LONG(0)                  /* 0x0f0 -- interrupt 44          */
        LONG(0)                  /* 0x0f4 -- interrupt 45          */
        LONG(0)                  /* 0x0f8 -- interrupt 46          */
        LONG(0)                  /* 0x0fc -- interrupt 47          */
        LONG(0)                  /* 0x100 -- interrupt 48          */
        LONG(0)                  /* 0x104 -- interrupt 49          */
        LONG(0)                  /* 0x108 -- interrupt 50          */
        LONG(0)                  /* 0x10c -- interrupt 51          */
        LONG(0)                  /* 0x110 -- interrupt 52          */
        LONG(0)                  /* 0x114 -- interrupt 53          */
        LONG(0)                  /* 0x118 -- interrupt 54          */
        LONG(0)                  /* 0x11c -- interrupt 55          */
        LONG(0)                  /* 0x120 -- interrupt 56          */
        LONG(0)                  /* 0x124 -- interrupt 57          */
        LONG(0)                  /* 0x128 -- interrupt 58          */
        LONG(0)                  /* 0x12c -- interrupt 59          */
        LONG(0)                  /* 0x130 -- interrupt 60          */
        LONG(0)                  /* 0x134 -- interrupt 61          */
        LONG(0)                  /* 0x138 -- interrupt 62          */
        LONG(0)                  /* 0x13c -- interrupt 63          */
        LONG(0)                  /* 0x140 -- interrupt 64          */
        LONG(0)                  /* 0x144 -- interrupt 65          */
        LONG(0)                  /* 0x148 -- interrupt 66          */
        LONG(0)                  /* 0x14c -- interrupt 67          */
        LONG(0)                  /* 0x150 -- interrupt 68          */
        LONG(0)                  /* 0x154 -- interrupt 69          */
        LONG(0)                  /* 0x158 -- interrupt 70          */
        LONG(0)                  /* 0x15c -- interrupt 71          */
        LONG(0)                  /* 0x160 -- interrupt 72          */
        LONG(0)                  /* 0x164 -- interrupt 73          */
        LONG(0)                  /* 0x168 -- interrupt 74          */
        LONG(0)                  /* 0x16c -- interrupt 75          */
        LONG(0)                  /* 0x170 -- interrupt 76          */
        LONG(0)                  /* 0x174 -- interrupt 77          */
        LONG(0)                  /* 0x178 -- interrupt 78          */
        LONG(0)                  /* 0x17c -- interrupt 79          */
        LONG(0)                  /* 0x180 -- interrupt 80          */
        LONG(0)                  /* 0x184 -- interrupt 81          */
        LONG(0)                  /* 0x188 -- interrupt 82          */
        LONG(0)                  /* 0x18c -- interrupt 83          */
        LONG(0)                  /* 0x190 -- interrupt 84          */
        LONG(0)                  /* 0x194 -- interrupt 85          */
        LONG(0)                  /* 0x198 -- interrupt 86          */
        LONG(0)                  /* 0x19c -- interrupt 87          */
        LONG(0)                  /* 0x1a0 -- interrupt 88          */
        LONG(0)                  /* 0x1a4 -- interrupt 89          */
        LONG(0)                  /* 0x1a8 -- interrupt 90          */
        LONG(0)                  /* 0x1ac -- interrupt 91          */
        LONG(0)                  /* 0x1b0 -- interrupt 92          */
        LONG(0)                  /* 0x1b4 -- interrupt 93          */
        LONG(0)                  /* 0x1b8 -- interrupt 94          */
        LONG(0)                  /* 0x1bc -- interrupt 95          */
        LONG(0)                  /* 0x1c0 -- interrupt 96          */
        LONG(0)                  /* 0x1c4 -- interrupt 97          */
        FILL(0)
    }

    .text 0x08000200 :
    {
        *(.text)
    }
}
