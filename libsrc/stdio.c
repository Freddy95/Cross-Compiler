#include "stdio.h"
#include "lib.h"
char* fgets(int num, char *str){
	readstring(str, num);
	return str;
}
int fputc(int fd, int c){
	write(fd, c, 1);
}
void fprintf(int fd, const char *fmt, ...){
	int i, x, count = 0;
        if(fmt == NULL){
                return;
        }
        if(strlen(fmt) == -1){
                return;
        }
	count=0;
        i=0;
        for(i=0; i < strlen(fmt); i++){
                if(*(fmt+i)==37){
                        i++;
                        if(*(fmt+i) == 37){
                                fputc(fd, *(fmt+i));
                        }
                        if(*(fmt+i)==100){
                                count++;
                                putint((int)*(&fmt+(count)));
                        }
                        if(*(fmt+i)==115){//null terminating string
                                count++;
                                char *str = (char*)*(&fmt+count);
                                for(x = 0; x <strlen(str); x++){
                                        fputc(fd, *(str+x));
                                }
                        }
                        if(*(fmt+i)==99){//char
                                count++;
                                fputc(fd, (int)*(&fmt+count));
                        }
                        if(*(fmt+i)==120){//hex
                                count++;
                                puthex((int)*(&fmt+(count)));
                        }
                        if(*(fmt+i)==98){//binary
                                count++;
                                putbinary((int)*(&fmt+(count)));
                        }
                        if(*(fmt+i)==117){//unsigned
                                count++;
                                putunsigned((int)*(&fmt+(count)));
                        }
                        if(*(fmt+i)==111){//octal
                                count++;
                                printoct((int)*(&fmt+(count)));
                        }
                        if(*(fmt+i)<58 && *(fmt+i)>47){//width specifier
                                  int xo = *(fmt+i)-48;
                                i++;
                                 while(*(fmt+i)<58 && *(fmt+i)>47){
                                        xo = xo*10;
                                        xo += *(fmt+i)-48;
                                        i++;
                                }
                                if(*(fmt+i)==115){
                                        count++;
                                        char *st;
                                        st = (char*)*(&fmt+count);
                                        if(strlen(st)<xo){// if min greater than size of string
                                                int y = xo - strlen(st);//get diff
                                                int z = 0;
                                                for(z=0;z<y;z++){
                                                        fputc(fd, ' ');
                                                }
                                        }
                                        for(xo = 0; xo <strlen(st); xo++){
                                                fputc(fd, *(st+xo));
                                         }
                                }
                                else{
                                        return;
                                }
                        }
                        if(*(fmt+i)==45){// - 
                                i++;
                                if(*(fmt+i)<58 && *(fmt+i)>47){
                                        int xo = *(fmt+i)-48;
                                         i++;
                                         while(*(fmt+i)<58 && *(fmt+i)>47){
                                                xo = xo*10;
                                                 xo += *(fmt+i)-48;
                                                i++;
                                         }
                                        int xod = 0;

                                        if(*(fmt+i) == 115){
                                                count++;
                                                char *st = (char*)*(&fmt+count);
                                                 for(xod = 0; xod <strlen(st); xod++){
                                                         fputc(fd, *(st+xod));
						 }
                                                 if(strlen(st)<xo){// if min greater than size of string
                                                        int y = xo - strlen(st);//get diff
                                                        int z = 0;
                                                        for(z=0;z<y;z++){
                                                               fputc(fd, ' ');
                                                        }
                                                 }
                                        }

                                        else{
                                                return;
                                        }
                                }
                                else{
                                        return;
                                }
                        }


                }

                else{
                        fputc(fd, *(fmt+i));
                }
        }
}

                                                

