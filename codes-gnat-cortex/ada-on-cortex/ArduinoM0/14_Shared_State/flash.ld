OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
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
    
    .bss 0x20000000 :
    {
        *(.bss)
    }
}
