#!/usr/bin/perl
use strict;
use warnings;

sub print_dir {
  my $dir = shift;
  my @files = glob "$dir/*";
  while (my $file = shift @files) {
    print "$file\n";
  }
}

sub dir {
  while (my $file = shift) {
    print_dir $file;
  }
}

dir @ARGV;
