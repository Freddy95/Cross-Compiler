#ifndef LIB_H
#define LIB_H
/*
 * Function prototypes for C library functions.
 * This header file should be included in any C file
 * that needs to use any of these functions.
 */

/* basic i/o syscalls */
void putreturn(int n);
void help(int x);
void putchar(char c);
void putint(int i);
int open(char *filename, int flag, int mode);
int close(char *filename);
int read(int fileDescriptor, char *buffer, int max);
int puthex(int hex);
int putbinary(int bin);
int putunsigned(int un);
void readstring(char *buffer, int max);
void putoct(int n);
void printoct(int s);
int load(char *buffer);
int write(int filedescriptor, char* buffer, int max);
/* System syscalls */
void exit(void);
#endif

