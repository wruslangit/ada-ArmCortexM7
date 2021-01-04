OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    PIOB_PER = 0x400E1000;
    PIOB_OER = 0x400E1010;
    PIOB_ODR = 0x400E1014;
    PIOB_PUER = 0x400E1064;
    PIOB_PUDR = 0x400E1060;
    PIOB_SODR = 0x400E1030;
    PIOB_CODR = 0x400E1034;
    PIOB_PDSR = 0x400E103C;
    PIOB_IER = 0x400E1040;
    PIOB_IDR = 0x400E1044;
    PIOB_ISR = 0x400E104C;

    PIOC_PER = 0x400E1200;
    PIOC_OER = 0x400E1210;
    PIOC_ODR = 0x400E1214;
    PIOC_PUER = 0x400E1264;
    PIOC_PUDR = 0x400E1260;
    PIOC_SODR = 0x400E1230;
    PIOC_CODR = 0x400E1234;
    PIOC_PDSR = 0x400E123C;
    PIOC_IER = 0x400E1240;
    PIOC_IDR = 0x400E1244;
    PIOC_ISR = 0x400E124C;

    PIOD_PER = 0x400E1400;
    PIOD_OER = 0x400E1410;
    PIOD_ODR = 0x400E1414;
    PIOD_PUER = 0x400E1464;
    PIOD_PUDR = 0x400E1460;
    PIOD_SODR = 0x400E1430;
    PIOD_CODR = 0x400E1434;
    PIOD_PDSR = 0x400E143C;
    PIOD_IER = 0x400E1440;
    PIOD_IDR = 0x400E1444;
    PIOD_ISR = 0x400E144C;

    PMC_PCER0 = 0x400E0610;
    PMC_PCER1 = 0x400E0700;
    
    TRNG_CR = 0x400BC000;
    TRNG_ISR = 0x400BC01C;
    TRNG_ODATA = 0x400BC050;

    ISER0 = 0xE000E100;
    
    .vectors 0x00080000 :
    {
        LONG(0x20088000)         /* 0x00 - initial stack pointer */
        LONG(run + 1)            /* 0x04 - reset                 */
        LONG(0)                  /* 0x08 - reserved              */
        LONG(0)                  /* 0x0c - hard fault            */
        LONG(0)                  /* 0x10 - memory mgmt fault     */
        LONG(0)                  /* 0x14 - bus fault             */
        LONG(0)                  /* 0x18 - usage fault           */
        LONG(0)                  /* 0x1c - reserved              */
        LONG(0)                  /* 0x20 - ...                   */
        LONG(0)                  /* 0x24                         */
        LONG(0)                  /* 0x28                         */
        LONG(0)                  /* 0x2c - svcall                */
        LONG(0)                  /* 0x30 - reserved for debug    */
        LONG(0)                  /* 0x34 - reserved              */
        LONG(0)                  /* 0x38 - pendsv                */
        LONG(0)                  /* 0x3c - systick               */
        LONG(0)                  /* 0x40 - interrupt 0           */
        LONG(0)                  /* 0x44 - interrupt 1           */
        LONG(0)                  /* 0x48 - interrupt 2           */
        LONG(0)                  /* 0x4c - interrupt 3           */
        LONG(0)                  /* 0x50 - interrupt 4           */
        LONG(0)                  /* 0x54 - interrupt 5           */
        LONG(0)                  /* 0x58 - interrupt 6           */
        LONG(0)                  /* 0x5c - interrupt 7           */
        LONG(0)                  /* 0x60 - interrupt 8           */
        LONG(0)                  /* 0x64 - interrupt 9           */
        LONG(0)                  /* 0x68 - interrupt 10          */
        LONG(0)                  /* 0x6c - interrupt 11          */
        LONG(handle_buttons + 1) /* 0x70 - interrupt 12 (PIOB)   */
        LONG(handle_buttons + 1) /* 0x74 - interrupt 13 (PIOC)   */
        LONG(0)                  /* 0x78 - interrupt 14 (PIOD)   */
        LONG(0)                  /* 0x7c - interrupt 15          */
        LONG(0)                  /* 0x80 - interrupt 16          */
        LONG(0)                  /* 0x84 - interrupt 17          */
        LONG(0)                  /* 0x88 - interrupt 18          */
        LONG(0)                  /* 0x8c - interrupt 19          */
        LONG(0)                  /* 0x90 - interrupt 20          */
        LONG(0)                  /* 0x94 - interrupt 21          */
        LONG(0)                  /* 0x98 - interrupt 22          */
        LONG(0)                  /* 0x9c - interrupt 23          */
        LONG(0)                  /* 0xa0 - interrupt 24          */
        LONG(0)                  /* 0xa4 - interrupt 25          */
        LONG(0)                  /* 0xa8 - interrupt 26          */
        LONG(0)                  /* 0xac - interrupt 27          */
        LONG(0)                  /* 0xb0 - interrupt 28          */
        LONG(0)                  /* 0xb4 - interrupt 29          */
        FILL(0)
    }

    .text 0x00080100 :
    {
        *(.text)
    }

    .bss 0x20070000 :
    {
        *(.bss)
    }
}
