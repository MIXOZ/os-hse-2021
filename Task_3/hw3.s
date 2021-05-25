    .global write_to_file
    .extern puts

    .text
write_to_file:
    mov  %rsi,  %r9
    mov  $85,   %rax
    mov  $0644, %rsi
    syscall
    cmp  $0,    %rax
    jl   1f
    mov  %rax,  %r8
    mov  %r9,   %rdi
    call strlen
    mov  %rax,  %rdx
    mov  %r8,   %rdi
    mov  %r9,   %rsi
    mov  $1,    %rax
    syscall
    cmp  $0,    %rax
    jl   2f
    mov  $3,    %rax
    syscall
    cmp  $0,    %rax
    jl   1f
    mov  $1,    %rax
    jmp  5f
2:  mov  $3,    %rax
    syscall
1:  mov  $0,    %rax
5:  ret
