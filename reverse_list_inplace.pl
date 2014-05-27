#!/usr/bin/perl
use strict;
use warnings;

sub swap {
    ($_[0], $_[1]) = ($_[1], $_[0]);
}


sub reverse_list_inplace {
    print "Original List: @_\n";
    for (my $i = 0; $i < @_/2; $i++) {
        swap ($_[$i], $_[-$i-1]);
    }
    print "New List: @_\n";
    return @_;
}

reverse_list_inplace @ARGV;
