#include "simple_add.h"
#include <stdio.h>

int main() {
    int a, b;
    scanf( "%d, %d", &a, &b );
    a = Fibonacci( a );
    b = Fibonacci( b );
    printf( "Here's what we've got: %d\n", a + b );
    return 0;
}