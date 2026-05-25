; printf("%d", 50)
; all C function accepts first argument in RDI and second in RSI
BITS 64
default rel

extern printf
global main

section .data
fmt db "%ld", 10, 0

section .text
_sum:
    ; EXECUTES HERE
    add rdi, rsi
    mov rax, rdi    ; return the result in RAX register
    ret     ; return to that line only (empty one)
main:
    mov rdi, 50
    mov rsi, 20
    call _sum
    ; address here, goes to stack (this line), Print the result
    mov rdi, fmt
    mov rsi, rax
    xor eax, eax
    call printf

    xor eax, eax
    ret