#!/usr/bin/perl

use strict;
use warnings;

my $i = 1;
while ( my $n = <> ) {
    chop($n);
    my @j;
    my $count = 0;
    for ( split( m/ /, <> ) ) {
        $j[$count] = $_;
        $count++;
    }
    print("Instancia $i\n");
    $i++;
    calc( \@j, $n );
}

sub calc {
    my ( $j, $n ) = @_;
    my $tmp = 0;
    if ( $n == 1 ) {
        $j->[0] == 0 ? print("0\n\n") : print("nao achei\n\n");
        return;
    }
    $tmp += $j->[0] if $j->[0] >= -30 && $j->[0] <= 30;
    for ( my $i = 1 ; $i < $n ; ++$i ) {
        if ( $tmp == $j->[$i] ) {
            print("$tmp\n\n");
            return;
        }
        $tmp += $j->[$i];
    }
    print("nao achei\n\n");
}
