# include <stdio.h> 

int main() { 
    int     tanto, i;
    scanf( "%d", &tanto );
    for( i = 1; i <= tanto; i++ ) { 
        int in;
        scanf( "%d", &in );
        if( in > 1500 )
            in = in % 1500;
        if( in > 2 ) {
            printf( "%03d\n",fibo(in) );
        } else {          
            printf( "001\n" );
        }                                                                                              
    }          
    return(0);
}
    
int fibo( int num ) { 
    int x, y, s, i;
    x = y = 1;
    s = 0; 
    for( i = 3; i <= num; i++ ) {                                          
        s = y + x;         
        if( s > 999 ) {      
            s -= 1000;
        }
        y = x;
        x = s;
    }
    return s;
}
