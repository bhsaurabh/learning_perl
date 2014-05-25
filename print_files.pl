#!/usr/bin/perl
use strict;
use warnings;

sub display {
  my $file = shift;
  open my $fh, $file;
  while (my $line = <$fh>) {
    print "$line";
  }
}

sub dir {
  my $dir = shift;
  my @files = glob "$dir/*";
  while (my $file = shift @files) {
    display $file;
  }
}

sub print_files {
  while (my $dir = shift) {
    dir $dir;
  }
}

print_files @ARGV;
