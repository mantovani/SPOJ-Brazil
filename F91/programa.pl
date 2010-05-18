while (<STDIN>) {
    chop($_);
    exit(0) if $_ == 0;
    $_ < 101
        ? print("f91($_) = 91\n")
        : print( "f91($_) = ", ( $_ - 10 ),"\n" );

}
