#!/usr/bin/perl
##
## Ham::Resources::Utils test module
## Test 
##
## (c) Carlos Juan Diaz <ea3hmb at gmail.com> on Nov. 2016
##
#
use strict;
use warnings;
use Data::Dumper;
use lib '../lib';
use Ham::Resources::Utils;

my $foo = Ham::Resources::Utils->new();
my $separator = "\t";
my $date = "23-11-2016";
my %coordinates = ( lat_1 => "41N23", 
                    long_1 => "2E11", 
                    lat_2 => "30S0", 
                    long_2 => "10W45");
 
my %data = $foo->data_by_coordinates($date, %coordinates);

foreach my $key (sort keys %data) {
  if (length($key) <= 7) { $separator = "\t\t\t"; }
  elsif (length($key) > 7 && length($key) < 15) { $separator = "\t\t"; }
  else { $separator = "\t"; }
  print $key.$separator.": ".$data{$key},"\n" if ($data{$key});
}
