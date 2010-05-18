#!/usr/bin/perl

use strict;
use warnings;

chop( my $num = <> );
print "nao" and exit(0) if $num == 0;

print "sim" and exit(0) if $num == 2 || $num == -2;

if ( $num < 0 ) {
    $num = $num - $num - $num;
}
my $check = 0;
for ( 2 .. sqrt($num) + 1 ) {
    if ( $num % $_ == 0 ) {
        $check = 1;
    }
}
$check == 0 ? print "sim\n" : print "nao\n";
