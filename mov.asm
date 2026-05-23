BITS 64

; mov rax, 50         ; 64-bits
; mov rax, [0x1000]   ; memory address
; mov eax, 20         ; 32-bits

mov rax, [_value]
mov qword [_value], 57

mov rax, rcx
_value: dq 69