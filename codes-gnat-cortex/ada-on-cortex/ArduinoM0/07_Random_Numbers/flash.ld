OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    GPIOA_DIRSET = 0x41004408;
    GPIOA_OUTSET = 0x41004418;
    GPIOA_OUTCLR = 0x41004414;
  
    .vectors 0x00004000 :
    {
        LONG(0x20008000)
        LONG(run + 1)
        FILL(0)
    }

    .text 0x00004100 :
    {
        *(.text)
    }
}
