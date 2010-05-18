#!/usr/bin/perl -l

use strict;
use warnings;
use Data::Dumper;

my %v;

while ( my $n = <STDIN> ) {
    chop($n);
    last if $n == 0;
    for ( 1 .. $n ) {
        my @c = split( " ", <> );
        $v{ $c[0] } = $c[1];
    }
    calc();
    undef %v;
}

sub calc {
    my ( $num1, $num2 ) = ( 0, 0 );
    my $formando = 0;
    for my $k ( keys %v ) {
        next && delete $v{$k} if $v{$k} <= 1;
        if ( $v{$k} % 4 == 0 ) {
            $formando += $v{$k} / 4;
            delete $v{$k};
        }
    }
    for my $k ( keys %v ) {
        $num1 = $v{$k};
    }
    print $formando;
}
