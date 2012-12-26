#!/usr/bin/perl

LOOP: while ( $dados = <> ) {
    $count_int++;
    ( $n, $p ) = split " ", $dados;
    exit if $n == 0;
    print "Teste $count_int\n";
    @array = ();
    for ( 1 .. $p ) {
        ( $f, $t ) = split " ", <>;
        $array[$f] = $t;
    }
    $count_ok;
    for ( 1 .. $n ) {
        if ( r( \@array, 1, $p, 0, $_ ) ) {
            $count_ok++;
        }
        else {
            print "N\n\n";
            next LOOP;
        }
    }
    print "S\n\n";
}

sub r {
    ( $array, $value, $max, $count, $what ) = @_;
    return if $count > $max;
    if ( $array->[$value] ) {
        return 1 if $array->[$value] == $what;
        r( $array, $array->[$value], $max, ++$count, $what );
    } 
    else { return }
}

