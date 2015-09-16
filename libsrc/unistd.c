#include "lib.h"
#include "unistd.h"
char buffer[EXEC_BUFFER_SIZE];
int exec(const char *path){
	int x = open(path,0,0);
	if(strlen(path)>256){
		return -1;
	}
	if(x==-1){
		return -1;
	}
	if(read(x, buffer, EXEC_BUFFER_SIZE+1)==-1){
		return -1;
	}
	close(path);
	return load(buffer);
}
