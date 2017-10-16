#include <stdio.h>
#include <omp.h>

int main()
{

    omp_set_num_threads(16);

// Do this part in parallel

#pragma omp parallel
    {
        printf("Print da thread");
    }

    return 0;
}