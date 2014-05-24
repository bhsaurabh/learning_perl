#!/usr/bin/perl
use strict;
use warnings;

sub variables {
  my @params = @_;
  my $first_word = $params[0];
  my $second_word = $params[1];
  my @words = @params[0, 2];
  my $len_params = @params;
  print "$first_word $second_word\n";
  print "Words: @words\n";
  print "Number of parameters passed: $len_params\n";

  # more list(s) practice!
  my @list = (1, 2, 3, 4);
  print "My List from a list literal: @list\n";
  # NOTE: When a list is assigned to a scalar,
  # only the last element of the list gets stored
  # But assign an array to a scalar and you have the length

  # List assignment
  my ($p1, $p2, @params) = @_;
  print "$p1 $p2 @params\n";

  # Shift operator: Removes 1st element from a list and returns this val
  # By default shift uses @_ as an argument
  $p1 = shift @_;
  $p2 = shift @_;
  print "$p1 $p2 @_\n";
}

variables @ARGV;
