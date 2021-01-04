OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
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
    
    .bss 0x20070000 :
    {
        *(.bss)
    }
}
