gcc -c -gnatp -mcpu=cortex-m0 -mthumb -mfloat-abi=soft lcd.adb
gcc -c -gnatp -mcpu=cortex-m0 -mthumb -mfloat-abi=soft pins.adb
gcc -c -gnatp -mcpu=cortex-m0 -mthumb -mfloat-abi=soft program.adb
gcc -c -gnatp -mcpu=cortex-m0 -mthumb -mfloat-abi=soft utils.adb
ld -T flash.ld -o program.elf lcd.o pins.o program.o utils.o
objcopy -O binary program.elf program.bin
