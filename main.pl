#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# macだと，cpanいる
#use JSON;


#require './my_func/Perl/my_csv.pm';
require './my_func/Perl/my_package.pm';

&main;

sub main
{
	#&userdata;
	
	&tweetdata;
}

sub userdata
{
	my $mypack=my_package->new;
	
	my $user_details=$mypack->load_file('./data/js/user_details.js');
	
	print Dumper $user_details;
}

sub tweetdata
{
	#my $mypack=my_package->new;
	
	my @files=glob "./data/js/tweets/*.js";
	print Dumper @files;
	
	foreach my $tweetjs(@files){
		my $user_details=load_file($tweetjs);
		print $user_details;
	}
}

sub load_file
{
	my ($file)=@_;
	my $data="";

	open(RF,$file);
	for(my $i=0;<RF>;$i++){
		$data.=$_;
	}
	close(RF);

	return $data;
}