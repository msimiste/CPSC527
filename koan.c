#include <stdio.h>

main(){
        char buf[123];
        // printf("%p",(void*)buf);    
        extern char *gets(char *);
        puts(gets(buf));        
}

