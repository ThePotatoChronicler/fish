#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv) {
    if (argc != 4) {
        printf("Not enough arguments!\n");
        return 2;
    }
    double H = (fmod(atof(argv[1]), 360)) / 60.0;
    double S = atof(argv[2]);
    double L = atof(argv[3]);
    double a = 2 * L - 1;
    if (a < 0) {
        a = -a;
    }
    double C = (1 - a) * S;
    double res = fmod(H, 2.0) - 1;
    if (res < 0) {
        res = -res;
    }
    double X = C * (1 - res);

    double R1 = 0;
    double G1 = 0;
    double B1 = 0;
    switch ( (int) floor(H) ) {
        case 0:
            R1 = C;
            G1 = X;
            break;
        case 1:
            R1 = X;
            G1 = C;
            break;
        case 2:
            G1 = C;
            B1 = X;
            break;
        case 3:
            G1 = X;
            B1 = C;
            break;
        case 4:
            R1 = X;
            B1 = C;
            break;
        case 5:
            R1 = C;
            B1 = X;
            break;
    }
    double m = L - C / 2.0;
    int R, G, B;
    R = floor((R1 + m) * 255);
    G = floor((G1 + m) * 255);
    B = floor((B1 + m) * 255);
    printf("%02x%02x%02x", R, G, B);
}
