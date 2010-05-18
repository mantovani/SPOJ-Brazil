#!/usr/bin/perl

use strict;
use warnings;

for ( 1 .. <> ) {
    while ( my $in = <> ) {
        $in = $in % 1500 if $in > 1500;
        if ( $in > 2 ) {
            printf( "%03d\n", fibo($in) );
        } elsif ( $in == 1 || $in == 2 ) {
            print("001\n");
        }
    }
}

sub fibo {
    my $num = shift;
    my ( $x, $y, $s ) = ( 1, 1, 0 );
    for ( my $i = 3; $i <= $num; $i++ ) {
        $s = $y + $x;
        if ( $s > 999 ) {
            $s -= 1000;
        }
        $y = $x;
        $x = $s;
    }
    return $s;
}
