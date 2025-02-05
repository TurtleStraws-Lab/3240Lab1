#include <stdio.h>
#include <stdlib.h>

float sdot(int length, float *X, float *Y);


int main(){
printf("Enter 3 numbers\n");
int length = 4;
float *X = (float *)malloc(length *sizeof(float));
float *Y = (float *)malloc(length *sizeof(float));
printf("Enter numbers in X \n");
for(int i = 0; i < length - 1; i++){
    scanf("%f", &X[i]);
}
printf("Enter numbers in Y \n");
for(int i = 0; i < length - 1; i++){
    scanf("%f", &Y[i]);
}


float result = sdot(length, X, Y);


printf(" %f ", result);

free(X);
free(Y);

return 0;
}
