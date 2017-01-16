#!/usr/bin/perl
use Config::Properties;

open my $config, '<', '../config.properties' or die "Unable to open the properties file.";
my $properties = Config::Properties->new();
$properties->load($config);
my $cmepfile = $properties->getProperty('inputfile.name');
my $stats = $properties->getProperty('outputfile.name');
1;