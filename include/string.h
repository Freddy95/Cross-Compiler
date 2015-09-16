#ifndef STRING_H
#define STRING_H
#ifndef NULL
	#define NULL ((void*)0)
#endif
#include "stddef.h"
size_t strlen(const char *str);
int strncmp(const char *str1, const char *str2, int n);
int strcmp(const char *str1, const char *str2);
char *strncpy(char *dst, const char *src, int n);
#endif
