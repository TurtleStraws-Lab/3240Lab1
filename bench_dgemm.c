#include <stdio.h>
#include <stdlib.h>

void dgemm(int length, double *A, double *B, double *C);


void fill(int n, double *fill){
for(int i = 0; i < n * n; i++)
{
fill[i] = (i % 10) + n;
}
}



int main() {
    int length = 2;
    int n;
    printf("Pick a whole number for the matrices \n");
    scanf("%d", &n); 
    double *A = (double *) malloc(n * n * sizeof(double));
    double *B = (double *) malloc(n * n * sizeof(double));
    double *C = (double *) malloc(n * n * sizeof(double));
    
fill(n, A);
fill(n, B);

    dgemm(length, A, B, C);

    for(int i = 0; i < length; i++) {
        for(int j = 0; j < length; j++) {
            printf("%f ", C[i * length + j]);
        }
        printf("\n");
    }

    free(A);
    free(B);
    free(C);
    
    return 0;
}
