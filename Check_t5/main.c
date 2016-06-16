
#include <stdio.h>
#include <stdlib.h>

int main(){
    
    FILE *LeituraProg_C, *LeituraProg_V, *FINAl;
    int num, EntradaProg_C, EntradaProg_V;

    LeituraProg_C = fopen("ResultC.txt","r");
    LeituraProg_V = fopen("ResultV.txt","r");
    FINAL = fopen   ("CompCV.txt","a");   


    for (num=0;num<100;num++)
    {
        fscanf(LeituraC, "%d", &EntradaProg_C);
        fscanf(LeituraV, "%d", &EntradaProg_V);
        
    if (EntradaProg_C != EntradaProg_V)
    {
       fprintf(FINAL,"%d\n",num);
    }
    }
    
}