#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

int main( int argc, char* argv[] )
{
    if(argv[1] == NULL)
    {
        fprintf(stderr,"usage: %s [pid]\n",argv[0]);
        return 1;
    }
    int PID = atoi(argv[1]);
    kill(PID,9);
    return 0;
}
