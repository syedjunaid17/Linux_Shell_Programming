/*
Demo to use execv()
*/

#include<stdio.h> 
#include<stdlib.h> 
#include<unistd.h> 
int main() 
{ 
        printf("\n Main program exec1\n");
        //A null terminated array of character  pointers 
        char *args[]={"arg1","arg2","arg3",NULL};
        execv("./exec2",args); 
      
        printf("\nThis line is not printed\n"); 
      
    return 0; 
} 
