#!/usr/bin/perl
use strict;
use warnings;
# Finds all lines in a file that match a certain pattern
# A great use case is
# ./grep_file <pattern> /usr/share/dict/words

sub grep_file {
  # Expects a pattern, and a filename as arguments
  my $pattern = shift;
  my $file = shift;
  open my $fh, $file or die "$0: Couldn't open $file: $!\n";

  while (my $line = <$fh>) {
    if ($line =~ m/$pattern/) {
      print $line;
    }
  }
}

grep_file @ARGV;
