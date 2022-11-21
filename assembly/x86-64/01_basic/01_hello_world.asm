global _start
    section .text
_start: 
    mov             rax, 1                  ; use the write syscall
    mov             rdi, 1                  ; stdout
    mov             rsi, message            ; pass in the buffer
    mov             rdx, message_size       ; pass in the size of the buffer
    syscall                                 ; invoke the syscall.

    ; exit.
    mov             rax, 60                 ; sysexit
    mov             rdi, 0                  ; exit success
    syscall                                 ; invoke the syscall.
section .data
    message:        db "Hello World!", 10   ; declare a buffer
    message_size    equ $-message           ; buffer size.