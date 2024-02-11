section .data

section .bss

section .text
	global _start
_start:
	mov ax,5 ; store 5 into the ax register
keith:	mov bx,2 ; store 2 into the bx register
	add ax,bx ; ax = ax + bx
	; contents of register bx is added to the
	; original contents of register ax and the
	; result is stored in register ax (overwriting
	; the original content
	mov eax,1 ; The system call for exit (sys_exit)
	mov ebx,0 ; Exit with return code
	int 80h ; end of program
