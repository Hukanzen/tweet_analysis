#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;


require './my_func/Perl/my_csv.pm';

sub main
{
	my $csv=my_csv->new;
	$csv->read('tweets_mini.csv');
	print Dumper $csv->get_length;

}

&main;