#include <stdio.h>

int main( int argc, char* argv[] )
{
    if(argv[1] == NULL)
    {
        printf("z\n");
        return 0;
    }

    if(*argv[1] == 'z')
    {
        printf("z\n");
        return 0;
    }

    if(*argv[1] == 'Z')
    {
        printf("z\n");
        return 0;
    }

    if(argv[1] != NULL)
    {
        printf("z\n");
        return 0;
    }
}