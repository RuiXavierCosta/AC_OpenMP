#include "exemplos.h"

int main(int argc, char **argv)
{
    int i, private_nloops, nloops;

    nloops = 0;
#pragma omp parallel private(private_nloops) \
    reduction(+ : nloops)
    {
#pragma omp for
        for (i = 0; i < 100000; ++i)
        {
            ++nloops;
        }
    }
    printf("The total number of loop iterations is %d\n",
           nloops);
    return 0;
}