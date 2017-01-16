#!/usr/bin/perl
use Config::Properties;
sub readconfig(){
	open my $config, '<', './config.properties' or die "Unable to open the properties file.";
	$properties = Config::Properties->new();
	$properties->load($config);
	$cmepfile = $properties->getProperty('inputfile.name');
	$stats = $properties->getProperty('outputfile.name');
}

sub readinputfile(){
	open(inputfile, '<', $properties->getProperty('inputfile.name') or die "Unabe to open ". $properties->getProperty('inputfile.name')).".\n";
}

sub openoutputfile(){
	open(inputfile, '>', $properties->getProperty('outputfile.name') or die "Unabe to open ". $properties->getProperty('outputfile.name')).".\n";	
}
1;