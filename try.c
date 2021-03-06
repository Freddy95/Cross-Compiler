// try.c
#include "setjmp_220.h"
#include "stdio.h" 
#include "stdlib.h"

void foo();
void bar();
struct jmp_buf env;

int main(int argc, char *argv[]) {
		int val;
		if((val = setjmp_220(&env)) == 0) {
			/* "Try block" */
			printf("In the 'try' block\n");
			foo();
		} else {
			/* "Catch" block */
			printf("In the 'catch' block, val=%d\n", val);
		}
		printf("Program terminating\n");
	return EXIT_SUCCESS;
}

void foo() {
	printf("In function foo\n");
	bar();
	printf("Oops, after call to bar (shouldn't happen)\n");
}

void bar() {
	printf("In function bar\n");
	longjmp_220(&env, 42);
	printf("Oops, after longjmp (shouldn't happen)\n");
}

