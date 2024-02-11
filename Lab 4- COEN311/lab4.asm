; Mamadou Diao Kaba
section .data
	message db 'juMping Jack flaSh #1',10,0
section .text
	global _start

 _start:
	mov eax, 4 
	mov ebx, 1
	mov ecx, message
	mov edx, 22 
	int 80h
	mov ecx, 0
begin:	mov dl, [message+ecx]
	cmp ecx, 22
	je the_end
	cmp dl, 'a'
	jl next
	cmp dl, 'z'
	jg next
	sub dl, 32
	mov [message+ecx], dl
next:	inc ecx
	jmp begin
the_end:
	mov eax, 4 
	mov ebx, 1
	mov ecx, message
	mov edx, 22 
	int 80h
	mov eax, 1 
	mov ebx, 0 
	int 80h


