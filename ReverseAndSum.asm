TITLE Subtract, Version 2         (ReverseAndSum.asm)

; Subject:System Engineering
; Author:Sikako
; -----------------------------------------------------------------------------------------------
; Input 10 integers from the console and output all the values in reverse order, and their sum. |
; -----------------------------------------------------------------------------------------------

INCLUDE Irvine32.inc


.data

	prompt  BYTE "Enter a interger: ",0
	Sum BYTE 0


.code
	main PROC
		mov  ebx, 0							; ebx = 0
		mov  edx,OFFSET prompt
		mov  ecx, 10						; loop 10
	L1:
		call WriteString					; prompt
		call ReadInt						; enter a interger
		push eax
		add  ebx, eax						; ebx += eax
		mov  eax, '+'						
		push eax
		loop L1


		exit
	main ENDP
	END main