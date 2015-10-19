; Exercise 1: Summing the gaps between array elements

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 0,2,5,9,10
sum DWORD 0

.code
main PROC

	mov edi, OFFSET array
	mov ecx, LENGTHOF array

	L1:
		mov eax, [edi]
		add edi, 4
		mov ebx, [edi]
		sub ebx, eax
		add sum, ebx
		loop L1

		invoke ExitProcess, 0

	main ENDP
	END main
