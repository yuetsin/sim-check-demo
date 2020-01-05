
static int Fabonacci( int n ) {
    if ( n <= 2 )
        return n - 1;
    else
        return ( Fabonacci( n - 1 ) + Fabonacci( n - 2 ) );
}
