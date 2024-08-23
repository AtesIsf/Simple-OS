i686-elf-as ./src/boot.s -o ./bin/boot.o
i686-elf-gcc -c ./src/kernel.c -o ./bin/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -c ./src/klib/kstd.c -o ./bin/kstd.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -c ./src/klib/ktty.c -o ./bin/ktty.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -T ./src/linker.ld -o ./target/myos.bin -ffreestanding -O2 -nostdlib ./bin/*.o -lgcc
qemu-system-i386 -kernel ./target/myos.bin
