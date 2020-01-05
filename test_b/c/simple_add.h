#ifndef SIMPLE_ADD
#define SIMPLE_ADD
static int FBNC( int n ) {
    if ( n < 3 )
        return n - 1;
    else
        return FBNC( n - 2 ) + FBNC( n - 1 );
}
#ENDIF