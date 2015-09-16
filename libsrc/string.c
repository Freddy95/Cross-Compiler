#include "string.h"
size_t strlen(const char *str){
	char t = *(str),u;
	int c = 0;
	int x = 0;
	while(t != '\0'){
			t = *(str+c);
			c++;
			u = *(str+c);
			if((u == 'n' || u == 't' || u =='\\') && t == '\\'){
				x--;
			}
			x++;
	}
	x--;
	if(x==-1){
		return 0;
	}
	return x;
}
char* strncpy(char *dst, const char *src, int n){
	int x = 0;
	if(n<0){
		return dst;
	}	
	if(*(src) == '\0'){
		return dst;
	}
	while(*(src+x) != '\0' && x <=n){
		*(dst+x) = *(src+x);
		x++;
	}
	*(dst+x) = '\0';
	return dst;
}
int strcmp(const char *str1, const char *str2){
	int a = 0, b = 0;
	if(*(str1) == '\0' || *(str2) == '\0'){
		return 0;
	}
	while(*(str1+a) != '\0' || *(str2+b) != '\0'){
		if(*(str1+a) != *(str2+b)){
			return 0;
		}
	    a++;
	    b++;
	}
	if(*(str1+a) != '\0' || *(str2+b) != '\0'){
		return 0;
	}
	return 1;
}
int strncmp(const char *str1, const char *str2, int n){
        int a = 0, b = 0;
        if(*(str1) == '\0' || *(str2) == '\0'){
                return 0;
        }
        while(a<n){
                if(*(str1+a) != *(str2+b)){
                        return 0;
                }
            a++;
            b++;
        }

        return 1;
}
