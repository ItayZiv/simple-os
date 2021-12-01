print:
	pusha

	mov ah, 0x0e

print_loop:
	mov al, [bx]
	add bx, 1
	int 0x10

	cmp al, 0
	jg print_loop

	popa
	ret
