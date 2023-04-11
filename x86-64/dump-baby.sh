yasm -g dwarf2 -f elf64 ./baby/$1.asm -o dump/$1 -l dump/$1.lst
ld -g dump/$1 -o dump/$1.exe
