#!/usr/bin/perl
use strict;
use warnings;

sub reverse_list_builtin {
    # reverses a list in-place using built-in operators
    print "Original List: @_\n";
    @_ = reverse @_;
    print "New List: @_\n";
    return @_;
}

reverse_list_builtin @ARGV;
