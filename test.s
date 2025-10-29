.data
msg_o: .word 111
msg_k: .word 107
msg_change_line: .word 10

.text

main:
    jal ra, print_msg

    # Make the system call to exit the program
    addi a0, x0, 0 # exit(0)
    addi a7, x0, 10
    ecall

print_msg:
    # We don't have system call to print the string
    # Make the system call to print every character "ok\n"
    addi a7, x0, 11
    lui s0, %hi(msg_o)
    addi s0, s0, %lo(msg_o)
    lw a0, 0(s0)
    ecall
    addi s0, s0, 4
    lw a0, 0(s0)
    ecall
    addi s0, s0, 4
    lw a0, 0(s0)
    ecall
    jalr x0, ra, 0
