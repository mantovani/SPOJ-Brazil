#!/usr/bin/perl

my @money = ( 50, 10, 5, 1 );
my $teste = 1;
while ( my $retirada = <STDIN> ) {
    last if $retirada == 0;
    my $somar = 0;
    my %count = ( 50 => 0, 10 => 0, 5 => 0, 1 => 0 );
    for my $add (@money) {
        while ( $add + $somar <= $retirada ) {
            $count{$add} += 1;
            $somar += $add;
        }
    }
    print "Teste $teste\n";
    print "$count{50} $count{10} $count{5} $count{1}\n\n";
    $teste++;
}
