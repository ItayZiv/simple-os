
mov ah, 0x0e

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $


; Padding boot sector to 512 bytes, ending with the magic number (0xaa55)
TIMES 510 - ($ - $$) DB 0
DW 0xaa55
