#include <stdio.h>
#include <stdlib.h>

struct list{
    int data;
    struct list *ptr;
};

struct list *top = NULL;

int isEmpty(){
    return (top == NULL);
}

void Add(int item){
    struct list *temp = (struct list *) malloc(sizeof(struct list));
    temp->data = item;

    if (top == NULL) {
        temp->ptr = NULL;
        top = temp;
        return;
    }

    if (item >= top->data){
        temp->ptr = top;
        top = temp;
        return;
    }

    struct list *above = top;
    struct list *next = top->ptr;


    while(1){

        if (next == NULL){
            temp->ptr = NULL;
            above->ptr = temp;
            return;
        }

        if (item >= next->data){ //JACKPOT platzieren!
            temp->ptr = next;
            above->ptr = temp;
            return;
        }
        else{ //never give up
            above = next;
            next = next->ptr;
        }
    }
}

int Get(int index){
    if (isEmpty())
        return 0;

    struct list *temp = top;
    for (int i = 0; i < index; i++) {
        if (temp == NULL){
            printf("Element ist nicht enthalten!");
            return -1;
        } else if(i == index){
            return temp->data;
        } else{
            temp = temp->ptr;
        }
    }
    return -1;
}

void Remove(int index){
    if(isEmpty())
        return;

    struct list *temp = top->ptr;
    struct list *next = top;

    if(index == 0){
        free(top);
        top = temp;
        return;
    }

    for(int i = 1; i <= index; i++){
        if (temp == NULL)
            return;
        else if (i == index){
            next->ptr = temp->ptr;
            free(temp);
            return;
        } else
            next = temp;
            temp = temp->ptr;
    }
}

int Size(){
     if (isEmpty()){
         return 0;
     }

    struct list *next = top->ptr;
    int size = 1;
    for (; next != NULL; next = next->ptr) {
        size++;
    }
    return size;
}

void printList(){
    printf("Liste: [");
    for (int i = 0; i <= Size(); i++) {
        printf("%d", Get(i));
        printf(", ");
    }
    printf("]\n");
}

int main(){
    // Hinzufügen von 1000 zufälligen Werten
    Add(7);
    for (int i = 0; i < 1000; i++) {
        int n = rand() % 10;
        Add(n);
    }

    // Größe der Liste
    printf("\nGröße von List: ");
    printf("%d\n", Size());

    // Ausgeben der Liste
    printList();

    // Ausgabe eines Elements
    printf("\nElement an der Stelle 100: ");
    printf("%d\n", Get(100));
    return 0;
}