#!/usr/bin/perl

use strict;
use warnings;

my ( $count, $total ) = ( 0, 1 );
while ( my $val = <> ) {
    chop($val);
    last   if $val == 0;
    my ( $n, $orig, $dest, $temp ) = ( $val, 1, 2, 3 );

    hanoi( $n, $orig, $dest, $temp, $count );

    print "Teste $total\n$count\n\n";
    $count = 0;
    $total++;

}

{

    my @ha;

    sub hanoi {
        my ( $n, $orig, $dest, $temp ) = @_;
        return if $n == 0;
        if ( defined $ha[$n] ) {
            ++$count for scalar(@ha);
            return;
        }
        if ( $n == 1 ) {

            $count++;

        } else {
            $ha[$n] = hanoi( $n - 1, $orig, $temp, $dest );

            $count++;

            $ha[$n] = hanoi( $n - 1, $temp, $dest, $orig );
        }

    }

}
