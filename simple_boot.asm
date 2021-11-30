
jmp $


; Padding boot sector to 512 bytes, ending with the magic number (0xaa55)
TIMES 510 - ($ - $$) DB 0
DW 0xaa55
