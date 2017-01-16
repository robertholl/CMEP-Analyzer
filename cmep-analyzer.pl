#!/usr/bin/perl
require './filemanager.pl';
readconfig();
readinputfile();
openoutputfile();
print "Input file is: $cmepfile \n";
print "Output file is: $stats  \n";
my $row = <$inputfile>;
print "$row\n";
print $outputfile "$row\n";
closefiles();
