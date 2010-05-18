#!/usr/bin/perl

my $count = 1;
while ( my $ent = <STDIN> ) {
    my %alunos;
    for ( 1 .. $ent ) {
        my @infs = split( ' ', <STDIN> );
        if ( $alunos{ $infs[1] } ) {

            my $nome = ( ( sort { $a cmp $b } ( $alunos{ $infs[1] }, $infs[0] ) )[-1] );
            $alunos{ $infs[1] } = $nome;

        } else {
            $alunos{ $infs[1] } = $infs[0];
        }
    }
    my $azarado = ( ( sort { $a <=> $b } keys %alunos )[0] );
    print "Instancia $count\n$alunos{$azarado}\n\n";
    $count++;
}
