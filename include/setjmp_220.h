#ifndef SETJMP_220_H
#define SETJMP_220_H
 struct jmp_buf{
        int ra, sp, fp, s0, s1, s2, s3, s4, s5, s6, s7, flag;
};
//#define struct jmp_buf env
int setjmp_220(struct jmp_buf *env);
void longjmp_220(struct jmp_buf *env, int val);
#endif
