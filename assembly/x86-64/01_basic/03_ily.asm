; Architecture	x84-64 (64-bit)
; OS			Linux Ubuntu 20.04.4
;
; An assembly program to print an ASCII art of I love you.
;
; nasm -felf64 03_ily.asm && ld 03_ily.o

section .text
  global _start 
 
_start:                 
    call    print0x8            ; invoke the I ASCII function

    ; print out a new line.
    mov     rax,    1                 
    mov     rdi,    1
    call    nline

    call    printHeart          ; invoke the heart ASCII function

    ; print out a new line.
    mov     rax,    1                 
    mov     rdi,    1
    call    nline

    call    printYou            ; invoke the you ASCII
    
    ; exit.
    mov     rax,    60                 
    xor     rdi,    rdi              
    syscall

printHeart:
    ; first heart row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    rh0            
    mov     rdx,    rh0s                 
    syscall

    ; second heart row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    rh1            
    mov     rdx,    rh1s                 
    syscall

    ; third heart row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    rh2           
    mov     rdx,    rh2s                 
    syscall

    ; forth heart row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    rh3           
    mov     rdx,    rh3s                 
    syscall

    ; fifth heart row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    rh4           
    mov     rdx,    rh4s                 
    syscall  

    ret

printYou:
    ; first u row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    ru0            
    mov     rdx,    ru0s                 
    syscall

    ; second u row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    ru1            
    mov     rdx,    ru1s                 
    syscall

    ; third u row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    ru2           
    mov     rdx,    ru2s                 
    syscall

    ; forth u row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    ru3           
    mov     rdx,    ru3s                 
    syscall

    ; fifth u row.
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    ru4           
    mov     rdx,    ru4s                 
    syscall  

    ret

L1:
    mov     rax,    1                 
    mov     rdi,    1
    mov     rsi,    msg            
    mov     rdx,    msgSize                 
    syscall

    mov     rcx,    [max]           ; move max to rcx register
    dec     rcx                     ; decrement by 1
    mov     [max], rcx              ; move updated rcx to max
    jnz     L1                ; jump to  the print function 

    ret

nline:
    ; print out a new line.
    mov     rsi,    newLine           
    mov     rdx,    1                 
    syscall

    ret

section .data 
    msg:    db  "      88", 10      ; string to construct the I
    msgSize equ $-msg
    newLine db  10
    ; heart ASCII art data.
    rh0:     db  "  ,d88b.d88b,", 10
    rh0s     equ $-rh0
    rh1:     db  "  88888888888", 10
    rh1s     equ $-rh1
    rh2:     db  "  `Y8888888Y'", 10
    rh2s     equ $-rh2
    rh3:     db  "    `Y888Y'  ", 10
    rh3s     equ $-rh3
    rh4:     db  "      `Y'", 10
    rh4s     equ $-rh4
    ; U ASCII data.
    ru0:     db  "   d8    8b", 10
    ru0s     equ $-ru0
    ru1:     db  "   88    88", 10
    ru1s     equ $-ru1
    ru2:     db  "   88    88", 10
    ru2s     equ $-ru2
    ru3:     db  "   888YY888", 10
    ru3s     equ $-ru3
    ru4:     db  "   `Y8888Y'", 10
    ru4s     equ $-ru4
    max      dw  5                  ; maximum line for I  