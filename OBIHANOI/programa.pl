$total = 1;
while (<>) {
    chop($_);
    exit(0) if $_ == 0;
    my $count = 2**$_ - 1;
    print "Teste $total\n$count\n\n";
    $total++;
}
