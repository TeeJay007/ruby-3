#include <iostream>
#include <cstdio>
#include <cmath>

using namespace std;

int main(){
    double a, b, c, plotas, p;
    cout << "Iveskite triju krastiniu ilgius:" << endl;
    cin >> a >> b >> c;

    if(a > 0 && b > 0 && c > 0){
        p = (a + b + c) / 2;
        plotas = sqrt(p * (p - a) * (p - b) * (p - c));
        if(a != b && b != c && a != b && plotas > 0)
            printf("Trikamis yra ivairiakrastis ir jo plotas: %f\n", plotas);
        else if(a == b && b == c && a == b && plotas > 0)
            printf("Trikamis yra lygiakrastis ir jo plotas: %f\n", plotas);
        else if((a == b || b == c || a == c) && plotas > 0)
            printf("Trikamis yra lygiasonis ir jo plotas: %f\n", plotas);
        else
            printf("Trikampio sudaryti neimanoma");
    }
    else
        printf("Trikampio sudaryti neimanoma");

    return 0;
}
