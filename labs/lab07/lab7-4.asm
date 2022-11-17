%include 'in_out.asm'

SECTION .data
rem: DB 'Вычислить значение выражения 10(x+1)-10',0
msg: DB 'Введите x: ',0
div: DB 'Результат: ',0

SECTION .bss

x:	RESB 80
rez:	RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, rem
call sprintLF

mov eax, msg
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax, x
call atoi

mov ebx, 1
add eax, ebx
mov ebx, 10
mul ebx
sub eax, 10

mov [rez], eax

mov eax,div
call sprintLF
mov eax, [rez]
call iprintLF

call quit

