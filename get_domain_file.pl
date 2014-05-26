#!/usr/bin/perl
use strict;
use warnings;

sub get_domain_file {
    # breaks a URL to obtain the domain and the file that is fetched
    my $pattern = "(http|ftp)://(.*?)/(.*)";
    for my $url (@_) {
        if ($url =~ m/$pattern/) {
            print "*******\nURL: $url\nDomain: $2\nFile: $3\n\n";
        }
    }
}

get_domain_file @ARGV;
