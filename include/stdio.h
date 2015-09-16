#ifndef STDIO_H
#define STDIO_H
/* Prototypes, macros, and structs go here */

#ifndef NULL
	#define NULL ((void*)0)
#endif
char* fgets(int num, char *str);
void prinf(const char* fmt, ...);
#endif
