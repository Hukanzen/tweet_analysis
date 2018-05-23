#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

use Encode;

# libunicode-escape-perl
use Unicode::Escape qw(escape unescape);

use utf8;
binmode(STDOUT, ":utf8");

use feature qw/say/;
# macだと，cpanいる
use JSON;

$Data::Dumper::Useperl = 1;


#require './my_func/Perl/my_csv.pm';
#require './my_func/Perl/my_package.pm';

&main;

sub main
{
	#&userdata;
	
	#&tweetdata;
	print encode_utf8("\u69D8\u3078\u3000always\u3055\u3093\u3061\u3087\u3046\u3081\u306E\u3086\u3046\u3072\u201970\u3067\u306F\u7121\u304F\u3066\u3000ALWAYS\u4E09\u4E01\u76EE\u306E\u5915\u65E5\u201964\u3067\u3059\u3088\u3002");
}

sub userdata
{
	my $user_details=&load_file('./data/js/user_details.js');
	
	#print Dumper decode_json($user_details);
}

sub tweetdata
{
	#my $mypack=my_package->new;
	
	my @files=glob "./data/js/tweets/*.js";

	#print Dumper @files;
	
	foreach my $tweetjs(@files){
		# my $user_details=load_file($tweetjs);
		my $month_tweet=load_json_file('./data/js/tweets/2012_01.1.js');
		
		
		my %tojson=to_json($month_tweet);
		#print Dumper %tojson;
		#print Dumper %tojson->{text};
		#my $unescaped=unescape($tojson)	;
		
		#print Dumper decode('utf8',encode('utf8',$unescaped));
		#print Dumper decode_utf8($unescaped);
		
		#print Dumper $unescaped;
		
		
			# my $unescaped=unescape($_);
			# print  Dumper $unescaped;
			#print Dumper $_;
		
		#print $user_details;
		
		#print Dumper to_json($user_details);
		#print Dumper from_json($user_details);
		#say ($user_details);
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

sub load_json_file
{
	my ($file)=@_;
	my $data;
	
	open(my $fh,$file);
	
	eval{ 
		local $/ = undef;
		my $json_txt = <$fh>;
		close $fh;
		$data = decode_json( $json_txt ); 
	};
	close(RF);
	
	return $data;
}