#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# macだと，cpanいる
use JSON;


#require './my_func/Perl/my_csv.pm';
require './my_func/Perl/my_package.pm';

sub main
{
	my $mypack=my_package->new;
	
	my @data=$mypack->load_file('./data/js/user_details.js');
	
	print Dumper @data;
}

&main;