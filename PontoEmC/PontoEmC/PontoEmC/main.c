#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct{
    int x, y;
} ponto;

int area(ponto a, ponto b, ponto c){
    return abs((a.x*(b.y-c.y) + b.x*(c.y-a.y) + c.x*(a.y-b.y)));
}

int verificacao(ponto a, ponto b, ponto c, ponto d){
    int total = area(a,b,c);
    int A1 = area(a,c,d);
    int A2 = area(a,b,d);
    int A3 = area(c,d,b);
    
    if(A1+A2+A3 == total){
        return 1;
    }
    else{
        return 0;
    }
}

int main(){
    
    ponto p1, p2, p3, p;
    
    scanf("%d %d", &p1.x, &p1.y);
    scanf("%d %d", &p2.x, &p2.y);
    scanf("%d %d", &p3.x, &p3.y);
    scanf("%d %d", &p.x, &p.y);
    
    if(verificacao(p1, p2, p3, p)){
        printf("Dentro\n");
    }
    else{
        printf("Fora\n");
    }
    
    int i, j;
    ponto t;
    
    for(i=0; i<=30; i++){
        for(j=0; j<=30; j++){
            p.x = j;
            p.y = i;
            if(verificacao(p1, p2, p3, p)){
                printf("1");
            }
            else{
                printf("-");
            }
            
        }
        printf("\n");
    }
}