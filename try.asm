# Created by Coff2Asm
# NOTE: Must be executed with delayed branching enabled in MARS
text:	.text
	jal L400020
	addiu $29,$29,-16
	addiu $2,$0,10
	syscall
L400010:	jr $31
	sll $0,$0,0
	sll $0,$0,0
	sll $0,$0,0
L400020:	addiu $29,$29,-32
	sw $31,28($29)
	sw $30,24($29)
	addu $30,$29,$0
	sw $4,32($30)
	jal L400010
	sw $5,36($30)
	lui $4,0x1001
	jal L400140
	addiu $4,$4,208
	sw $2,16($30)
	lw $2,16($30)
	sll $0,$0,0
	bne $2,$0,L400078
	sll $0,$0,0
	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,0
	jal L4000b0
	sll $0,$0,0
	j L40008c
	sll $0,$0,0
L400078:	lui $4,0x1001
	addiu $4,$4,20
	lw $5,16($30)
	jal L400ae4
	sll $0,$0,0
L40008c:	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,52
	addu $2,$0,$0
	addu $29,$30,$0
	lw $31,28($29)
	lw $30,24($29)
	jr $31
	addiu $29,$29,32
L4000b0:	addiu $29,$29,-24
	sw $31,20($29)
	sw $30,16($29)
	addu $30,$29,$0
	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,76
	jal L4000f4
	sll $0,$0,0
	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,96
	addu $29,$30,$0
	lw $31,20($29)
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
L4000f4:	addiu $29,$29,-24
	sw $31,20($29)
	sw $30,16($29)
	addu $30,$29,$0
	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,140
	lui $4,0x1001
	addiu $4,$4,208
	jal L4013a0
	addiu $5,$0,42
	lui $4,0x1001
	jal L400ae4
	addiu $4,$4,160
	addu $29,$30,$0
	lw $31,20($29)
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
L400140:	sw $31,0($4)
	sw $29,4($4)
	sw $30,8($4)
	sw $16,12($4)
	sw $17,16($4)
	sw $18,20($4)
	sw $19,24($4)
	sw $20,28($4)
	sw $21,32($4)
	sw $22,36($4)
	sw $23,40($4)
	addi $8,$8,1
	sw $8,44($4)
	jr $31
	addiu $2,$0,0
	sll $0,$0,0
	addiu $29,$29,-24
	sw $31,20($29)
	sw $30,16($29)
	addu $30,$29,$0
	sw $4,24($30)
	sw $5,28($30)
	lw $4,28($30)
	lw $5,24($30)
	jal L401440
	sll $0,$0,0
	lw $2,28($30)
	addu $29,$30,$0
	lw $31,20($29)
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
L4001c0:	addiu $29,$29,-24
	sw $31,20($29)
	sw $30,16($29)
	addu $30,$29,$0
	sw $4,24($30)
	sw $5,28($30)
	lw $4,24($30)
	lw $5,28($30)
	jal L401450
	addiu $6,$0,1
	addu $29,$30,$0
	lw $31,20($29)
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
	sw $5,4($29)
	sw $6,8($29)
	sw $7,12($29)
	addiu $29,$29,-56
	sw $31,52($29)
	sw $30,48($29)
	addu $30,$29,$0
	sw $4,56($30)
	sw $5,60($30)
	sw $0,24($30)
	lw $2,60($30)
	sll $0,$0,0
	bne $2,$0,L40023c
	sll $0,$0,0
	j L400ad0
	sll $0,$0,0
L40023c:	lw $4,60($30)
	jal L401460
	sll $0,$0,0
	addu $3,$2,$0
	addiu $2,$0,-1
	bne $3,$2,L400260
	sll $0,$0,0
	j L400ad0
	sll $0,$0,0
L400260:	sw $0,24($30)
	sw $0,16($30)
	sw $0,16($30)
