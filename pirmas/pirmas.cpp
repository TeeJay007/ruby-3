#include <iostream>
#include <cstdio>

using namespace std;

int main(){
    int sk;
    printf("Iveskite gauta pazymi: ");
    cin >> sk;
    if(sk < 0 || sk > 10)
        printf("Neteisingai ivesti duomenys.\n");
    else if(sk > 5 && sk <= 10)
        printf("Egzaminas islaikytas.\n");
    else
        printf("Egzaminas neislaikytas.\n");
    return 0;
}
