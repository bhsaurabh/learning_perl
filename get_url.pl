#!/usr/bin/perl
use strict;
use warnings;

sub get_url {
  # Takes in a URL and prints everything after http://
  # Ex: Input = http://www.google.com Output = www.google.com
  my $pattern = "http://(.*)";
  for my $url (@_) {
    print "$url\n";
  }
}

get_url @ARGV;