void printf(const char *fmt, ...){
	int i, x, count = 0;
	if(fmt == NULL){
		return;
	}
	if(strlen(fmt) == -1){
		return;
	}
          /* for(i = 0; i < strlen(fmt); i++){   
		if(*(fmt+i) == 37){//% sign
			if(*(fmt+i)==37);
                        else if(*(fmt+i)==100){// int
                                count++;
                        }
                        else if(*(fmt+i)==115){//null terminating string
                                count++;
                        }
                        else if(*(fmt+i)==99){//char
                                count++;
                        }
                        else if(*(fmt+i)==120){//hex
                                count++;
                        }
                        else if(*(fmt+i)==98){//binary
                                count++;
                                }
                        else if(*(fmt+i)==117){//unsigned
                                count++;
                        }
                        else if(*(fmt+i)==111){//octal
                                count++;
                        }
                        else if(*(fmt+i)<58 && *(fmt+i)>47){//width specifier
                                i++;
				while(*(fmt+i)<58 && *(fmt+i)>47){
					i++;
				}
                                if(*(fmt+i)==115){
                                        count++;
                                }
                                else{
                                        return;
                                }
                        }
                        else if(*(fmt+i)==45){// - left justified
                                i++;
                                if(*(fmt+i)<58 && *(fmt+i)>47){
                                        i++;
					 while(*(fmt+i)<58 && *(fmt+i)>47){
                                        	i++;
                                	}
                                        if(*(fmt+i) == 115){
                                                count++;
                                        }

                                      else{
                                                return;
                                        }
                                }
                                else{
                                        return;
                                }
                        }
			else{
				return;
			}
                }
   
         }//end of loop
	if(*(&fmt+count)==NULL){//not enough argements
		return;
	}
	if(!(*(&fmt+count+1)==NULL)){//too many args
		return;
	}*/
	count=0;
	i=0;
	for(i=0; i < strlen(fmt); i++){
		if(*(fmt+i)==37){
			i++;
			if(*(fmt+i) == 37){
				putchar(*(fmt+i));
			}
			if(*(fmt+i)==100){
				count++;
				putint((int)*(&fmt+(count)));
			}
			if(*(fmt+i)==115){//null terminating string
				count++;
				char *str = (char*)*(&fmt+count);
				for(x = 0; x <strlen(str); x++){
					putchar(*(str+x));
				}
			}
			if(*(fmt+i)==99){//char
				count++;
				putchar((int)*(&fmt+count));
			}
			if(*(fmt+i)==120){//hex
				count++;
				puthex((int)*(&fmt+(count)));
			}
			if(*(fmt+i)==98){//binary
				count++;
				putbinary((int)*(&fmt+(count)));
			}
			if(*(fmt+i)==117){//unsigned
				count++;
				putunsigned((int)*(&fmt+(count)));
			}
			if(*(fmt+i)==111){//octal
				count++;
				printoct((int)*(&fmt+(count)));
			}
			if(*(fmt+i)<58 && *(fmt+i)>47){//width specifier
				int xo = *(fmt+i)-48;
				i++;
				 while(*(fmt+i)<58 && *(fmt+i)>47){
                                        xo = xo*10;
					xo += *(fmt+i)-48;
					i++;
                                }
				if(*(fmt+i)==115){
					count++;
					char *st;
					st = (char*)*(&fmt+count);
					if(strlen(st)<xo){// if min greater than size of string
						int y = xo - strlen(st);//get diff
						int z = 0;
						for(z=0;z<y;z++){
							putchar(' ');
						}
					}
					for(xo = 0; xo <strlen(st); xo++){
                                	        putchar(*(st+xo));
                               		 }
				}
				else{
					return;
				}
			}
			if(*(fmt+i)==45){// - 
				i++;
				if(*(fmt+i)<58 && *(fmt+i)>47){
					int xo = *(fmt+i)-48;
					 i++;
					 while(*(fmt+i)<58 && *(fmt+i)>47){
                                       		xo = xo*10;
						 xo += *(fmt+i)-48;
                                        	i++;
                               		 }
					int xod = 0;
					
					if(*(fmt+i) == 115){
						count++;
						char *st = (char*)*(&fmt+count);	
						 for(xod = 0; xod <strlen(st); xod++){
                                              		 putchar(*(st+xod));
                                        	 }
					   	 if(strlen(st)<xo){// if min greater than size of string
                                                	int y = xo - strlen(st);//get diff
                                               	        int z = 0;
                                               	        for(z=0;z<y;z++){
                                                               putchar(' ');
                                                        }
                                       		 }
                                	}
			
					else{
						return;
					}
				}
				else{
					return;
				}
			}
		
	
		}			
			
		else{
			putchar(*(fmt+i));
		}		
	}
}

