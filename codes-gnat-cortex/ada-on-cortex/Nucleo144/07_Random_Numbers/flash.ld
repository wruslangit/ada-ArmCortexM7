OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    RCC_CR = 0x40023800;
    RCC_AHB1ENR = 0x40023830;
    RCC_AHB2ENR = 0x40023834;
    
    GPIOA_MODER = 0x40020000;
    GPIOA_BSRR = 0x40020018;

    RNG_CR = 0x50060800;
    RNG_SR = 0x50060804;
    RNG_DR = 0x50060808;
    
    .vectors 0x08000000 :
    {
        LONG(0x20010000)
        LONG(run + 1)
        FILL(0)
    }

    .text 0x08000200 :
    {
        *(.text)
    }
}
