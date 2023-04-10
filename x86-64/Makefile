# baby

firs:
	yasm -f elf64 ./baby/first.asm -o dump/first && \
	ld dump/first -o dump/first.exe

secon:
	yasm -f elf64 ./baby/second.asm -o dump/second && \
	ld dump/second -o dump/second.exe

baby: firs secon

build: baby
