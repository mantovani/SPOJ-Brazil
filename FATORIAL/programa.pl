use strict;
use warnings;
use 5.10.0;

say( f(5) );

sub f {
    my $n = shift;
    my $num
        = ( ( 0.5 + sqrt(5) / 2 )**$n - ( 0.5 - sqrt(5) / 2 )**$n ) / sqrt(5);
}

