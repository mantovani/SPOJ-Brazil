#!/usr/bin/perl

my $co = 1;
while ( my $num = <STDIN> ) {
    exit(0) if $num == 0;
    my $c = 1;
    for ( split( " ", <> ) ) {
        print "Teste $co\n$_\n\n" if $_ == $c;
        $c++;
    }
    $co++;
}
