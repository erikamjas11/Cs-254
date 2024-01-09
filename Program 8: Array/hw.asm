.data 
numzero:.word 0 
size: .word 12 
array: .word 23, -12, 0, -32, 52, 0, 8, 0, 9, 8, 0, 0,
message: .asciiz "\n the number of zeroes are:"
.text
.globl main
main:
la $t4, size     # load address of size into $t4
lw $t5, 0($t4)   # loading size into $t5 for counting how many elements are done
li $t3, 0        # container for the number of zeroes
la $t0, array    # load the address of first element of array in $t0
li $t1, 4      # offset required to the address for going to the next element
label1: 
lw $t2, ($t0)    # loading the element into $t2
addi $t5, $t5, -1   # decrement the counter for the number of loops
add $t0, $t0, $t1      # add $t0 with 32 to point to next element of the array
beq $t2, $zero, label2  # goto label if the element is a zero
beq $t5, $zero, label3 # goto label3 to end as the array is done
j label1
label2:
addi $t3, $t3, 1    # increase the counter of number of zeroes by 1
beq $t5, $zero, label3 # goto label3 to end as the array is done
j label1
label3:
la $t6, numzero      # storing address of numzero
sw $t3, 0($t6)      # storing number of zeroes into numzero
li $v0,4
la $a0, message                   # printing the message for the number of zeroes
syscall
li $v0,1
lw $t8, 0($t6)                   # loading from memory numzero and putting it into $t8
move $a0, $t8            # printing the number of zeroes
syscall
jr $ra