#!/usr/bin/perl

use strict;
use warnings;

my $times = 1;
while ( my $in = <> ) {
    my $ak = 0;
  AK: {
        for ( split / /, <STDIN> ) {
            if ( $_ == $ak ) {
                print "Instancia $times\n$ak\n\n";
                $times++;
                last AK;
            }
            $ak += $_;
        }
        print "Instancia $times\nnao achei\n\n";
        $times++;
    }
}
