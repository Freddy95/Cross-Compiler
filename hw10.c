#include "lib.h"
#include "stdio.h"
#include "stddef.h"
#include "stdlib.h"
#include "string.h"
#include "unistd.h"
#define INPUT_BUFFER 2048
int main(void){
	//printf("hello");
	//printf("\nhello again\n");
	int ret;
	char *exit = "Exiting program\n";
	char *help0 = "List of utilities\n";
	char *help1 = "help\tDisplays this help menu\n";
	char *help2 = "exit\tTerminates execution of the shell\n";
	char *help3 = "echo\tSimple utility that writes to stdout\n";
	char input[INPUT_BUFFER];
	while(!(strcmp(input,"exit\n")==1)){
		putchar('>');	
		fgets(INPUT_BUFFER, input);
		if(strcmp(input,"help\n")==1){
			putchar('\n');
                        printf("%s", help0);
			printf("%s", help1);			
			printf("%s",help2);			
			printf("%s", help3);
			ret = 0;
	 	}
		else if(strncmp(input, "echo",4)==1){
			if(input[5] == 36 && input[6]==63){
				//help(0);
				putint(ret);
				putchar('\n');
			}
			else{
				int x = strlen(input);
				int z = 5;
				while(z<x){
					putchar(input[z]);
					z++;
				}
			
			}
		}
		else if(strcmp(input,"exit\n")==1);
		else{
			if(strlen(input)>256){
				printf("Path is too long\n");
				ret = -1;
			}
			else{
				char buff[INPUT_BUFFER];
				strncpy(buff, input, strlen(input)-2);
				ret = exec(buff);
				if(ret == -1){
					printf("%s:command not found\n", buff);
				}
			}
		}
	}
	printf("%s", exit);
}	
