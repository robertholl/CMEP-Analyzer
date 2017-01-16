#!/usr/bin/perl
use Config::Properties;
sub readconfig(){
open my $config, '<', './config.properties' or die "Unable to open the properties file.";
my $properties = Config::Properties->new();
$properties->load($config);
$cmepfile = $properties->getProperty('inputfile.name');
$stats = $properties->getProperty('outputfile.name');
}
1;