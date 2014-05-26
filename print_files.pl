#!/usr/bin/perl
use strict;
use warnings;

sub display {
  my $file = shift;
  print "-------------------------------------------\n";
  print "$file\n";
  print "-------------------------------------------\n";
  # check for directory
  if (-d $file) {
    print "$file is a directory.\n"
  }
  open my $fh, $file or die "couldn't open $file\n";
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
