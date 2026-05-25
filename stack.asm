; Stack
; RSP -> Stack Pointer -> holds address of current top of the stack
; RBP -> Base Pointer -> used as stable reference point for current stack frame, usually stores previous RBP value

; PUSH instruction -> decrement RSP by 8 bytes (64-bit), then copy value to memory pointed by RSP
; POP instruction -> copy value pointed by RSP into register, then increment RSP by 8 bytes