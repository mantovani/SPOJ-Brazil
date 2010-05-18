#!/usr/bin/perl

use 5.10.0;

while (<>) {
    chop($_);
    $_ =~ s/a|b|c/2/ig;
    $_ =~ s/d|e|f/3/ig;
    $_ =~ s/g|h|i/4/ig;
    $_ =~ s/j|k|l/5/ig;
    $_ =~ s/m|n|o/6/ig;
    $_ =~ s/p|q|r|s/7/ig;
    $_ =~ s/t|u|v/8/ig;
    $_ =~ s/w|x|y|z/9/ig;
    say;
}
