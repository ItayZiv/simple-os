print_hex:
	pusha

	mov cx, 5
	mov bx, HEX_STRING
	add bx, cx

conv_hex:
	mov ax, dx
	and ax, 0x000F

	cmp ax, 9
	jg hex_letters
	jmp hex_all

hex_letters:
	add ax, 0x07

hex_all:
	add [bx], ax

	shr dx, 4
	dec bx
	dec cx
	cmp cx, 1
	jg conv_hex

	mov bx, HEX_STRING
	call print

	popa
	ret

HEX_STRING: db '0x0000', 0

%include "print_function.asm"
