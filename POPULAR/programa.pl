#!/usr/bin/perl -l

while ( my $num = <STDIN> ) {
    chop($num);
    exit(0) if $num == 0;
    my @array;
    my $result = 0;
    for ( 0 .. ( $num - 1 ) ) {
        $array[$_] = [ split( " ", <STDIN> ) ];
    }

    for my $lin ( 0 .. ( $num - 1 ) ) {
        my $calc;
        for (@array) {
            $calc += $_->[$lin];
        }
        $result = $calc if $calc >= $result;
    }
    print $result;
}
