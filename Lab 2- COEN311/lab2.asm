;Mamadou Kaba
;February 25,2021

section .data

mick  dw 2; define one word (2 bytes) of data
keith dw 3; define another word of data with value 3

section .bss

section .text
	global _start

_start:
	mov ax, [mick]; store contents of memory word at location mick into  into the ax register

ron:    mov bx,[keith];	store contents of memory word at location keith into the bx register
	add ax,bx;	 ax = ax + bx contents of register bx is added to the original contents of register ax and the result is stored in register ax (overwriting the original content)
	mov eax,1;	 The system call for exit(sys_exit)
	mov ebx,0;	 Exit with return code of 0(no error)
	int 80h
