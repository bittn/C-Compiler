bittn $1 $2 >> output.nasm
nasm -fmacho64 output.nasm
ld output.o -lSystem -o output
rm output.nasm
rm output.o
