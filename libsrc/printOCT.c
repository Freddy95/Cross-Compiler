#include "lib.h"
void printoct(int s){
        int count = 1, total = 0;
	if(s>7){
		total+= s%8;
		s = s/8;
	}
        while(s>7){
                int x = s%8;
                total += (x*(10*count));
                count=count*10;
                s = s/8;
        }
        total += (s*(10*count));
        putoct(total);
}
