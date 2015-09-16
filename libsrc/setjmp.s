.globl setjmp_220
setjmp_220:  
	 sw $ra, 0($a0)
	 sw $sp, 4($a0)
	 sw $fp, 8($a0)
	 sw $s0, 12($a0)
	 sw $s1, 16($a0)
	 sw $s2, 20($a0)
	 sw $s3, 24($a0)
	 sw $s4, 28($a0)
	 sw $s5, 32($a0)
	 sw $s6, 36($a0)
	 sw $s7, 40($a0)
	addi $t0, 1
	sw $t0, 44($a0)
	li $v0, 0
	jr $ra
	
