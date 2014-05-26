#!/usr/bin/perl
use strict;
use warnings;

sub match_pattern {
  my $pattern = shift;
  my $file = shift;
  print "=================================\n";
  print "File: $file\n";
  print "- - - - - - - - - - - - - - - - -\n";
  open my $fh, $file;
  while (my $line = <$fh>) {
    if ($line =~ m/$pattern/) {
      print $line;
    }
  }
}

sub grep_file {
  # 1st argument is pattern remaining are files
  my $pattern = shift;
  my @files = @_;

  while (my $file = shift @files) {
    match_pattern $pattern, $file;
  }
}

grep_file @ARGV;
