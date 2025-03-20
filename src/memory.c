/*
 ============================================================================
 Name        : memory.c
 Author      : sudheer
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int a_stack;
    static int b_bss;
    static int c_init=8;
    volatile register int d_reg=10;
    char *ptr="ro_data";
    char *buff_ptr=malloc(10);

    printf("a_stack adress=%p \t",&a_stack);
    printf("a_stack data=%d\n",a_stack);

    printf("b_bss adress=%p\t",&b_bss);
    printf("b_bss data =%d\n",b_bss);

    printf("c_init adress=%p \t",&c_init);
     printf("c_init data=%d \n",c_init);

    //printf("d_reg adress=%p \t",&d_reg); /* this will not work, we dont have acess to register adress*/
       printf("d_reg data=%d \n",d_reg);

       printf("ptr adress=%p \t",&ptr);
           printf("ptr data=%#lx \n",ptr);

           printf("buff_ptr adress=%p \t",&buff_ptr);
                   printf("buff_ptr data=%#lx \n",buff_ptr);

                   if (buff_ptr)
                	  free(buff_ptr) ;







	return EXIT_SUCCESS;
}
