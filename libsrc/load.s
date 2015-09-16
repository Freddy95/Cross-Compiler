
.globl load
load: 	addi $sp, -4
	sw  $ra, ($sp)
	jalr $a0
	lw $ra, ($sp)
	addi $sp, 4
	jr $ra
 
