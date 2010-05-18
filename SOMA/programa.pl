#!/usr/bin/perl -l

my $c = 0;
for ( 1 .. <STDIN> ) {
    $c += <>;
}
print $c;
