    .global product_of_min_and_max_primes
    .global sqrt
    .global isPrime
    .extern puts

    .text
product_of_min_and_max_primes:
    cmp  $0,   %rsi
    mov  %rdi, %r13
    mov  $0,   %r10
    mov  $0,   %r11
    mov  $4294967295,  %r14
    cmp  $0,   %rsi
    je   2f
1:  mov  $4,   %r12
    imul %r10, %r12
    mov  (%r13, %r12), %rdi
    mov  $4294967295,  %r12
    and  %r12, %rdi
    mov  %rdi, %r15
    call isPrime
    cmp  $0,   %rax
    je   3f
    mov  %r15, %rax
    cmp  %r14, %rax
    jg   4f
    mov  %rax, %r14
4:  cmp  %r11, %rax
    jl   3f
    mov  %rax, %r11
3:  inc  %r10
    cmp  %r10, %rsi
    je   2f
    jmp  1b
2:  imul %r11, %r14
    mov  %r14, %rax
    ret

    .text
isPrime:
    cmp  $2,   %rdi
    jl   3f
    mov  %rdi, %r9
    call sqrt
    mov  %rax, %r8
1:  cmp  $1,   %r8
    je   2f
    mov  $0,   %rdx
    mov  %r9,  %rax
    mov  %r8,  %rcx
    div  %rcx
    cmp  $0,   %rdx
    je   3f
    dec  %r8
    jmp  1b
2:  movq $1,   %rax
    jmp  4f
3:  movq $0,   %rax
4:  ret

    .text
sqrt:
    mov  $0,   %r8
1:  mov  %r8,  %rax
    mov  %r8,  %rcx
    imul %rcx, %rax
    cmp  %rax, %rdi
    jl   2f
    inc  %r8
    jmp  1b
2:  dec  %r8
    mov  %r8,  %rax
    ret

