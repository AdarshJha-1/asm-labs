BITS 64
default rel

jmp 0x1000      ; jump to this address, relative address
jmp _routine    ; jump to this label, relative address
jmp rax         ; jmp to this memory store in rax, absolute address
jmp qword [_pointer]    ; absolute address
jmp $   ; infinite jump like while(1) {} loop 

_pointer: dq 0xfffd34
_routine:
; this code will run