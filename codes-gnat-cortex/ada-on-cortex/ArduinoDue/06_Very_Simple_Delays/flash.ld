OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    PIOD_PER = 0x400E1400;
    PIOD_OER = 0x400E1410;
    PIOD_SODR = 0x400E1430;
    PIOD_CODR = 0x400E1434;

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
