#!/usr/bin/perl
# A script that behaves like the cat UNIX utility

use strict;
use warnings;

sub print_dir {
  my $dir = shift;
  my @files = glob "$dir/*";
  while (my $file = shift @files) {
    print "$file\n";
  }
}

# definition of a sub-routine should be before it is invoked
sub print_file {
  my $file = shift;  # get the filename from the parameters
  # if this is a directory, print its contents
  if (-d $file) {
    print_dir $file;
  }
  open my $fh, $file;
  while (<$fh>) {
    print "$_";  # NOTE: $_ is global, changing it here affects cat
  }
}

sub cat {
  # when a variable is not provided, foreach uses $_
  foreach (@_) {
    print_file $_;
  }
}

cat @ARGV;
