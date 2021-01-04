gcc -c -gnatp -mcpu=cortex-m4 -mthumb lcd.adb
gcc -c -gnatp -mcpu=cortex-m4 -mthumb pins.adb
gcc -c -gnatp -mcpu=cortex-m4 -mthumb program.adb
gcc -c -gnatp -mcpu=cortex-m4 -mthumb utils.adb
ld -T flash.ld -o program.elf lcd.o pins.o program.o utils.o
objcopy -O binary program.elf program.bin