L40026c:	lw $4,60($30)
	jal L401460
	sll $0,$0,0
	lw $3,16($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L400294
	sll $0,$0,0
	j L400ad0
	sll $0,$0,0
L400294:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,37
	bne $3,$2,L400a9c
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,37
	bne $3,$2,L400304
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	lw $4,56($30)
	jal L4001c0
	addu $5,$2,$0
L400304:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,100
	bne $3,$2,L400358
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,0($2)
	jal L401920
	sll $0,$0,0
L400358:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L40040c
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $2,0($2)
	sll $0,$0,0
	sw $2,28($30)
	sw $0,20($30)
L4003b0:	lw $4,28($30)
	jal L401460
	sll $0,$0,0
	lw $3,20($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L4003d8
	sll $0,$0,0
	j L40040c
	sll $0,$0,0
L4003d8:	lw $3,28($30)
	lw $2,20($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	lw $4,56($30)
	jal L4001c0
	addu $5,$2,$0
	lw $2,20($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L4003b0
	sw $2,20($30)
L40040c:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,99
	bne $3,$2,L400464
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,56($30)
	lw $5,0($2)
	jal L4001c0
	sll $0,$0,0
L400464:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,120
	bne $3,$2,L4004b8
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,0($2)
	jal L401930
	sll $0,$0,0
L4004b8:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,98
	bne $3,$2,L40050c
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,0($2)
	jal L401940
	sll $0,$0,0
L40050c:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,117
	bne $3,$2,L400560
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,0($2)
	jal L401950
	sll $0,$0,0
L400560:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,111
	bne $3,$2,L4005b4
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $4,0($2)
	jal L401960
	sll $0,$0,0
L4005b4:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L400810
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	bne $2,$0,L400810
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	addiu $2,$2,-48
	sw $2,28($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
L40062c:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L4006d4
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	beq $2,$0,L40067c
	sll $0,$0,0
	j L4006d4
	sll $0,$0,0
L40067c:	lw $3,28($30)
	sll $0,$0,0
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $2,$2,1
	sw $2,28($30)
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	lw $2,28($30)
	sll $0,$0,0
	addu $2,$3,$2
	addiu $2,$2,-48
	sw $2,28($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40062c
	sw $2,16($30)
L4006d4:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L400ad0
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $2,0($2)
	sll $0,$0,0
	sw $2,32($30)
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	addu $3,$2,$0
	lw $2,28($30)
	sll $0,$0,0
	slt $2,$3,$2
	beq $2,$0,L4007b0
	sll $0,$0,0
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,28($30)
	sll $0,$0,0
	subu $2,$3,$2
	sw $2,36($30)
	sw $0,40($30)
	sw $0,40($30)
L400770:	lw $2,40($30)
	lw $3,36($30)
	sll $0,$0,0
	slt $2,$2,$3
	bne $2,$0,L400790
	sll $0,$0,0
	j L4007b0
	sll $0,$0,0
L400790:	lw $4,56($30)
	jal L4001c0
	addiu $5,$0,32
	lw $2,40($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L400770
	sw $2,40($30)
L4007b0:	sw $0,28($30)
L4007b4:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,28($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L4007dc
	sll $0,$0,0
	j L400810
	sll $0,$0,0
L4007dc:	lw $3,32($30)
	lw $2,28($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	lw $4,56($30)
	jal L4001c0
	addu $5,$2,$0
	lw $2,28($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L4007b4
	sw $2,28($30)
L400810:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,45
	bne $3,$2,L400abc
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L400ad0
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	bne $2,$0,L400ad0
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	addiu $2,$2,-48
	sw $2,40($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
L4008b8:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L400960
	sll $0,$0,0
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	beq $2,$0,L400908
	sll $0,$0,0
	j L400960
	sll $0,$0,0
L400908:	lw $3,40($30)
	sll $0,$0,0
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $2,$2,1
	sw $2,40($30)
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	lw $2,40($30)
	sll $0,$0,0
	addu $2,$3,$2
	addiu $2,$2,-48
	sw $2,40($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L4008b8
	sw $2,16($30)
L400960:	sw $0,36($30)
	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L400ad0
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	addiu $2,$2,4
	lw $2,0($2)
	sll $0,$0,0
	sw $2,32($30)
	sw $0,36($30)
L4009bc:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,36($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L4009e4
	sll $0,$0,0
	j L400a18
	sll $0,$0,0
L4009e4:	lw $3,32($30)
	lw $2,36($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	lw $4,56($30)
	jal L4001c0
	addu $5,$2,$0
	lw $2,36($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L4009bc
	sw $2,36($30)
L400a18:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,40($30)
	sll $0,$0,0
	slt $2,$2,$3
	beq $2,$0,L400abc
	sll $0,$0,0
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,40($30)
	sll $0,$0,0
	subu $2,$3,$2
	sw $2,28($30)
	sw $0,44($30)
	sw $0,44($30)
L400a5c:	lw $2,44($30)
	lw $3,28($30)
	sll $0,$0,0
	slt $2,$2,$3
	bne $2,$0,L400a7c
	sll $0,$0,0
	j L400abc
	sll $0,$0,0
L400a7c:	lw $4,56($30)
	jal L4001c0
	addiu $5,$0,32
	lw $2,44($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L400a5c
	sw $2,44($30)
L400a9c:	lw $3,60($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	lw $4,56($30)
	jal L4001c0
	addu $5,$2,$0
L400abc:	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40026c
	sw $2,16($30)
L400ad0:	addu $29,$30,$0
	lw $31,52($29)
	lw $30,48($29)
	jr $31
	addiu $29,$29,56
L400ae4:	sw $4,0($29)
	sw $5,4($29)
	sw $6,8($29)
	sw $7,12($29)
	addiu $29,$29,-56
	sw $31,52($29)
	sw $30,48($29)
	addu $30,$29,$0
	sw $4,56($30)
	sw $0,24($30)
	lw $2,56($30)
	sll $0,$0,0
	bne $2,$0,L400b24
	sll $0,$0,0
	j L40138c
	sll $0,$0,0
L400b24:	lw $4,56($30)
	jal L401460
	sll $0,$0,0
	addu $3,$2,$0
	addiu $2,$0,-1
	bne $3,$2,L400b48
	sll $0,$0,0
	j L40138c
	sll $0,$0,0
L400b48:	sw $0,24($30)
	sw $0,16($30)
	sw $0,16($30)
L400b54:	lw $4,56($30)
	jal L401460
	sll $0,$0,0
	lw $3,16($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L400b7c
	sll $0,$0,0
	j L40138c
	sll $0,$0,0
L400b7c:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,37
	bne $3,$2,L401358
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,37
	bne $3,$2,L400bec
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
L400bec:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,100
	bne $3,$2,L400c3c
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $4,0($2)
	jal L401920
	sll $0,$0,0
L400c3c:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L400cec
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $2,0($2)
	sll $0,$0,0
	sw $2,28($30)
	sw $0,20($30)
L400c90:	lw $4,28($30)
	jal L401460
	sll $0,$0,0
	lw $3,20($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L400cb8
	sll $0,$0,0
	j L400cec
	sll $0,$0,0
L400cb8:	lw $3,28($30)
	lw $2,20($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
	lw $2,20($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L400c90
	sw $2,20($30)
L400cec:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,99
	bne $3,$2,L400d40
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
L400d40:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,120
	bne $3,$2,L400d90
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $4,0($2)
	jal L401930
	sll $0,$0,0
L400d90:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,98
	bne $3,$2,L400de0
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $4,0($2)
	jal L401940
	sll $0,$0,0
L400de0:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,117
	bne $3,$2,L400e30
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $4,0($2)
	jal L401950
	sll $0,$0,0
L400e30:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,111
	bne $3,$2,L400e80
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $4,0($2)
	jal L401960
	sll $0,$0,0
L400e80:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L4010d4
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	bne $2,$0,L4010d4
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	addiu $2,$2,-48
	sw $2,28($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
L400ef8:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L400fa0
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	beq $2,$0,L400f48
	sll $0,$0,0
	j L400fa0
	sll $0,$0,0
L400f48:	lw $3,28($30)
	sll $0,$0,0
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $2,$2,1
	sw $2,28($30)
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	lw $2,28($30)
	sll $0,$0,0
	addu $2,$3,$2
	addiu $2,$2,-48
	sw $2,28($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L400ef8
	sw $2,16($30)
L400fa0:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L40138c
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $2,0($2)
	sll $0,$0,0
	sw $2,32($30)
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	addu $3,$2,$0
	lw $2,28($30)
	sll $0,$0,0
	slt $2,$3,$2
	beq $2,$0,L401074
	sll $0,$0,0
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,28($30)
	sll $0,$0,0
	subu $2,$3,$2
	sw $2,36($30)
	sw $0,40($30)
	sw $0,40($30)
L401038:	lw $2,40($30)
	lw $3,36($30)
	sll $0,$0,0
	slt $2,$2,$3
	bne $2,$0,L401058
	sll $0,$0,0
	j L401074
	sll $0,$0,0
L401058:	jal L401b90
	addiu $4,$0,32
	lw $2,40($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L401038
	sw $2,40($30)
L401074:	sw $0,28($30)
L401078:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,28($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L4010a0
	sll $0,$0,0
	j L4010d4
	sll $0,$0,0
L4010a0:	lw $3,32($30)
	lw $2,28($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
	lw $2,28($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L401078
	sw $2,28($30)
L4010d4:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,45
	bne $3,$2,L401378
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L40138c
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	bne $2,$0,L40138c
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	addiu $2,$2,-48
	sw $2,40($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,16($30)
L40117c:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,58
	beq $2,$0,L401224
	sll $0,$0,0
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	slti $2,$2,48
	beq $2,$0,L4011cc
	sll $0,$0,0
	j L401224
	sll $0,$0,0
L4011cc:	lw $3,40($30)
	sll $0,$0,0
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $2,$2,1
	sw $2,40($30)
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	lw $2,40($30)
	sll $0,$0,0
	addu $2,$3,$2
	addiu $2,$2,-48
	sw $2,40($30)
	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40117c
	sw $2,16($30)
L401224:	sw $0,36($30)
	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($2)
	addiu $2,$0,115
	bne $3,$2,L40138c
	sll $0,$0,0
	lw $2,24($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,24($30)
	lw $2,24($30)
	sll $0,$0,0
	sll $2,$2,2
	addiu $3,$30,56
	addu $2,$2,$3
	lw $2,0($2)
	sll $0,$0,0
	sw $2,32($30)
	sw $0,36($30)
L40127c:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,36($30)
	sll $0,$0,0
	slt $2,$3,$2
	bne $2,$0,L4012a4
	sll $0,$0,0
	j L4012d8
	sll $0,$0,0
L4012a4:	lw $3,32($30)
	lw $2,36($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
	lw $2,36($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40127c
	sw $2,36($30)
L4012d8:	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,40($30)
	sll $0,$0,0
	slt $2,$2,$3
	beq $2,$0,L401378
	sll $0,$0,0
	lw $4,32($30)
	jal L401460
	sll $0,$0,0
	lw $3,40($30)
	sll $0,$0,0
	subu $2,$3,$2
	sw $2,28($30)
	sw $0,44($30)
	sw $0,44($30)
L40131c:	lw $2,44($30)
	lw $3,28($30)
	sll $0,$0,0
	slt $2,$2,$3
	bne $2,$0,L40133c
	sll $0,$0,0
	j L401378
	sll $0,$0,0
L40133c:	jal L401b90
	addiu $4,$0,32
	lw $2,44($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40131c
	sw $2,44($30)
L401358:	lw $3,56($30)
	lw $2,16($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	jal L401b90
	addu $4,$2,$0
L401378:	lw $2,16($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L400b54
	sw $2,16($30)
L40138c:	addu $29,$30,$0
	lw $31,52($29)
	lw $30,48($29)
	jr $31
	addiu $29,$29,56
L4013a0:	lw $8,44($4)
	addiu $9,$0,1
	beq $8,$9,L4013b8
	sll $0,$0,0
	jr $31
	sll $0,$0,0
L4013b8:	add $8,$31,$0
	lw $31,0($4)
	sll $0,$0,0
	sub $8,$31,$8
	bgtz $8,L401400
	sll $0,$0,0
	lw $29,4($4)
	lw $30,8($4)
	lw $16,12($4)
	lw $17,16($4)
	lw $18,20($4)
	lw $19,24($4)
	lw $20,28($4)
	lw $21,32($4)
	lw $22,36($4)
	lw $23,40($4)
	jr $31
	add $2,$5,$0
L401400:	add $31,$8,$0
	lw $29,4($4)
	lw $30,8($4)
	lw $16,12($4)
	lw $17,16($4)
	lw $18,20($4)
	lw $19,24($4)
	lw $20,28($4)
	lw $21,32($4)
	lw $22,36($4)
	lw $23,40($4)
	jr $31
	add $2,$5,$0
	sll $0,$0,0
	sll $0,$0,0
	sll $0,$0,0
L401440:	addiu $2,$0,8
	syscall
	jr $31
	sll $0,$0,0
L401450:	addiu $2,$0,15
	syscall
	jr $31
	sll $0,$0,0
L401460:	addiu $29,$29,-24
	sw $30,16($29)
	addu $30,$29,$0
	sw $4,24($30)
	lw $2,24($30)
	sll $0,$0,0
	lbu $2,0($2)
	sll $0,$0,0
	sb $2,0($30)
	sw $0,4($30)
	sw $0,8($30)
L40148c:	lb $2,0($30)
	sll $0,$0,0
	bne $2,$0,L4014a4
	sll $0,$0,0
	j L401558
	sll $0,$0,0
L4014a4:	lw $3,24($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lbu $2,0($2)
	sll $0,$0,0
	sb $2,0($30)
	lw $2,4($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,4($30)
	lw $3,24($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lbu $2,0($2)
	sll $0,$0,0
	sb $2,1($30)
	lb $3,1($30)
	addiu $2,$0,110
	beq $3,$2,L401524
	sll $0,$0,0
	lb $3,1($30)
	addiu $2,$0,116
	beq $3,$2,L401524
	sll $0,$0,0
	lb $3,1($30)
	addiu $2,$0,92
	beq $3,$2,L401524
	sll $0,$0,0
	j L401544
	sll $0,$0,0
L401524:	lb $3,0($30)
	addiu $2,$0,92
	bne $3,$2,L401544
	sll $0,$0,0
	lw $2,8($30)
	sll $0,$0,0
	addiu $2,$2,-1
	sw $2,8($30)
L401544:	lw $2,8($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L40148c
	sw $2,8($30)
L401558:	lw $2,8($30)
	sll $0,$0,0
	addiu $2,$2,-1
	sw $2,8($30)
	lw $3,8($30)
	addiu $2,$0,-1
	bne $3,$2,L401580
	sll $0,$0,0
	j L40158c
	sw $0,12($30)
L401580:	lw $2,8($30)
	sll $0,$0,0
	sw $2,12($30)
L40158c:	lw $2,12($30)
	addu $29,$30,$0
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
	addiu $29,$29,-16
	sw $30,8($29)
	addu $30,$29,$0
	sw $4,16($30)
	sw $5,20($30)
	sw $6,24($30)
	sw $0,0($30)
	lw $2,24($30)
	sll $0,$0,0
	bgez $2,L4015dc
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	j L4016a8
	sw $2,4($30)
L4015dc:	lw $2,20($30)
	sll $0,$0,0
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L401604
	sll $0,$0,0
	lw $2,16($30)
	sll $0,$0,0
	j L4016a8
	sw $2,4($30)
L401604:	sll $0,$0,0
L401608:	lw $3,20($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	beq $2,$0,L401688
	sll $0,$0,0
	lw $2,0($30)
	lw $3,24($30)
	sll $0,$0,0
	slt $2,$3,$2
	beq $2,$0,L401648
	sll $0,$0,0
	j L401688
	sll $0,$0,0
L401648:	lw $3,16($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $4,$3,$2
	lw $3,20($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $2,$3,$2
	lbu $2,0($2)
	sll $0,$0,0
	sb $2,0($4)
	lw $2,0($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L401608
	sw $2,0($30)
L401688:	lw $3,16($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $2,$3,$2
	sb $0,0($2)
	lw $2,16($30)
	sll $0,$0,0
	sw $2,4($30)
L4016a8:	lw $2,4($30)
	addu $29,$30,$0
	lw $30,8($29)
	jr $31
	addiu $29,$29,16
	addiu $29,$29,-24
	sw $30,16($29)
	addu $30,$29,$0
	sw $4,24($30)
	sw $5,28($30)
	sw $0,0($30)
	sw $0,4($30)
	lw $2,24($30)
	sll $0,$0,0
	lb $2,0($2)
	sll $0,$0,0
	beq $2,$0,L401708
	sll $0,$0,0
	lw $2,28($30)
	sll $0,$0,0
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L401710
	sll $0,$0,0
L401708:	j L401814
	sw $0,8($30)
L401710:	sll $0,$0,0
L401714:	lw $3,24($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L40175c
	sll $0,$0,0
	lw $3,28($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L40175c
	sll $0,$0,0
	j L4017bc
	sll $0,$0,0
L40175c:	lw $3,24($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $4,$3,$2
	lw $3,28($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($4)
	lb $2,0($2)
	sll $0,$0,0
	beq $3,$2,L401798
	sll $0,$0,0
	j L401814
	sw $0,8($30)
L401798:	lw $2,0($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,0($30)
	lw $2,4($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L401714
	sw $2,4($30)
L4017bc:	lw $3,24($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L401804
	sll $0,$0,0
	lw $3,28($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L401804
	sll $0,$0,0
	j L40180c
	sll $0,$0,0
L401804:	j L401814
	sw $0,8($30)
L40180c:	addiu $2,$0,1
	sw $2,8($30)
L401814:	lw $2,8($30)
	addu $29,$30,$0
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
	addiu $29,$29,-24
	sw $30,16($29)
	addu $30,$29,$0
	sw $4,24($30)
	sw $5,28($30)
	sw $6,32($30)
	sw $0,0($30)
	sw $0,4($30)
	lw $2,24($30)
	sll $0,$0,0
	lb $2,0($2)
	sll $0,$0,0
	beq $2,$0,L401878
	sll $0,$0,0
	lw $2,28($30)
	sll $0,$0,0
	lb $2,0($2)
	sll $0,$0,0
	bne $2,$0,L401880
	sll $0,$0,0
L401878:	j L40190c
	sw $0,8($30)
L401880:	sll $0,$0,0
L401884:	lw $2,0($30)
	lw $3,32($30)
	sll $0,$0,0
	slt $2,$2,$3
	bne $2,$0,L4018a4
	sll $0,$0,0
	j L401904
	sll $0,$0,0
L4018a4:	lw $3,24($30)
	lw $2,0($30)
	sll $0,$0,0
	addu $4,$3,$2
	lw $3,28($30)
	lw $2,4($30)
	sll $0,$0,0
	addu $2,$3,$2
	lb $3,0($4)
	lb $2,0($2)
	sll $0,$0,0
	beq $3,$2,L4018e0
	sll $0,$0,0
	j L40190c
	sw $0,8($30)
L4018e0:	lw $2,0($30)
	sll $0,$0,0
	addiu $2,$2,1
	sw $2,0($30)
	lw $2,4($30)
	sll $0,$0,0
	addiu $2,$2,1
	j L401884
	sw $2,4($30)
L401904:	addiu $2,$0,1
	sw $2,8($30)
L40190c:	lw $2,8($30)
	addu $29,$30,$0
	lw $30,16($29)
	jr $31
	addiu $29,$29,24
L401920:	addiu $2,$0,1
	syscall
	jr $31
	sll $0,$0,0
L401930:	addiu $2,$0,34
	syscall
	jr $31
	sll $0,$0,0
L401940:	addiu $2,$0,35
	syscall
	jr $31
	sll $0,$0,0
L401950:	addiu $2,$0,36
	syscall
	jr $31
	sll $0,$0,0
L401960:	addiu $29,$29,-64
	sw $31,60($29)
	sw $30,56($29)
	addu $30,$29,$0
	sw $4,64($30)
	addiu $2,$0,1
	sw $2,16($30)
	sw $0,20($30)
	lw $2,64($30)
	sll $0,$0,0
	slti $2,$2,8
	bne $2,$0,L401a34
	sll $0,$0,0
	lw $2,64($30)
	sll $0,$0,0
	sw $2,28($30)
	lw $3,28($30)
	sll $0,$0,0
	sw $3,32($30)
	lw $4,32($30)
	sll $0,$0,0
	bgez $4,L4019cc
	sll $0,$0,0
	lw $2,32($30)
	sll $0,$0,0
	addiu $2,$2,7
	sw $2,32($30)
L4019cc:	lw $3,32($30)
	sll $0,$0,0
	sra $2,$3,3
	sll $2,$2,3
	lw $4,28($30)
	sll $0,$0,0
	subu $3,$4,$2
	lw $2,20($30)
	sll $0,$0,0
	addu $2,$2,$3
	sw $2,20($30)
	lw $2,64($30)
	sll $0,$0,0
	sw $2,36($30)
	lw $2,36($30)
	sll $0,$0,0
	bgez $2,L401a24
	sll $0,$0,0
	lw $3,36($30)
	sll $0,$0,0
	addiu $3,$3,7
	sw $3,36($30)
L401a24:	lw $4,36($30)
	sll $0,$0,0
	sra $2,$4,3
	sw $2,64($30)
L401a34:	sll $0,$0,0
L401a38:	lw $2,64($30)
	sll $0,$0,0
	slti $2,$2,8
	beq $2,$0,L401a54
	sll $0,$0,0
	j L401b3c
	sll $0,$0,0
L401a54:	lw $2,64($30)
	sll $0,$0,0
	sw $2,40($30)
	lw $3,40($30)
	sll $0,$0,0
	sw $3,44($30)
	lw $4,44($30)
	sll $0,$0,0
	bgez $4,L401a8c
	sll $0,$0,0
	lw $2,44($30)
	sll $0,$0,0
	addiu $2,$2,7
	sw $2,44($30)
L401a8c:	lw $3,44($30)
	sll $0,$0,0
	sra $2,$3,3
	sll $2,$2,3
	lw $4,40($30)
	sll $0,$0,0
	subu $2,$4,$2
	sw $2,24($30)
	lw $3,24($30)
	lw $2,16($30)
	sll $0,$0,0
	mult $3,$2
	mflo $3
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $3,$2,1
	lw $2,20($30)
	sll $0,$0,0
	addu $2,$2,$3
	sw $2,20($30)
	lw $3,16($30)
	sll $0,$0,0
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $2,$2,1
	sw $2,16($30)
	lw $2,64($30)
	sll $0,$0,0
	sw $2,48($30)
	lw $2,48($30)
	sll $0,$0,0
	bgez $2,L401b28
	sll $0,$0,0
	lw $3,48($30)
	sll $0,$0,0
	addiu $3,$3,7
	sw $3,48($30)
L401b28:	lw $4,48($30)
	sll $0,$0,0
	sra $2,$4,3
	j L401a38
	sw $2,64($30)
L401b3c:	lw $3,64($30)
	lw $2,16($30)
	sll $0,$0,0
	mult $3,$2
	mflo $3
	addu $2,$3,$0
	sll $2,$2,2
	addu $2,$2,$3
	sll $3,$2,1
	lw $2,20($30)
	sll $0,$0,0
	addu $2,$2,$3
	sw $2,20($30)
	lw $4,20($30)
	jal L401ba0
	sll $0,$0,0
	addu $29,$30,$0
	lw $31,60($29)
	lw $30,56($29)
	jr $31
	addiu $29,$29,64
L401b90:	addiu $2,$0,11
	syscall
	jr $31
	sll $0,$0,0
L401ba0:	bgtz $4,L401bb0
	sll $0,$0,0
	jr $31
	sll $0,$0,0
L401bb0:	addiu $10,$0,8
	bne $10,$0,L401bc0
	div $4,$10
	break 0x1c00
L401bc0:	addiu $1,$0,-1
	bne $10,$1,L401bd8
	lui $1,0x8000
	bne $4,$1,L401bd8
	sll $0,$0,0
	break 0x1800
L401bd8:	mflo $4
	mfhi $13
	addi $29,$29,-4
	addi $15,$15,4
	sw $13,0($29)
	mflo $4
	bgtz $4,L401bb0
	sll $0,$0,0
L401bf8:	lw $4,0($29)
	addiu $2,$0,1
	syscall
	addi $15,$15,-4
	addiu $25,$0,0
	beq $15,$25,L401c1c
	sll $0,$0,0
	j L401bf8
	addi $29,$29,4
L401c1c:	jr $31
	sll $0,$0,0
	sll $0,$0,0
	sll $0,$0,0
	sll $0,$0,0
data:	.data
	.byte	0x49, 0x6e, 0x20, 0x74
	.byte	0x68, 0x65, 0x20, 0x27
	.byte	0x74, 0x72, 0x79, 0x27
	.byte	0x20, 0x62, 0x6c, 0x6f
	.byte	0x63, 0x6b, 0xa, 0x0
	.byte	0x49, 0x6e, 0x20, 0x74
	.byte	0x68, 0x65, 0x20, 0x27
	.byte	0x63, 0x61, 0x74, 0x63
	.byte	0x68, 0x27, 0x20, 0x62
	.byte	0x6c, 0x6f, 0x63, 0x6b
	.byte	0x2c, 0x20, 0x76, 0x61
	.byte	0x6c, 0x3d, 0x25, 0x64
	.byte	0xa, 0x0, 0x0, 0x0
	.byte	0x50, 0x72, 0x6f, 0x67
	.byte	0x72, 0x61, 0x6d, 0x20
	.byte	0x74, 0x65, 0x72, 0x6d
	.byte	0x69, 0x6e, 0x61, 0x74
	.byte	0x69, 0x6e, 0x67, 0xa
	.byte	0x0, 0x0, 0x0, 0x0
	.byte	0x49, 0x6e, 0x20, 0x66
	.byte	0x75, 0x6e, 0x63, 0x74
	.byte	0x69, 0x6f, 0x6e, 0x20
	.byte	0x66, 0x6f, 0x6f, 0xa
	.byte	0x0, 0x0, 0x0, 0x0
	.byte	0x4f, 0x6f, 0x70, 0x73
	.byte	0x2c, 0x20, 0x61, 0x66
	.byte	0x74, 0x65, 0x72, 0x20
	.byte	0x63, 0x61, 0x6c, 0x6c
	.byte	0x20, 0x74, 0x6f, 0x20
	.byte	0x62, 0x61, 0x72, 0x20
	.byte	0x28, 0x73, 0x68, 0x6f
	.byte	0x75, 0x6c, 0x64, 0x6e
	.byte	0x27, 0x74, 0x20, 0x68
	.byte	0x61, 0x70, 0x70, 0x65
	.byte	0x6e, 0x29, 0xa, 0x0
	.byte	0x49, 0x6e, 0x20, 0x66
	.byte	0x75, 0x6e, 0x63, 0x74
	.byte	0x69, 0x6f, 0x6e, 0x20
	.byte	0x62, 0x61, 0x72, 0xa
	.byte	0x0, 0x0, 0x0, 0x0
	.byte	0x4f, 0x6f, 0x70, 0x73
	.byte	0x2c, 0x20, 0x61, 0x66
	.byte	0x74, 0x65, 0x72, 0x20
	.byte	0x6c, 0x6f, 0x6e, 0x67
	.byte	0x6a, 0x6d, 0x70, 0x20
	.byte	0x28, 0x73, 0x68, 0x6f
	.byte	0x75, 0x6c, 0x64, 0x6e
	.byte	0x27, 0x74, 0x20, 0x68
	.byte	0x61, 0x70, 0x70, 0x65
	.byte	0x6e, 0x29, 0xa, 0x0
	.byte	0x0, 0x0, 0x0, 0x0
	.byte	0x0, 0x0, 0x0, 0x0
bss:	.data
	.space	48