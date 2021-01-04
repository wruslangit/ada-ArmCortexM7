OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    PIOD_PER = 0x400E1400;
    PIOD_OER = 0x400E1410;
    PIOD_SODR = 0x400E1430;
    PIOD_CODR = 0x400E1434;

    PMC_PCER1 = 0x400E0700;
    TRNG_CR = 0x400BC000;
    TRNG_ISR = 0x400BC01C;
    TRNG_ODATA = 0x400BC050;

    .vectors 0x00080000 :
    {
        LONG(0x20088000)
        LONG(run + 1)
        FILL(0)
    }

    .text 0x00080100 :
    {
        *(.text)
    }
}
