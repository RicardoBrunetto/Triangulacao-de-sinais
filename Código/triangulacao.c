#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define VALORES 5
#define CONSTELACAO 5


/*
*----------------------------------------------------*
*              MANIPULAÇÃO DE MATRIZES               *
*----------------------------------------------------*
*/
double ** criar_transposta(double **M, int ordem){
  int i, j;
  double ** T = (double **)malloc(sizeof(double)*(ordem*ordem));
  for(i=0; i<ordem; i++){
    for(j=0; i<ordem; j++){
      T[j][i] = M[i][j];
    }
  }
  return T;
}


/*
*----------------------------------------------------*
*              MANIPULAÇÃO DE ENTRADA                *
*----------------------------------------------------*
*/

double** read_from_file(char * filename){
  FILE *f = fopen(filename, "r");
 	// int ** constelacao =  (int **)malloc(sizeof(int)*CONSTELACAO*VALORES);
  double ** constelacao = (double **)malloc(sizeof(double)*CONSTELACAO*VALORES);
  //  double constelacao[CONSTELACAO][VALORES] = {{0}};
  int k, i;
  for(k=0; k<CONSTELACAO; k++){
    for(i=0; i<VALORES; i++){
      fscanf(f, "%lf\n", &constelacao[k][i]);
      printf("%lf\n", constelacao[k][i]);
    }
  }
    //printf("%lf %lf %lf %lf %lf\n\n", constelacao[k][i], constelacao[k][i+1], constelacao[k][i+2], constelacao[k][i+3], constelacao[k][i+4]);
    // while (!feof(f)){
    //   fscanf(f, "%d", &d);
    // }
  fclose(f);
  return constelacao;
}

int* read_from_input(){
  int i=0;
	int *vet = (int *)malloc(sizeof(int)*VALORES);
  while(i<VALORES){
    scanf("%d", &vet[i++]);
  }
  return vet;
}

/*
 *----------------------------------------------------*
 *                PROGRAMA PRINCIPAL                  *
 *----------------------------------------------------*
 */
int main(){
  double ** k = read_from_file("input");
  system("pause");
  return 0;
}
