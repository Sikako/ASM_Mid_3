TITLE Subtract, Version 2         (ReverseAndSum.asm)

; Subject:System Engineering
; Author:Sikako
; -----------------------------------------------------------------------------------------------
; Input 10 integers from the console and output all the values in reverse order, and their sum. |
; -----------------------------------------------------------------------------------------------

INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
    ExitProcess PROTO,dwExitCode:DWORD

.data

	prompt  BYTE "Enter a interger: ",0
	Sum BYTE 0


.code
	main PROC
		mov  edx,OFFSET prompt
		call WriteString
		call ReadInt
		call WriteInt


		exit
	main ENDP
	END main