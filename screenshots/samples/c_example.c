#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Classic C example demonstrating pointers, structs, and memory allocation */

typedef struct {
    int id;
    char* title;
    float price;
} Product;

Product* create_product(int id, const char* title, float price) {
    Product* p = (Product*)malloc(sizeof(Product));
    if (p == NULL) {
        perror("Failed to allocate memory");
        exit(EXIT_FAILURE);
    }
    p->id = id;
    p->title = strdup(title);
    p->price = price;
    return p;
}

void destroy_product(Product* p) {
    if (p != NULL) {
        free(p->title);
        free(p);
    }
}

int main(int argc, char* argv[]) {
    printf("Initializing products list...\n");
    
    Product* my_prod = create_product(101, "Mechanical Keyboard", 89.99f);
    
    if (my_prod->price > 50.0f) {
        printf("Premium Product (%d): %s costs $%.2f\n", 
               my_prod->id, my_prod->title, my_prod->price);
    }
    
    destroy_product(my_prod);
    return 0;
}
