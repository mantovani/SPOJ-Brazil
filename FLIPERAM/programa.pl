my ( $entres, $max ) = split( ' ', <> );
my @numbers;$numbers[$_] = <> for 0 .. $entres - 1;
@numbers = ( sort { $b <=> $a } @numbers );
print $numbers[$_] for 0 .. $max - 1
