#!/usr/bin/perl



while ( my $calc = <> ) {
    my @time = split( " ", $calc );
    exit(0) if ( $time[0] + $time[1] + $time[2] + $time[3] == 0 );
    my $count = 0;
	if ($time[0] < $time[2]) {
		$count = ($time[2] * 60 + $time[3]) - ($time[0] * 60 + $time[1]);
		print "$count\n";
		next;
	}
TIME: while (1) {
        while ( $time[1] <= 59 ) {
            if ( $time[0] == $time[2] && $time[1] == $time[3] ) {
                print "$count\n";
                last TIME;
            }
            $count++;
            $time[1]++;
        }
        $time[0]++;
        $time[1] = 0;
        $time[0] = 0 if $time[0] > 23;

    }
}
