#include <stdio.h>
#include <stdlib.h>
#include <math.h>


/*
*----------------------------------------------------*
*              MANIPULAÇÃO DE ENTRADA                *
*----------------------------------------------------*
*/

int* read_from_file(char * filename){
  FILE *f = fopen(filename, "r");
  int d;
 	int *vet = (int *)malloc(sizeof(int)*QTD_PECAS), i=0;
  fscanf(f, "%d", &d);
  while (!feof(f)){
    vet[i] = d; i++;
    fscanf(f, "%d", &d);
  }
  fclose(f);
  return vet;
}

int* read_from_input(){
  int i=0;
	int *vet = (int *)malloc(sizeof(int)*QTD_PECAS);
  while(i<QTD_PECAS){
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

}
