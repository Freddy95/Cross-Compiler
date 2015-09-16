.globl longjmp_220
longjmp_220:
	lw $t0, 44($a0)
	li $t1, 1
	beq $t0, $t1, works
error1: 
	jr $ra
works:
	 add $t0, $ra, $0
         lw $ra, 0($a0)
	 sub $t0, $ra, $t0
	 bgtz $t0, error
         lw $sp, 4($a0)
         lw $fp, 8($a0)
         lw $s0, 12($a0)
         lw $s1, 16($a0)
         lw $s2, 20($a0)
         lw $s3, 24($a0)
         lw $s4, 28($a0)
         lw $s5, 32($a0)
         lw $s6, 36($a0)
         lw $s7, 40($a0)
         add $v0, $a1, $0
        jr $ra
error:
	add $ra, $t0, $0
	lw $sp, 4($a0)
         lw $fp, 8($a0)
         lw $s0, 12($a0)
         lw $s1, 16($a0)
         lw $s2, 20($a0)
         lw $s3, 24($a0)
         lw $s4, 28($a0)
         lw $s5, 32($a0)
         lw $s6, 36($a0)
         lw $s7, 40($a0)
         add $v0, $a1, $0
        jr $ra

