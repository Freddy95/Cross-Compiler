# "Stub" for interfacing C to the MARS "print character" system call.
.globl putint
putint: li	$v0, 1
	 syscall
	 jr	$ra

