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
	open($inputfile, '<', $properties->getProperty('inputfile.name')) or die "Unabe to open ". $properties->getProperty('inputfile.name').".\n";
	print "Readinputfile function runs\n";
}

sub openoutputfile(){
	open($outputfile, '>', $properties->getProperty('outputfile.name')) or die "Unabe to open ". $properties->getProperty('outputfile.name').".\n";	
}

sub closefiles(){
	close $inputfile;
	close $outputfile;
}
1;