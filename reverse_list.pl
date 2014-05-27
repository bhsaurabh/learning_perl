#!/usr/bin/perl
use strict;
use warnings;

sub reverse_list {
    print "Original List: @_\n";
    
    my @stack;
    foreach (@_) {
        push @stack, $_;
    }
    
    my @list;
    while (my $el = pop @stack) {
        #TODO: a 0 in the stack stops this loop (as a 0 is treated as a NULL)
        # Find a way to bypass this
        push @list, $el;
    }
    print "Reverse List: @list\n";
    return @list;
}

reverse_list @ARGV;
