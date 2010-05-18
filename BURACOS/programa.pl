#!/usr/bin/perl

use strict;
use warnings;

my $test = 1;
while ( my $dados = <> ) {
    my ( $planetas, $buracos ) = split( ' ', $dados );
    $test++;
}
