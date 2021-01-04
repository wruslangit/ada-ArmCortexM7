OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    GPIOA_DIRCLR = 0x41004404;
    GPIOA_DIRSET = 0x41004408;
    GPIOA_OUTCLR = 0x41004414;
    GPIOA_OUTSET = 0x41004418;
    GPIOA_IN = 0x41004420;
    GPIOA_PINCFG8 = 0x41004448;
    GPIOA_PINCFG9 = 0x41004449;
    GPIOA_PINCFG14 = 0x4100444e;
    GPIOA_PINCFG15 = 0x4100444f;
    GPIOA_PINCFG20 = 0x41004454;
    GPIOA_PINCFG21 = 0x41004455;
    GPIOA_PINCFG6 = 0x41004446;
    GPIOA_PINCFG7 = 0x41004447;
    GPIOA_PINCFG18 = 0x41004452;
    GPIOA_PINCFG16 = 0x41004450;
    GPIOA_PINCFG19 = 0x41004453;
    GPIOA_PINCFG17 = 0x41004451;

    GPIOA_PMUX3 = 0x41004433;
    GPIOA_PMUX4 = 0x41004434;
    GPIOA_PMUX7 = 0x41004437;
    GPIOA_PMUX8 = 0x41004438;
    GPIOA_PMUX9 = 0x41004439;
    GPIOA_PMUX10 = 0x4100443a;
    
    ISER = 0xe000e100;

    GCLK_CLKCTRL = 0x40000c02;
    
    EIC_CTRL = 0x40001800;
    EIC_INTENTSET = 0x4000180c;
    EIC_INTFLAG = 0x40001810;
    EIC_CONFIG0 = 0x40001818;
    EIC_CONFIG1 = 0x4000181c;
    
    .vectors 0x00004000 :
    {
        LONG(0x20008000)
        LONG(run + 1)
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
        LONG(handle_buttons + 1) /* 0x50 -- EIC                   */
        LONG(0)                  /* 0x54 -- interrupt 5           */
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
        FILL(0)
    }

    .text 0x00004100 :
    {
        *(.text)
    }
    
    .bss 0x20000000 :
    {
        *(.bss)
    }
}
