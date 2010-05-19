#!/usr/bin/perl

use strict;
use warnings;

while ( my $in = <> ) {
    chop($in);
    my ($soma);
    my $count;
    for ( split( '', $in ) ) {
        $soma += $_;
        $count++;
    }
    if ( $soma % 9 == 0 ) {
        print "É $count\n";
    }
    else {
        print "Não é\n";
    }
}
