#!perl -T

use strict;
use warnings;
use Test::More tests=>24;

my $m = Ham::Resources::Utils->new();
BEGIN { use_ok('Ham::Resources::Utils') };

# Check DATA_BY_COORDINATES() function
my %coordinates = (
	long_1  => "2E12",
	lat_1	=> "41N23",
	long_2 	=> "12W30",
	lat_2	=> "41S54"
);

my $date = "28-6-2012";


ok( defined $m			, 'new() creation');

my %data = $m->data_by_coordinates($date, %coordinates);

ok( $data{"compass"} eq "S"		, 'compass conversion');
ok( $data{"course_dec"} =~ /190/	, 'course decimal calculation');
ok( $data{"course_sexag"} =~ /190/	, 'course sexagesimal calculation');
ok( $data{"date"} eq "28-6-2012"	, 'date of sun calculation');
ok( $data{"distance_km"} =~ /9377/	, 'distance between points in km');
ok( $data{"distance_mi"} =~ /5827/	, 'distance between point in miles');
ok( $data{"lat_1"} eq "41N23"		, 'latitude point A');
ok( $data{"lat_1_dec"} =~ /41.383/	, 'latitude A in decimal');
ok( $data{"lat_2"} eq "41S54"		, 'latitude point B');
ok( $data{"lat_2_dec"} =~ /-41.9/	, 'latitude B in decimal');
ok( uc($data{"locator_1"}) eq "JN11CJ42"	, 'locator A');
ok( uc($data{"locator_2"}) eq "IE38SC04"	, 'locator B');
ok( $data{"long_1"} eq "2E12"		, 'longitude point A');
ok( $data{"long_1_dec"} =~ /2.2/	, 'longitude A in decimal');
ok( $data{"long_2"} eq "12W30"		, 'longitude point B');
ok( $data{"long_2_dec"} =~ /-12.5/	, 'longitude B in decimal');

ok( $data{"midday_arrive"} eq "12h 53m"	, 'midday at point B');
ok( $data{"midday_departure"} eq "11h 54m" , 'midday at point A');
ok( $data{"sunrise_arrive"} eq "8h 19m"	, 'sunrise at point B');
ok( $data{"sunrise_departure"} eq "4h 20m" , 'sunrise at point A');
ok( $data{"sunset_arrive"} eq  "17h 28m"   , 'sunset at point B');
ok( $data{"sunset_departure"} eq "19h 28m" , 'sunset at point A');

done_testing();
