#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    // A3: Lottozahlen ziehen und in einer Datei speichern
    FILE *fptr = fopen("../files/lotto.txt", "w");
    if(fptr == NULL){
        printf("Datei kann nicht geoeffnet werden!");
        return 1;
    }

    // Zeit erfassen
    time_t now;
	now = time(0);

    // Generierung der 6 zufälligen Zahlen plus die Superzahl
    int a = rand() % 49 + 1;
    int b = rand() % 49 + 1;
    int c = rand() % 49 + 1;
    int d = rand() % 49 + 1;
    int e = rand() % 49 + 1;
    int f = rand() % 49 + 1;
    int s = rand() % 49 + 1;
    int t = rand() % 49 + 1;

    printf("%d\n", a);
    printf("%d\n", b);
    printf("%d\n", c);
    printf("%d\n", d);
    printf("%d\n", e);
    printf("%d\n", f);
    printf("%d\n", s);
    printf("%d\n", t);

    // Ziehung in die Datei schreiben:
    fprintf(fptr, "%s", ctime(&now));
    fprintf(fptr, "%d ", a);
    fprintf(fptr, "%d ", b);
    fprintf(fptr, "%d ", c);
    fprintf(fptr, "%d ", d);
    fprintf(fptr, "%d ", e);
    fprintf(fptr, "%d ", f);
    fprintf(fptr, "%d ", s);
    fprintf(fptr, "\n");

    fclose(fptr);

    return 0;
}