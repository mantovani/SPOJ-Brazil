#!/usr/bin/perl

use strict;
use warnings;

my $test = 1;
while ( my $inst = <> ) {
    exit(0) if $inst == 0;
    my %idiots;
    for ( 1 .. $inst ) {
       chop( my $name = <> );
        my @placar = sort { $a <=> $b } split( ' ', <> );
        my ( $first, $last ) = ( shift @placar, pop @placar );
        my $soma;
        $soma += $_ for @placar;
        push( @{ $idiots{$soma} }, $name );
    }
    my $colo = 1;
    print "Teste $test\n";
    for my $org ( sort { $b <=> $a } keys %idiots ) {
        if ( scalar( @{ $idiots{$org} } ) > 1 ) {
            my $horse = 0;
            for my $ok ( sort { $a cmp $b } @{ $idiots{$org} } ) {
                print $colo - $horse, " $org $ok\n";
                $horse++;
                $colo++;
            }
        } else {
            print "$colo $org @{$idiots{$org}}[0]\n";
            $colo++;
        }
    }
    print "\n";
    $test++;
}
