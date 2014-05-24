#!/usr/bin/perl
use strict;

sub echo {
  # a sub-routine, that is run when this program is imlemented
  # @_ refers to array of parameters received here
  my @params = @_;  # make a copy of the received params
  print "@params\n";
}

echo @ARGV;
