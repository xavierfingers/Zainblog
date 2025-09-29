mov $1,%rdx
mov $2,%rcx
xor %rdx,%rcx
lda
sr %rcx,%rax

{loop}
    add $1,%rdx
    cmp $10,%rdx
    jl loop
    jmp end
    
