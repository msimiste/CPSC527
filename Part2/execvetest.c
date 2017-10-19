#include <unistd.h>

int main(){
    
    execve("/bin/csh\0", NULL, NULL);
    
}