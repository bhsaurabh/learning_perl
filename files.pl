#!/usr/bin/perl
use strict;
use warnings;

sub files {
  # open a file
  #open FILE, "/usr/share/dict/words"; # this is a global file handler
  open my $fh, "/usr/share/dict/words";

  # In a scalar context, <> reads a line
  my $first = <$fh>;
  my $second = <$fh>;
  print "$first$second";

  # In a list context, <> reads entire text
  #my @text_list = <$fh>;
  #print "@text_list";

  # At end of text, <> returns undef
  while (my $line = <$fh>) {
    print "$line";
  }
}

files @ARGV;
