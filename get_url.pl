#!/usr/bin/perl
use strict;
use warnings;

sub get_url {
  # Takes in a URL and prints everything after http://
  # Ex: Input = http://www.google.com Output = www.google.com
  my $pattern = "(ftp|http)://(.*)";
  for my $url (@_) {
    if ($url =~ m/$pattern/) {
      print "$url => $2\n";
    }
  }
}

get_url @ARGV;
