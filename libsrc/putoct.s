
.globl putoct
putoct:
bgtz $a0, continue
jr $ra

continue:
	li $t2, 8
	div $a0, $t2
	mfhi $t5
	addi $sp, $sp, -4
	addi $t7, $t7, 4
	sw $t5, 0($sp)
	mflo $a0
	bgtz $a0, continue
finish:
	lw $a0, 0($sp)
	li $v0, 1
	syscall
	addi $t7, $t7, -4
	li $t9, 0
	beq $t7, $t9, done
	addi $sp, $sp, 4
	j finish
done:
	jr $ra
	
