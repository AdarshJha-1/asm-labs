; REGISTERS ??

; registers are place where we can store numbers 

; 8 -> 16 -> 32 -> 64 bites register

; AL (8-bits) AH (8-bits)  
; AX (16-bit) (AH | AL >> 8) ->   |__AH_(upper 8-bits)___|
;                                 |  AL (lower 8-bits)   |

mov ax, 0xfff4
; AH = FF -> upper
; AL = F4 -> lower

mov ah, 0xf3    ; upper change
; AX = F3F4

; EAX = 32-bits
; E (upper 16-bits) | AX (lower 16-bits)

mov eax, 0xf4f4ffff
; AX = FFFF
; E = F4F4 (can't access E separately)

; RAX = 64-bits
; R | EAX
; R (upper 32-bits), EAX (lower 32-bits)

mov rax, 0xf4f4f4f4ffffffff
; EAX = FFFFFFFF
; R = F4F4F4F4  (can't be accessed alone)


; AX, CX, DX, BX
; CX (CH | CL)  ; 16-bits -> ECX (32-bits) -> RCX (64-bits)
; AX (AH | AL)  ; 16-bits
; DX (DH | DL)  ; 16-bits
; BX (BH | BL)  ; 16-bits


; General purpose registers
; RAX, EAX, AX, AH, AL = Mathematical operation, i,e div, mul
; RXC, ECX, CX, CH, CL = Counting (loops), bit-shifting
; RDC, EDX, DX, DH, DL = Data I/O in ans out instruction
; RBX, EBX, BX, BH, BL = Expects a calling convention where we push and pop the register

; Stack pointer
; RSP (64-bits), ESP (32-bits), SP (16-bits)
; Points to anywhere in memory
; push instruction called decrement by one word
; pop instruction called increment by one word

; RBP (64-bits), EBP (32-bits), BP (16-bits)
; Points to old stack pointer
; Can also relatively address on the stack


; RDI (64-bits), EDI (32-bits), DI (16-bits)
; Used for string or data copying instructions
; for output

; RSI (64-bits), ESI (32-bits), SI (16-bits)
; Used for string or data copying instructions
; for input