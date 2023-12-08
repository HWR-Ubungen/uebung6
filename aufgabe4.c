#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int main() {
    // A4: Datei einlesen zum Auslesen von Lottozahlen zu einem bestimmten Datum
    FILE *fptr = fopen("../files/lotto.txt", "r");
    if(fptr == NULL){
        printf("Datei kann nicht geoeffnet werden!");
        return 1;
    }

    // Suchen des Datums
    char s[11];
    char lotto[100];
    char input[11];

    printf("Geben Sie ein Datum fuer die Lottoziehung ein (Format: WD MMM DD): ");
    gets(input);

    while(fgets(s, 11, fptr)){
        if(strcmp(s, input) == 0) {
            printf("Lottozahlen vom %s: ", s);
            fgets(lotto, 99, fptr);
            fgets(lotto, 99, fptr);
            printf("%s", lotto);
            break;
        }
    }

    fclose(fptr);
    return 0;
}