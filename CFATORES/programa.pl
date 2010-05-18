#!/usr/bin/perl

use strict;
use warnings;

while ( my $numero = <STDIN> ) {
    chop($numero);
    my $real = $numero;
    exit(0) if $numero == 0;
    my $count = 0;

    for ( 2 .. sqrt($numero) ) {

        if ( $numero % $_ == 0 ) {
            my $num = 0;
            while ( $numero % $_ == 0 ) {
                $numero /= $_;
                if ( $_ != $num ) {
                    $count++;
                }
                $num = $_;
            }

        }

    }
    $count++ if $numero != 1;
    print "$real : $count\n";
}
