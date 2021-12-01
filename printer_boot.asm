org 0x7c00

mov bx, BOOTING_STRING
call print
mov bx, HELLO_STRING
call print

jmp $

%include "print_function.asm"

BOOTING_STRING:
db '===== Booting OS =====', 0x0d, 0x0a, 0

HELLO_STRING:
db 'Hello World!', 0x0d, 0x0a, 0

; Padding boot sector to 512 bytes, ending with the magic number (0xaa55)
TIMES 510 - ($ - $$) DB 0
DW 0xaa55
